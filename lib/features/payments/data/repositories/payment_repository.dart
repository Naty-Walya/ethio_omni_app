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

  // ================= ET-SWITCH INTEGRATION =================

  // Get ET-SWITCH supported banks
  Future<List<EtSwitchBank>> getEtSwitchBanks() async {
    try {
      // Try to fetch from API first
      final response = await _dio.get('/payments/etswitch/banks');

      if (response.data['success'] == true) {
        final List<dynamic> banks = response.data['data'];
        return banks.map((json) => EtSwitchBank.fromJson(json as Map<String, dynamic>)).toList();
      }
    } catch (e) {
      // Fallback to local list if API fails
    }

    // Return local list of Ethiopian banks
    return EtSwitchBank.getEthiopianBanks();
  }

  // Initiate ET-SWITCH card payment
  Future<EtSwitchPaymentResponse> initiateEtSwitchCardPayment({
    required double amount,
    required String orderId,
    required String description,
    String? customerName,
    String? customerEmail,
    String? customerPhone,
  }) async {
    try {
      final request = EtSwitchPaymentRequest(
        merchantId: 'ethio_omni_app',
        merchantName: 'Ethio-Omni Freight Exchange',
        amount: amount,
        orderId: orderId,
        description: description,
        callbackUrl: 'https://api.ethioomni.com/payments/etswitch/callback',
        customerName: customerName,
        customerEmail: customerEmail,
        customerPhone: customerPhone,
        paymentType: EtSwitchPaymentType.card,
      );

      final response = await _dio.post('/payments/etswitch/card', data: request.toJson());

      return EtSwitchPaymentResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Initiate ET-SWITCH bank transfer
  Future<EtSwitchPaymentResponse> initiateEtSwitchBankTransfer({
    required String bankCode,
    required double amount,
    required String orderId,
    required String description,
    String? customerName,
    String? customerPhone,
  }) async {
    try {
      final banks = EtSwitchBank.getEthiopianBanks();
      final selectedBank = banks.firstWhere(
        (b) => b.code == bankCode,
        orElse: () => banks.first,
      );

      final request = EtSwitchPaymentRequest(
        merchantId: 'ethio_omni_app',
        merchantName: 'Ethio-Omni Freight Exchange',
        amount: amount,
        orderId: orderId,
        description: description,
        callbackUrl: 'https://api.ethioomni.com/payments/etswitch/callback',
        customerName: customerName,
        customerPhone: customerPhone,
        paymentType: EtSwitchPaymentType.bankTransfer,
        selectedBank: selectedBank,
      );

      final response = await _dio.post('/payments/etswitch/bank', data: request.toJson());

      return EtSwitchPaymentResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Initiate ET-SWITCH mobile banking
  Future<EtSwitchPaymentResponse> initiateEtSwitchMobileBanking({
    required String bankCode,
    required double amount,
    required String orderId,
    required String description,
    required String customerPhone,
  }) async {
    try {
      final banks = EtSwitchBank.getEthiopianBanks();
      final selectedBank = banks.firstWhere(
        (b) => b.code == bankCode,
        orElse: () => banks.first,
      );

      final request = EtSwitchPaymentRequest(
        merchantId: 'ethio_omni_app',
        merchantName: 'Ethio-Omni Freight Exchange',
        amount: amount,
        orderId: orderId,
        description: description,
        callbackUrl: 'https://api.ethioomni.com/payments/etswitch/callback',
        customerPhone: customerPhone,
        paymentType: EtSwitchPaymentType.mobileBanking,
        selectedBank: selectedBank,
      );

      final response = await _dio.post('/payments/etswitch/mobile', data: request.toJson());

      return EtSwitchPaymentResponse.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Check ET-SWITCH payment status
  Future<EtSwitchPaymentStatus> checkEtSwitchPaymentStatus(String transactionReference) async {
    try {
      final response = await _dio.get('/payments/etswitch/status/$transactionReference');

      if (response.data['success'] == true) {
        final status = (response.data['data']['status'] as String).toLowerCase();
        return EtSwitchPaymentStatus.values.firstWhere(
          (s) => s.name == status,
          orElse: () => EtSwitchPaymentStatus.pending,
        );
      }
      return EtSwitchPaymentStatus.pending;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // ================= TELEBIRR DIRECT (DEEPLINK) =================

  // Initiate Telebirr direct payment (app-to-app)
  Future<TelebirrDirectPayment> initiateTelebirrDirectPayment({
    required double amount,
    required String orderId,
    String? description,
  }) async {
    try {
      // Get receiver details from backend
      final response = await _dio.get('/payments/telebirr/config');

      if (response.data['success'] == true) {
        final data = response.data['data'] as Map<String, dynamic>;

        return TelebirrDirectPayment(
          receiverName: data['receiverName'] as String? ?? 'Ethio-Omni',
          receiverPhone: data['receiverPhone'] as String? ?? '909',
          amount: amount,
          description: description ?? 'Ethio-Omni Freight Payment',
          orderId: orderId,
          callbackUrl: 'ethioomni://payments/callback',
        );
      }

      // Fallback to default
      return TelebirrDirectPayment(
        receiverName: 'Ethio-Omni',
        receiverPhone: '909',
        amount: amount,
        description: description ?? 'Ethio-Omni Freight Payment',
        orderId: orderId,
        callbackUrl: 'ethioomni://payments/callback',
      );
    } catch (e) {
      // Fallback for development/testing
      return TelebirrDirectPayment(
        receiverName: 'Ethio-Omni',
        receiverPhone: '909',
        amount: amount,
        description: description ?? 'Ethio-Omni Freight Payment',
        orderId: orderId,
        callbackUrl: 'ethioomni://payments/callback',
      );
    }
  }

  // Verify Telebirr payment callback
  Future<bool> verifyTelebirrPayment(String transactionId, String referenceNumber) async {
    try {
      final response = await _dio.post('/payments/telebirr/verify', data: {
        'transactionId': transactionId,
        'referenceNumber': referenceNumber,
      });

      return response.data['success'] == true;
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
