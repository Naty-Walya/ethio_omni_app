import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/freight/data/models/freight_model.dart';

final freightRepositoryProvider = Provider<FreightRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return FreightRepository(dio);
});

class FreightRepository {
  final DioClient _dioClient;

  FreightRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  Future<List<FreightPostModel>> getFreightPosts({
    String? status,
    String? cargoType,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _dio.get('/freight', queryParameters: {
        if (status != null) 'status': status,
        if (cargoType != null) 'cargoType': cargoType,
        'page': page,
        'limit': limit,
      });

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => FreightPostModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get freight posts');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<FreightPostModel> getFreightPost(String id) async {
    try {
      final response = await _dio.get('/freight/$id');

      if (response.data['success'] == true) {
        return FreightPostModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get freight post');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<FreightPostModel> createFreightPost(CreateFreightPostRequest request) async {
    try {
      final response = await _dio.post('/freight', data: request.toJson());

      if (response.data['success'] == true) {
        return FreightPostModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to create freight post');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<BidModel> placeBid(String freightPostId, CreateBidRequest request) async {
    try {
      final response = await _dio.post(
        '/freight/$freightPostId/bids',
        data: request.toJson(),
      );

      if (response.data['success'] == true) {
        return BidModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to place bid');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<FreightPostModel>> getMyPosts() async {
    try {
      final response = await _dio.get('/freight/my/posts');

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => FreightPostModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get my posts');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<BidModel>> getMyBids() async {
    try {
      final response = await _dio.get('/freight/my/bids');

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => BidModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get my bids');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<FreightJobModel>> getActiveJobs() async {
    try {
      final response = await _dio.get('/freight/jobs/active');

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => FreightJobModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get active jobs');
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
