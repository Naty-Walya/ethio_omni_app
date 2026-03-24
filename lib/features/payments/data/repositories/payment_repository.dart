import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/payments/data/models/payment_model.dart';

final paymentRepositoryProvider = Provider<PaymentRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return PaymentRepository(dio);
});

class PaymentRepository {
  final DioClient _dioClient;

  PaymentRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  // Get wallet
  Future<WalletModel?> getWallet() async {
    try {
      final response = await _dio.get('/payments/wallet');

      if (response.data['success'] == true) {
        return WalletModel.fromJson(response.data['data'] as Map<String, dynamic>);
      }
      return null;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Initiate TeleBirr deposit
  Future<PaymentInitiationResponse> initiateTelebirrDeposit({
    required String phoneNumber,
    required double amount,
    String? description,
  }) async {
    try {
      final response = await _dio.post('/payments/deposit/telebirr', data: {
        'phoneNumber': phoneNumber,
        'amount': amount,
        'description': description ?? 'Wallet top-up',
      });

      return PaymentInitiationResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Check payment status
  Future<PaymentStatusResponse> checkPaymentStatus(String transactionId) async {
    try {
      final response = await _dio.get('/payments/status/$transactionId');

      return PaymentStatusResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Withdraw to TeleBirr
  Future<PaymentInitiationResponse> withdrawToTelebirr({
    required String phoneNumber,
    required double amount,
  }) async {
    try {
      final response = await _dio.post('/payments/withdraw/telebirr', data: {
        'phoneNumber': phoneNumber,
        'amount': amount,
      });

      return PaymentInitiationResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get transaction history
  Future<List<TransactionModel>> getTransactionHistory({
    int limit = 20,
    int offset = 0,
    TransactionType? type,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'limit': limit,
        'offset': offset,
      };
      if (type != null) {
        queryParams['type'] = type.name.toUpperCase();
      }

      final response = await _dio.get('/payments/history', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data']['transactions'];
        return data.map((json) => TransactionModel.fromJson(json as Map<String, dynamic>)).toList();
      }
      return [];
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Create escrow payment
  Future<PaymentInitiationResponse> createEscrowPayment({
    required String jobId,
    required double amount,
  }) async {
    try {
      final response = await _dio.post('/payments/escrow/create', data: {
        'jobId': jobId,
        'amount': amount,
      });

      return PaymentInitiationResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Release escrow payment
  Future<bool> releaseEscrowPayment(String jobId) async {
    try {
      final response = await _dio.post('/payments/escrow/release', data: {
        'jobId': jobId,
      });

      return response.data['success'] == true;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Simulate payment completion (development only)
  Future<bool> simulatePaymentCompletion(String transactionId) async {
    try {
      final response = await _dio.post('/payments/simulate/complete', data: {
        'transactionId': transactionId,
      });

      return response.data['success'] == true;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get transaction details
  Future<TransactionModel?> getTransactionDetails(String transactionId) async {
    try {
      final response = await _dio.get('/payments/transaction/$transactionId');

      if (response.data['success'] == true) {
        return TransactionModel.fromJson(response.data['data'] as Map<String, dynamic>);
      }
      return null;
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
