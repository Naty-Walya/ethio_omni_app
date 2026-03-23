import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/auth/presentation/providers/auth_provider.dart';

// Home dashboard state
class HomeState {
  final int activeFreightCount;
  final int activeAuctionCount;
  final int unreadNotificationCount;
  final double walletBalance;
  final bool isLoading;
  final String? error;

  const HomeState({
    this.activeFreightCount = 0,
    this.activeAuctionCount = 0,
    this.unreadNotificationCount = 0,
    this.walletBalance = 0.0,
    this.isLoading = false,
    this.error,
  });

  HomeState copyWith({
    int? activeFreightCount,
    int? activeAuctionCount,
    int? unreadNotificationCount,
    double? walletBalance,
    bool? isLoading,
    String? error,
  }) {
    return HomeState(
      activeFreightCount: activeFreightCount ?? this.activeFreightCount,
      activeAuctionCount: activeAuctionCount ?? this.activeAuctionCount,
      unreadNotificationCount: unreadNotificationCount ?? this.unreadNotificationCount,
      walletBalance: walletBalance ?? this.walletBalance,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class HomeNotifier extends Notifier<HomeState> {
  @override
  HomeState build() {
    // Load initial data when auth state changes
    final authState = ref.watch(authNotifierProvider);
    if (authState.isAuthenticated && !authState.isLoading) {
      _loadDashboardData();
    }
    return const HomeState();
  }

  Future<void> _loadDashboardData() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // In a real app, this would fetch from multiple repositories
      // For now, we'll simulate the data
      await Future.delayed(const Duration(milliseconds: 500));

      state = state.copyWith(
        activeFreightCount: 12,
        activeAuctionCount: 5,
        unreadNotificationCount: 3,
        walletBalance: 12500.00,
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
    await _loadDashboardData();
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Providers
final homeNotifierProvider = NotifierProvider<HomeNotifier, HomeState>(HomeNotifier.new);

final dashboardStatsProvider = Provider<Map<String, dynamic>>((ref) {
  final homeState = ref.watch(homeNotifierProvider);
  return {
    'activeFreight': homeState.activeFreightCount,
    'activeAuctions': homeState.activeAuctionCount,
    'notifications': homeState.unreadNotificationCount,
    'walletBalance': homeState.walletBalance,
  };
});

final quickActionsProvider = Provider<List<Map<String, dynamic>>>((ref) {
  final authState = ref.watch(authNotifierProvider);
  final role = authState.user?.role;

  if (role == 'SHIPPER') {
    return [
      {'icon': 'add_box', 'label': 'Post Load', 'route': '/freight/create'},
      {'icon': 'gavel', 'label': 'My Auctions', 'route': '/auctions'},
      {'icon': 'account_balance_wallet', 'label': 'Wallet', 'route': '/wallet'},
      {'icon': 'history', 'label': 'History', 'route': '/freight/history'},
    ];
  } else if (role == 'DRIVER') {
    return [
      {'icon': 'local_shipping', 'label': 'Find Loads', 'route': '/freight'},
      {'icon': 'gavel', 'label': 'Auctions', 'route': '/auctions'},
      {'icon': 'work', 'label': 'My Jobs', 'route': '/jobs'},
      {'icon': 'account_balance_wallet', 'label': 'Wallet', 'route': '/wallet'},
    ];
  } else {
    return [
      {'icon': 'dashboard', 'label': 'Dashboard', 'route': '/dashboard'},
      {'icon': 'people', 'label': 'Fleet', 'route': '/fleet'},
      {'icon': 'account_balance_wallet', 'label': 'Wallet', 'route': '/wallet'},
      {'icon': 'analytics', 'label': 'Reports', 'route': '/reports'},
    ];
  }
});
