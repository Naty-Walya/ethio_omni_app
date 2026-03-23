import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/wallet/data/models/wallet_model.dart';

final walletRepositoryProvider = Provider<WalletRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return WalletRepository(dio);
});

class WalletRepository {
  final DioClient _dioClient;

  WalletRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  Future<WalletModel> getWallet() async {
    try {
      final response = await _dio.get('/wallet');

      if (response.data['success'] == true) {
        return WalletModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get wallet');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<TransactionModel>> getTransactions({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _dio.get('/wallet/transactions', queryParameters: {
        'page': page,
        'limit': limit,
      });

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => TransactionModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get transactions');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<TransactionModel> deposit({
    required double amount,
    required String currency,
    String? description,
  }) async {
    try {
      final response = await _dio.post('/wallet/deposit', data: {
        'amount': amount,
        'currency': currency,
        'description': description,
      });

      if (response.data['success'] == true) {
        return TransactionModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Deposit failed');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<TransactionModel> withdraw({
    required double amount,
    required String currency,
    String? description,
  }) async {
    try {
      final response = await _dio.post('/wallet/withdraw', data: {
        'amount': amount,
        'currency': currency,
        'description': description,
      });

      if (response.data['success'] == true) {
        return TransactionModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Withdrawal failed');
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
