import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/payments/data/models/payment_model.dart';
import 'package:ethio_omni_app/features/payments/data/repositories/payment_repository.dart';

// Payment state
class PaymentState {
  final WalletModel? wallet;
  final List<TransactionModel> transactions;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;
  final String? pendingTransactionId;
  final String? pendingUssdCode;

  const PaymentState({
    this.wallet,
    this.transactions = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
    this.pendingTransactionId,
    this.pendingUssdCode,
  });

  PaymentState copyWith({
    WalletModel? wallet,
    List<TransactionModel>? transactions,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
    String? pendingTransactionId,
    String? pendingUssdCode,
  }) {
    return PaymentState(
      wallet: wallet ?? this.wallet,
      transactions: transactions ?? this.transactions,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
      pendingTransactionId: pendingTransactionId ?? this.pendingTransactionId,
      pendingUssdCode: pendingUssdCode ?? this.pendingUssdCode,
    );
  }
}

class PaymentNotifier extends Notifier<PaymentState> {
  late final PaymentRepository _repository;
  Timer? _statusCheckTimer;
  static const int _pageSize = 20;

  @override
  PaymentState build() {
    _repository = ref.watch(paymentRepositoryProvider);
    _initialize();
    return const PaymentState();
  }

  Future<void> _initialize() async {
    await Future.wait([
      _loadWallet(),
      _loadTransactions(),
    ]);
  }

  Future<void> _loadWallet() async {
    try {
      final wallet = await _repository.getWallet();
      state = state.copyWith(wallet: wallet);
    } catch (e) {
      // Silent fail
    }
  }

  Future<void> _loadTransactions() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final transactions = await _repository.getTransactionHistory(
        limit: _pageSize,
        offset: 0,
      );
      state = state.copyWith(
        transactions: transactions,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> refresh() async {
    await Future.wait([
      _loadWallet(),
      _loadTransactions(),
    ]);
  }

  Future<void> loadMoreTransactions() async {
    if (state.isLoadingMore) return;

    state = state.copyWith(isLoadingMore: true, error: null);
    try {
      final newTransactions = await _repository.getTransactionHistory(
        limit: _pageSize,
        offset: state.transactions.length,
      );

      final allTransactions = [...state.transactions, ...newTransactions];
      state = state.copyWith(
        transactions: allTransactions,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoadingMore: false,
      );
    }
  }

  // Deposit via TeleBirr
  Future<bool> depositViaTelebirr({
    required String phoneNumber,
    required double amount,
    String? description,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _repository.initiateTelebirrDeposit(
        phoneNumber: phoneNumber,
        amount: amount,
        description: description,
      );

      if (response.success) {
        state = state.copyWith(
          isLoading: false,
          pendingTransactionId: response.transactionId,
          pendingUssdCode: response.ussdCode,
        );

        // Start status checking
        _startStatusChecking(response.transactionId!);
        return true;
      } else {
        state = state.copyWith(
          isLoading: false,
          error: response.message,
        );
        return false;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      return false;
    }
  }

  // Withdraw to TeleBirr
  Future<bool> withdrawToTelebirr({
    required String phoneNumber,
    required double amount,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _repository.withdrawToTelebirr(
        phoneNumber: phoneNumber,
        amount: amount,
      );

      if (response.success) {
        // Refresh wallet
        await _loadWallet();
        state = state.copyWith(isLoading: false);
        return true;
      } else {
        state = state.copyWith(
          isLoading: false,
          error: response.message,
        );
        return false;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      return false;
    }
  }

  // Create escrow payment
  Future<bool> createEscrowPayment({
    required String jobId,
    required double amount,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _repository.createEscrowPayment(
        jobId: jobId,
        amount: amount,
      );

      if (response.success) {
        await _loadWallet();
        state = state.copyWith(isLoading: false);
        return true;
      } else {
        state = state.copyWith(
          isLoading: false,
          error: response.message,
        );
        return false;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      return false;
    }
  }

  // Release escrow payment
  Future<bool> releaseEscrowPayment(String jobId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final success = await _repository.releaseEscrowPayment(jobId);

      if (success) {
        await _loadWallet();
        state = state.copyWith(isLoading: false);
        return true;
      } else {
        state = state.copyWith(
          isLoading: false,
          error: 'Failed to release payment',
        );
        return false;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      return false;
    }
  }

  // Check payment status
  Future<TransactionStatus?> checkPaymentStatus(String transactionId) async {
    try {
      final response = await _repository.checkPaymentStatus(transactionId);

      if (response.success) {
        // If completed, refresh wallet
        if (response.status == TransactionStatus.completed) {
          await _loadWallet();
          _stopStatusChecking();
          state = state.copyWith(
            pendingTransactionId: null,
            pendingUssdCode: null,
          );
        }
        return response.status;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  // Start automatic status checking
  void _startStatusChecking(String transactionId) {
    _statusCheckTimer?.cancel();
    _statusCheckTimer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => checkPaymentStatus(transactionId),
    );
  }

  // Stop status checking
  void _stopStatusChecking() {
    _statusCheckTimer?.cancel();
    _statusCheckTimer = null;
  }

  // Simulate payment completion (development only)
  Future<bool> simulatePaymentCompletion() async {
    if (state.pendingTransactionId == null) return false;

    try {
      final success = await _repository.simulatePaymentCompletion(
        state.pendingTransactionId!,
      );

      if (success) {
        await _loadWallet();
        _stopStatusChecking();
        state = state.copyWith(
          pendingTransactionId: null,
          pendingUssdCode: null,
        );
      }
      return success;
    } catch (e) {
      return false;
    }
  }

  // Clear pending payment
  void clearPendingPayment() {
    _stopStatusChecking();
    state = state.copyWith(
      pendingTransactionId: null,
      pendingUssdCode: null,
    );
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  @override
  void dispose() {
    _statusCheckTimer?.cancel();
    super.dispose();
  }
}

// Providers
final paymentNotifierProvider = NotifierProvider<PaymentNotifier, PaymentState>(
  PaymentNotifier.new,
);

final walletProvider = Provider<WalletModel?>((ref) {
  return ref.watch(paymentNotifierProvider).wallet;
});

final walletBalanceProvider = Provider<double>((ref) {
  final wallet = ref.watch(walletProvider);
  return wallet?.balance ?? 0.0;
});

final transactionsProvider = Provider<List<TransactionModel>>((ref) {
  return ref.watch(paymentNotifierProvider).transactions;
});

final paymentLoadingProvider = Provider<bool>((ref) {
  return ref.watch(paymentNotifierProvider).isLoading;
});

final pendingPaymentProvider = Provider<(String?, String?)?>((ref) {
  final state = ref.watch(paymentNotifierProvider);
  if (state.pendingTransactionId != null) {
    return (state.pendingTransactionId, state.pendingUssdCode);
  }
  return null;
});
