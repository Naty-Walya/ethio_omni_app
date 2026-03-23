import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/websocket/socket_service.dart';
import 'package:ethio_omni_app/features/auction/presentation/providers/auction_provider.dart';
import 'package:ethio_omni_app/features/auth/presentation/providers/auth_provider.dart';

class AuctionRoomScreen extends ConsumerStatefulWidget {
  final String auctionId;

  const AuctionRoomScreen({super.key, required this.auctionId});

  @override
  ConsumerState<AuctionRoomScreen> createState() => _AuctionRoomScreenState();
}

class _AuctionRoomScreenState extends ConsumerState<AuctionRoomScreen> {
  final _bidController = TextEditingController();
  bool _showOutbidAlert = false;
  double? _outbidAmount;

  @override
  void initState() {
    super.initState();
    _initializeSocket();
  }

  void _initializeSocket() {
    final socketService = ref.read(socketServiceProvider);
    final user = ref.read(currentUserProvider);

    // Connect and join auction
    socketService.connect().then((_) {
      if (user != null) {
        socketService.joinAuction(widget.auctionId, user.id, user.role);
      }
    });

    // Listen for new bids
    socketService.onNewBid((bid) {
      ref.read(auctionNotifierProvider.notifier).addBid(bid);
    });

    // Listen for auction end
    socketService.onAuctionEnd((data) {
      ref.read(auctionNotifierProvider.notifier).endAuction(data);
      _showAuctionEndDialog(data);
    });

    // Listen for outbid
    socketService.onOutbid((data) {
      setState(() {
        _showOutbidAlert = true;
        _outbidAmount = (data['newAmount'] as num?)?.toDouble();
      });

      // Hide alert after 3 seconds
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          setState(() {
            _showOutbidAlert = false;
          });
        }
      });
    });
  }

  @override
  void dispose() {
    final socketService = ref.read(socketServiceProvider);
    socketService.leaveAuction(widget.auctionId);
    socketService.removeOnNewBid((_) {});
    socketService.removeOnAuctionEnd((_) {});
    socketService.removeOnOutbid((_) {});
    _bidController.dispose();
    super.dispose();
  }

  void _placeBid() {
    final amount = double.tryParse(_bidController.text);
    if (amount == null || amount <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid amount')),
      );
      return;
    }

    final user = ref.read(currentUserProvider);
    if (user == null) return;

    final socketService = ref.read(socketServiceProvider);
    socketService.placeBid(widget.auctionId, amount, user.id);

    _bidController.clear();
  }

  void _showAuctionEndDialog(Map<String, dynamic> data) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Auction Ended'),
        content: data['winnerId'] != null
            ? Text('Winner: ${data['winnerId']}\nWinning Amount: ETB ${data['winningAmount']}')
            : const Text('Auction ended with no bids'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final auctionState = ref.watch(auctionNotifierProvider);
    final currentUser = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Auction'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: auctionState.isConnected ? Colors.green : Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  auctionState.isConnected ? 'Live' : 'Disconnected',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Outbid Alert
          if (_showOutbidAlert)
            Container(
              width: double.infinity,
              color: Colors.orange,
              padding: const EdgeInsets.all(12),
              child: Text(
                'You have been outbid! New lowest bid: ETB ${_outbidAmount?.toStringAsFixed(2)}',
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),

          // Auction Info Card
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current Best Bid',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'ETB ${auctionState.currentBid?.toStringAsFixed(2) ?? '-'}',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Starting Bid',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'ETB ${auctionState.startingBid?.toStringAsFixed(2) ?? '-'}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bids: ${auctionState.bidCount}'),
                      if (auctionState.endTime != null)
                        _CountdownTimer(endTime: auctionState.endTime!),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Bid Input (for drivers only)
          if (currentUser?.role == 'DRIVER')
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _bidController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Your Bid (ETB)',
                        prefixText: 'ETB ',
                        hintText: 'Enter amount lower than current bid',
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: auctionState.isConnected ? _placeBid : null,
                    child: const Text('Place Bid'),
                  ),
                ],
              ),
            ),

          const SizedBox(height: 16),

          // Bid History
          Expanded(
            child: auctionState.bids.isEmpty
                ? const Center(
                    child: Text('No bids yet'),
                  )
                : ListView.builder(
                    itemCount: auctionState.bids.length,
                    itemBuilder: (context, index) {
                      final bid = auctionState.bids[index];
                      final isCurrentUser = bid['driverId'] == currentUser?.id;

                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: isCurrentUser ? Colors.blue : Colors.grey,
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(
                          'ETB ${(bid['amount'] as num).toDouble().toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(bid['driverName'] ?? 'Unknown Driver'),
                        trailing: isCurrentUser
                            ? const Chip(
                                label: Text('You'),
                                backgroundColor: Colors.blue,
                                labelStyle: TextStyle(color: Colors.white),
                              )
                            : null,
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class _CountdownTimer extends StatefulWidget {
  final DateTime endTime;

  const _CountdownTimer({required this.endTime});

  @override
  State<_CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<_CountdownTimer> {
  late Timer _timer;
  late Duration _remaining;

  @override
  void initState() {
    super.initState();
    _remaining = widget.endTime.difference(DateTime.now());
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _remaining = widget.endTime.difference(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_remaining.isNegative) {
      return const Text(
        'ENDED',
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      );
    }

    final hours = _remaining.inHours;
    final minutes = _remaining.inMinutes.remainder(60);
    final seconds = _remaining.inSeconds.remainder(60);

    return Text(
      '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: _remaining.inMinutes < 5 ? Colors.red : Colors.black,
          ),
    );
  }
}
