import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/wallet/data/models/wallet_model.dart';
import 'package:ethio_omni_app/features/wallet/data/repositories/wallet_repository.dart';

// Wallet state
class WalletState {
  final WalletModel? wallet;
  final List<TransactionModel> transactions;
  final bool isLoading;
  final String? error;

  const WalletState({
    this.wallet,
    this.transactions = const [],
    this.isLoading = false,
    this.error,
  });

  WalletState copyWith({
    WalletModel? wallet,
    List<TransactionModel>? transactions,
    bool? isLoading,
    String? error,
  }) {
    return WalletState(
      wallet: wallet ?? this.wallet,
      transactions: transactions ?? this.transactions,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

// Wallet notifier
class WalletNotifier extends Notifier<WalletState> {
  late final WalletRepository _repository;

  @override
  WalletState build() {
    _repository = ref.watch(walletRepositoryProvider);
    return const WalletState();
  }

  Future<void> loadWallet() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final wallet = await _repository.getWallet();
      state = state.copyWith(wallet: wallet, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> loadTransactions({bool refresh = false}) async {
    if (refresh) {
      state = state.copyWith(transactions: []);
    }
    state = state.copyWith(isLoading: true, error: null);
    try {
      final transactions = await _repository.getTransactions();
      state = state.copyWith(transactions: transactions, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> deposit(double amount, {String? description}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final transaction = await _repository.deposit(
        amount: amount,
        currency: state.wallet?.currency ?? 'ETB',
        description: description,
      );
      // Reload wallet and transactions
      await loadWallet();
      await loadTransactions(refresh: true);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> withdraw(double amount, {String? description}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final transaction = await _repository.withdraw(
        amount: amount,
        currency: state.wallet?.currency ?? 'ETB',
        description: description,
      );
      // Reload wallet and transactions
      await loadWallet();
      await loadTransactions(refresh: true);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Providers
final walletNotifierProvider = NotifierProvider<WalletNotifier, WalletState>(WalletNotifier.new);

final walletProvider = Provider<WalletModel?>((ref) {
  return ref.watch(walletNotifierProvider).wallet;
});

final walletBalanceProvider = Provider<double>((ref) {
  return ref.watch(walletNotifierProvider).wallet?.balance ?? 0.0;
});

final walletTransactionsProvider = Provider<List<TransactionModel>>((ref) {
  return ref.watch(walletNotifierProvider).transactions;
});

final walletLoadingProvider = Provider<bool>((ref) {
  return ref.watch(walletNotifierProvider).isLoading;
});

final walletErrorProvider = Provider<String?>((ref) {
  return ref.watch(walletNotifierProvider).error;
});
