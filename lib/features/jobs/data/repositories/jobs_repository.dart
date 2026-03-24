import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/jobs/data/models/job_model.dart';

final jobsRepositoryProvider = Provider<JobsRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return JobsRepository(dio);
});

class JobsRepository {
  final DioClient _dioClient;

  JobsRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  // Get all jobs for current user
  Future<List<JobModel>> getJobs({String? status, int page = 1, int limit = 20}) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'limit': limit,
        if (status != null) 'status': status,
      };

      final response = await _dio.get('/jobs', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => JobModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get jobs');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get job details
  Future<JobModel> getJobDetails(String jobId) async {
    try {
      final response = await _dio.get('/jobs/$jobId');

      if (response.data['success'] == true) {
        return JobModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get job details');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get active jobs
  Future<List<JobModel>> getActiveJobs() async {
    try {
      final response = await _dio.get('/freight/jobs/active');

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => JobModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get active jobs');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Update job status (Driver only)
  Future<JobModel> updateJobStatus(String jobId, String status, {String? notes}) async {
    try {
      final response = await _dio.patch('/jobs/$jobId/status', data: {
        'status': status,
        if (notes != null) 'notes': notes,
      });

      if (response.data['success'] == true) {
        return JobModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to update job status');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Update location (Driver only)
  Future<void> updateLocation(String jobId, double lat, double lng) async {
    try {
      final response = await _dio.patch('/jobs/$jobId/location', data: {
        'lat': lat,
        'lng': lng,
      });

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to update location');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get location (Shipper only)
  Future<Map<String, dynamic>?> getJobLocation(String jobId) async {
    try {
      final response = await _dio.get('/jobs/$jobId/location');

      if (response.data['success'] == true) {
        return response.data['data'] as Map<String, dynamic>;
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get location');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Verify pickup QR code (Shipper only)
  Future<JobModel> verifyPickup(String jobId, String qrCode) async {
    try {
      final response = await _dio.post('/jobs/$jobId/verify-pickup', data: {
        'qrCode': qrCode,
      });

      if (response.data['success'] == true) {
        return JobModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to verify pickup');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Verify delivery QR code (Shipper only)
  Future<JobModel> verifyDelivery(String jobId, String qrCode) async {
    try {
      final response = await _dio.post('/jobs/$jobId/verify-delivery', data: {
        'qrCode': qrCode,
      });

      if (response.data['success'] == true) {
        return JobModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to verify delivery');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Upload delivery proof (Driver only)
  Future<JobModel> uploadDeliveryProof(
    String jobId, {
    required List<String> photos,
    String? recipientName,
    String? notes,
  }) async {
    try {
      final response = await _dio.post('/jobs/$jobId/delivery-proof', data: {
        'photos': photos,
        if (recipientName != null) 'recipientName': recipientName,
        if (notes != null) 'notes': notes,
      });

      if (response.data['success'] == true) {
        return JobModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to upload delivery proof');
      }
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
