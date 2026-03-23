import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/auction/data/repositories/auction_repository.dart';

// Auctions list state
class AuctionsListState {
  final List<Map<String, dynamic>> auctions;
  final bool isLoading;
  final String? error;
  final bool hasMore;

  const AuctionsListState({
    this.auctions = const [],
    this.isLoading = false,
    this.error,
    this.hasMore = true,
  });

  AuctionsListState copyWith({
    List<Map<String, dynamic>>? auctions,
    bool? isLoading,
    String? error,
    bool? hasMore,
  }) {
    return AuctionsListState(
      auctions: auctions ?? this.auctions,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class AuctionsListNotifier extends Notifier<AuctionsListState> {
  late final AuctionRepository _repository;

  @override
  AuctionsListState build() {
    _repository = ref.watch(auctionRepositoryProvider);
    _loadAuctions();
    return const AuctionsListState();
  }

  Future<void> _loadAuctions() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final auctions = await _repository.getActiveAuctions();
      state = state.copyWith(
        auctions: auctions,
        isLoading: false,
        hasMore: auctions.length >= 20,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> refresh() async {
    await _loadAuctions();
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Providers
final auctionsListNotifierProvider = NotifierProvider<AuctionsListNotifier, AuctionsListState>(
  AuctionsListNotifier.new,
);

final auctionsListProvider = Provider<List<Map<String, dynamic>>>((ref) {
  return ref.watch(auctionsListNotifierProvider).auctions;
});

final auctionsLoadingProvider = Provider<bool>((ref) {
  return ref.watch(auctionsListNotifierProvider).isLoading;
});

final auctionsErrorProvider = Provider<String?>((ref) {
  return ref.watch(auctionsListNotifierProvider).error;
});
