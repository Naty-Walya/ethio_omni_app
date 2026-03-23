import 'package:flutter_riverpod/flutter_riverpod.dart';

// Auction state
class AuctionState {
  final bool isConnected;
  final double? currentBid;
  final double? startingBid;
  final int bidCount;
  final DateTime? endTime;
  final List<Map<String, dynamic>> bids;
  final bool isEnded;
  final String? winnerId;
  final double? winningBid;

  const AuctionState({
    this.isConnected = false,
    this.currentBid,
    this.startingBid,
    this.bidCount = 0,
    this.endTime,
    this.bids = const [],
    this.isEnded = false,
    this.winnerId,
    this.winningBid,
  });

  AuctionState copyWith({
    bool? isConnected,
    double? currentBid,
    double? startingBid,
    int? bidCount,
    DateTime? endTime,
    List<Map<String, dynamic>>? bids,
    bool? isEnded,
    String? winnerId,
    double? winningBid,
  }) {
    return AuctionState(
      isConnected: isConnected ?? this.isConnected,
      currentBid: currentBid ?? this.currentBid,
      startingBid: startingBid ?? this.startingBid,
      bidCount: bidCount ?? this.bidCount,
      endTime: endTime ?? this.endTime,
      bids: bids ?? this.bids,
      isEnded: isEnded ?? this.isEnded,
      winnerId: winnerId ?? this.winnerId,
      winningBid: winningBid ?? this.winningBid,
    );
  }
}

class AuctionNotifier extends Notifier<AuctionState> {
  @override
  AuctionState build() => const AuctionState();

  void setConnected(bool connected) {
    state = state.copyWith(isConnected: connected);
  }

  void setInitialState({
    required double startingBid,
    double? currentBid,
    required int bidCount,
    required DateTime endTime,
  }) {
    state = state.copyWith(
      startingBid: startingBid,
      currentBid: currentBid ?? startingBid,
      bidCount: bidCount,
      endTime: endTime,
    );
  }

  void addBid(Map<String, dynamic> bid) {
    final newBids = [...state.bids, bid];
    final amount = (bid['amount'] as num).toDouble();

    state = state.copyWith(
      bids: newBids,
      currentBid: amount,
      bidCount: state.bidCount + 1,
    );
  }

  void endAuction(Map<String, dynamic> data) {
    state = state.copyWith(
      isEnded: true,
      winnerId: data['winnerId'],
      winningBid: data['winningBid'] != null
          ? (data['winningBid'] as num).toDouble()
          : null,
    );
  }

  void clear() {
    state = const AuctionState();
  }
}

// Provider
final auctionNotifierProvider = NotifierProvider<AuctionNotifier, AuctionState>(AuctionNotifier.new);
