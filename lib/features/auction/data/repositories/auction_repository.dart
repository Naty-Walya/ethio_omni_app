import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';

final auctionRepositoryProvider = Provider<AuctionRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return AuctionRepository(dio);
});

class AuctionRepository {
  final DioClient _dioClient;

  AuctionRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  Future<List<Map<String, dynamic>>> getActiveAuctions() async {
    try {
      final response = await _dio.get('/auctions');

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => json as Map<String, dynamic>).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get auctions');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<Map<String, dynamic>> getAuctionDetails(String auctionId) async {
    try {
      final response = await _dio.get('/auctions/$auctionId');

      if (response.data['success'] == true) {
        return response.data['data'] as Map<String, dynamic>;
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get auction details');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> joinAuction(String auctionId) async {
    try {
      final response = await _dio.post('/auctions/$auctionId/join');

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to join auction');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<Map<String, dynamic>> placeBid(String auctionId, double amount) async {
    try {
      final response = await _dio.post('/auctions/$auctionId/bid', data: {
        'amount': amount,
      });

      if (response.data['success'] == true) {
        return response.data['data'] as Map<String, dynamic>;
      } else {
        throw Exception(response.data['message'] ?? 'Failed to place bid');
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
