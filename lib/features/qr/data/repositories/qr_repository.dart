import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/qr/data/models/qr_model.dart';

final qrRepositoryProvider = Provider<QRRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return QRRepository(dio);
});

class QRRepository {
  final DioClient _dioClient;

  QRRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  /// Generate QR code for pickup or delivery
  Future<QRCodeResponse> generateQRCode({
    required String jobId,
    required String type, // 'PICKUP' or 'DELIVERY'
  }) async {
    try {
      final response = await _dio.post('/qr/generate/$jobId', data: {
        'type': type,
      });

      return QRCodeResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Get existing QR code
  Future<QRCodeResponse> getQRCode({
    required String jobId,
    required String type,
  }) async {
    try {
      final response = await _dio.get('/qr/$jobId', queryParameters: {
        'type': type,
      });

      return QRCodeResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Regenerate QR code
  Future<QRCodeResponse> regenerateQRCode({
    required String jobId,
    required String type,
  }) async {
    try {
      final response = await _dio.post('/qr/regenerate/$jobId', data: {
        'type': type,
      });

      return QRCodeResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Verify scanned QR code
  Future<QRVerificationResult> verifyQRCode({
    required String qrData,
    double? lat,
    double? lng,
  }) async {
    try {
      final requestData = {'qrData': qrData};
      if (lat != null && lng != null) {
        requestData['lat'] = lat;
        requestData['lng'] = lng;
      }

      final response = await _dio.post('/qr/verify', data: requestData);

      return QRVerificationResult.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Get QR code status for a job
  Future<QRCodeStatus> getQRCodeStatus(String jobId) async {
    try {
      final response = await _dio.get('/qr/status/$jobId');

      return QRCodeStatus.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Exception _handleDioError(DioException error) {
    if (error.response != null) {
      final message = error.response?.data['message'] ?? error.response?.data['error'];
      if (message != null) {
        return Exception(message);
      }
      return Exception('Server error: ${error.response?.statusCode}');
    }
    return Exception(error.message ?? 'Network error');
  }
}
