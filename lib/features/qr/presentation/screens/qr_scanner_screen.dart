import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ethio_omni_app/features/qr/presentation/providers/qr_provider.dart';
import 'package:ethio_omni_app/features/qr/data/models/qr_model.dart';

// Note: For actual QR scanning, you would need to add mobile_scanner package
// This is a placeholder implementation that simulates scanning

class QRScannerScreen extends ConsumerStatefulWidget {
  const QRScannerScreen({super.key});

  @override
  ConsumerState<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends ConsumerState<QRScannerScreen> {
  bool _isScanning = false;
  String? _scanResult;

  @override
  void initState() {
    super.initState();
    // In a real implementation, you would initialize the camera here
  }

  @override
  void dispose() {
    // Clean up camera controller
    super.dispose();
  }

  // Simulate scanning a QR code (for demo purposes)
  Future<void> _simulateScan() async {
    // In production, this would be replaced with actual camera scanning
    // For now, show a dialog to paste QR data
    final result = await showDialog<String>(
      context: context,
      builder: (context) => _QRInputDialog(),
    );

    if (result != null && result.isNotEmpty) {
      await _processScan(result);
    }
  }

  Future<void> _processScan(String qrData) async {
    setState(() => _isScanning = true);

    // Try to get current location (optional)
    double? lat;
    double? lng;
    try {
      // You would use geolocator here in production
      // lat = position.latitude;
      // lng = position.longitude;
    } catch (e) {
      // Location not available
    }

    final result = await ref.read(qrNotifierProvider.notifier).verifyQRCode(
          qrData,
          lat: lat,
          lng: lng,
        );

    setState(() => _isScanning = false);

    if (result != null && result.valid) {
      await _showSuccessDialog(result);
    } else {
      _showErrorDialog(result?.message ?? 'Invalid QR code');
    }
  }

  Future<void> _showSuccessDialog(QRVerificationResult result) async {
    final isPickup = result.isPickup;

    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 64,
        ),
        title: Text(isPickup ? 'Pickup Confirmed!' : 'Delivery Confirmed!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(result.message),
            const SizedBox(height: 16),
            if (isPickup)
              const Text(
                'You can now proceed with the delivery.',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            else
              const Text(
                'Payment will be released to your wallet shortly.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              context.pop(true); // Return success
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 64,
        ),
        title: const Text('Scan Failed'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Try Again'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(qrLoadingProvider);
    final error = ref.watch(qrNotifierProvider).error;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
        actions: [
          // Flashlight toggle (if supported)
          IconButton(
            icon: const Icon(Icons.flashlight_off),
            onPressed: () {
              // Toggle flashlight
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Camera preview would go here
          Container(
            color: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.qr_code_scanner,
                    size: 120,
                    color: Colors.white54,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Point camera at QR code',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Scan the shipper\'s QR code to confirm',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Scan overlay
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
                width: 1000,
              ),
            ),
            child: Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),

          // Loading overlay
          if (isLoading || _isScanning)
            Container(
              color: Colors.black54,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),

          // Bottom controls
          Positioned(
            bottom: 32,
            left: 0,
            right: 0,
            child: Column(
              children: [
                // Manual entry button
                ElevatedButton.icon(
                  onPressed: _simulateScan,
                  icon: const Icon(Icons.keyboard),
                  label: const Text('Enter Code Manually'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                // Instructions
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Scan the QR code shown by the shipper',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _simulateScan,
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }
}

class _QRInputDialog extends StatefulWidget {
  @override
  State<_QRInputDialog> createState() => _QRInputDialogState();
}

class _QRInputDialogState extends State<_QRInputDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Enter QR Code Data'),
      content: TextField(
        controller: _controller,
        maxLines: 3,
        decoration: const InputDecoration(
          hintText: 'Paste QR code data here...',
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, _controller.text),
          child: const Text('Scan'),
        ),
      ],
    );
  }
}
