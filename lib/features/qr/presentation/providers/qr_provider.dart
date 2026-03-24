import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/qr/data/models/qr_model.dart';
import 'package:ethio_omni_app/features/qr/data/repositories/qr_repository.dart';

// QR State
class QRState {
  final QRCodeResponse? pickupQR;
  final QRCodeResponse? deliveryQR;
  final QRVerificationResult? lastScan;
  final QRCodeStatus? status;
  final bool isLoading;
  final String? error;

  const QRState({
    this.pickupQR,
    this.deliveryQR,
    this.lastScan,
    this.status,
    this.isLoading = false,
    this.error,
  });

  QRState copyWith({
    QRCodeResponse? pickupQR,
    QRCodeResponse? deliveryQR,
    QRVerificationResult? lastScan,
    QRCodeStatus? status,
    bool? isLoading,
    String? error,
  }) {
    return QRState(
      pickupQR: pickupQR ?? this.pickupQR,
      deliveryQR: deliveryQR ?? this.deliveryQR,
      lastScan: lastScan ?? this.lastScan,
      status: status ?? this.status,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class QRNotifier extends Notifier<QRState> {
  late final QRRepository _repository;

  @override
  QRState build() {
    _repository = ref.watch(qrRepositoryProvider);
    return const QRState();
  }

  /// Generate or get QR code for pickup
  Future<bool> getOrGeneratePickupQR(String jobId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // Try to get existing first
      final response = await _repository.getQRCode(jobId: jobId, type: 'PICKUP');

      if (response.success) {
        state = state.copyWith(pickupQR: response, isLoading: false);
        return true;
      }

      // Generate new if doesn't exist
      final generateResponse = await _repository.generateQRCode(
        jobId: jobId,
        type: 'PICKUP',
      );

      if (generateResponse.success) {
        state = state.copyWith(pickupQR: generateResponse, isLoading: false);
        return true;
      } else {
        state = state.copyWith(isLoading: false, error: generateResponse.message);
        return false;
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
      return false;
    }
  }

  /// Generate or get QR code for delivery
  Future<bool> getOrGenerateDeliveryQR(String jobId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // Try to get existing first
      final response = await _repository.getQRCode(jobId: jobId, type: 'DELIVERY');

      if (response.success) {
        state = state.copyWith(deliveryQR: response, isLoading: false);
        return true;
      }

      // Generate new if doesn't exist
      final generateResponse = await _repository.generateQRCode(
        jobId: jobId,
        type: 'DELIVERY',
      );

      if (generateResponse.success) {
        state = state.copyWith(deliveryQR: generateResponse, isLoading: false);
        return true;
      } else {
        state = state.copyWith(isLoading: false, error: generateResponse.message);
        return false;
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
      return false;
    }
  }

  /// Regenerate QR code
  Future<bool> regenerateQR(String jobId, String type) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _repository.regenerateQRCode(jobId: jobId, type: type);

      if (response.success) {
        if (type == 'PICKUP') {
          state = state.copyWith(pickupQR: response, isLoading: false);
        } else {
          state = state.copyWith(deliveryQR: response, isLoading: false);
        }
        return true;
      } else {
        state = state.copyWith(isLoading: false, error: response.message);
        return false;
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
      return false;
    }
  }

  /// Verify scanned QR code
  Future<QRVerificationResult?> verifyQRCode(String scannedData, {double? lat, double? lng}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final result = await _repository.verifyQRCode(qrData: scannedData, lat: lat, lng: lng);

      state = state.copyWith(lastScan: result, isLoading: false);
      return result;
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
      return null;
    }
  }

  /// Get QR code status
  Future<void> getQRStatus(String jobId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final status = await _repository.getQRCodeStatus(jobId);
      state = state.copyWith(status: status, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Clear last scan
  void clearLastScan() {
    state = state.copyWith(lastScan: null);
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Providers
final qrNotifierProvider = NotifierProvider<QRNotifier, QRState>(QRNotifier.new);

final pickupQRProvider = Provider<QRCodeResponse?>((ref) {
  return ref.watch(qrNotifierProvider).pickupQR;
});

final deliveryQRProvider = Provider<QRCodeResponse?>((ref) {
  return ref.watch(qrNotifierProvider).deliveryQR;
});

final lastScanProvider = Provider<QRVerificationResult?>((ref) {
  return ref.watch(qrNotifierProvider).lastScan;
});

final qrStatusProvider = Provider<QRCodeStatus?>((ref) {
  return ref.watch(qrNotifierProvider).status;
});

final qrLoadingProvider = Provider<bool>((ref) {
  return ref.watch(qrNotifierProvider).isLoading;
});
