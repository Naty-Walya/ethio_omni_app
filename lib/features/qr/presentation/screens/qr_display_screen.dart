import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/qr/presentation/providers/qr_provider.dart';

class QRDisplayScreen extends ConsumerStatefulWidget {
  final String jobId;
  final String type; // 'PICKUP' or 'DELIVERY'

  const QRDisplayScreen({
    super.key,
    required this.jobId,
    required this.type,
  });

  @override
  ConsumerState<QRDisplayScreen> createState() => _QRDisplayScreenState();
}

class _QRDisplayScreenState extends ConsumerState<QRDisplayScreen> {
  @override
  void initState() {
    super.initState();
    _loadQR();
  }

  Future<void> _loadQR() async {
    if (widget.type == 'PICKUP') {
      await ref.read(qrNotifierProvider.notifier).getOrGeneratePickupQR(widget.jobId);
    } else {
      await ref.read(qrNotifierProvider.notifier).getOrGenerateDeliveryQR(widget.jobId);
    }
  }

  Future<void> _regenerateQR() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Regenerate QR Code?'),
        content: const Text('This will invalidate the previous QR code. Continue?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Regenerate'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(qrNotifierProvider.notifier).regenerateQR(widget.jobId, widget.type);
    }
  }

  @override
  Widget build(BuildContext context) {
    final qrResponse = widget.type == 'PICKUP'
        ? ref.watch(pickupQRProvider)
        : ref.watch(deliveryQRProvider);
    final isLoading = ref.watch(qrLoadingProvider);
    final error = ref.watch(qrNotifierProvider).error;

    final title = widget.type == 'PICKUP' ? 'Pickup QR Code' : 'Delivery QR Code';
    final description = widget.type == 'PICKUP'
        ? 'Show this QR code to the driver to confirm pickup'
        : 'The driver will scan this QR code to confirm delivery';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          if (qrResponse?.success == true)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _regenerateQR,
              tooltip: 'Regenerate QR Code',
            ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _loadQR,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 32),

              if (isLoading)
                const Center(child: CircularProgressIndicator())
              else if (error != null)
                _buildErrorWidget(error)
              else if (qrResponse?.success == true && qrResponse?.dataUrl != null)
                _buildQRCodeWidget(qrResponse!.dataUrl!)
              else
                _buildEmptyWidget(),

              const SizedBox(height: 32),

              // Instructions
              _buildInstructions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Column(
      children: [
        const Icon(Icons.error_outline, size: 64, color: Colors.red),
        const SizedBox(height: 16),
        Text(error, textAlign: TextAlign.center),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _loadQR,
          child: const Text('Retry'),
        ),
      ],
    );
  }

  Widget _buildQRCodeWidget(String dataUrl) {
    // Extract base64 data from data URL
    final base64Data = dataUrl.split(',').last;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Image.memory(
            base64Decode(base64Data),
            width: 280,
            height: 280,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          Text(
            widget.type == 'PICKUP' ? 'Scan to Pickup' : 'Scan to Deliver',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.timer, size: 16, color: Colors.grey[600]),
              const SizedBox(width: 4),
              Text(
                'Valid for 24 hours',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyWidget() {
    return Column(
      children: [
        const Icon(Icons.qr_code, size: 64, color: Colors.grey),
        const SizedBox(height: 16),
        const Text('No QR code available'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _loadQR,
          child: const Text('Generate QR Code'),
        ),
      ],
    );
  }

  Widget _buildInstructions() {
    final instructions = widget.type == 'PICKUP'
        ? [
            '1. Show this QR code to the driver',
            '2. Driver will scan it to confirm pickup',
            '3. You\'ll receive a notification once confirmed',
          ]
        : [
            '1. Share this QR code with the driver',
            '2. Driver scans it to mark delivery complete',
            '3. Payment will be released automatically',
          ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Instructions:',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          ...instructions.map((instruction) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle, size: 20, color: Colors.green),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(instruction),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
