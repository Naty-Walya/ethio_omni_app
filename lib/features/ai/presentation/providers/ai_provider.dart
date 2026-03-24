import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/ai/data/models/ai_models.dart';
import 'package:ethio_omni_app/features/ai/data/repositories/ai_repository.dart';

// AI State
class AIState {
  final DemandPredictionModel? demandPrediction;
  final PriceRecommendationModel? priceRecommendation;
  final FraudCheckResult? fraudCheck;
  final List<FraudAlertModel> fraudAlerts;
  final List<MarketAnalyticsModel> marketAnalytics;
  final bool isLoading;
  final String? error;

  const AIState({
    this.demandPrediction,
    this.priceRecommendation,
    this.fraudCheck,
    this.fraudAlerts = const [],
    this.marketAnalytics = const [],
    this.isLoading = false,
    this.error,
  });

  AIState copyWith({
    DemandPredictionModel? demandPrediction,
    PriceRecommendationModel? priceRecommendation,
    FraudCheckResult? fraudCheck,
    List<FraudAlertModel>? fraudAlerts,
    List<MarketAnalyticsModel>? marketAnalytics,
    bool? isLoading,
    String? error,
  }) {
    return AIState(
      demandPrediction: demandPrediction ?? this.demandPrediction,
      priceRecommendation: priceRecommendation ?? this.priceRecommendation,
      fraudCheck: fraudCheck ?? this.fraudCheck,
      fraudAlerts: fraudAlerts ?? this.fraudAlerts,
      marketAnalytics: marketAnalytics ?? this.marketAnalytics,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

// AI Notifier
class AINotifier extends Notifier<AIState> {
  late final AIRepository _aiRepository;

  @override
  AIState build() {
    _aiRepository = ref.watch(aiRepositoryProvider);
    return const AIState();
  }

  // Get demand prediction
  Future<void> getDemandPrediction({
    required String region,
    String? route,
    int daysAhead = 7,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final prediction = await _aiRepository.getDemandPrediction(
        region: region,
        route: route,
        daysAhead: daysAhead,
      );
      state = state.copyWith(
        demandPrediction: prediction,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  // Get price recommendation
  Future<void> getPriceRecommendation({
    required String pickupLocation,
    required String deliveryLocation,
    double weight = 1000,
    String cargoType = 'GENERAL',
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final recommendation = await _aiRepository.getPriceRecommendation(
        pickupLocation: pickupLocation,
        deliveryLocation: deliveryLocation,
        weight: weight,
        cargoType: cargoType,
      );
      state = state.copyWith(
        priceRecommendation: recommendation,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  // Check fraud
  Future<FraudCheckResult?> checkFraud({
    required String entityType,
    required String entityId,
    required Map<String, dynamic> data,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final result = await _aiRepository.checkFraud(
        entityType: entityType,
        entityId: entityId,
        data: data,
      );
      state = state.copyWith(
        fraudCheck: result,
        isLoading: false,
      );
      return result;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return null;
    }
  }

  // Get market analytics
  Future<void> getMarketAnalytics({
    String? region,
    String? period,
    String periodType = 'DAY',
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final analytics = await _aiRepository.getMarketAnalytics(
        region: region,
        period: period,
        periodType: periodType,
      );
      state = state.copyWith(
        marketAnalytics: analytics,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  // Submit feedback
  Future<void> submitFeedback({
    required String predictionId,
    required String feedbackType,
    int? rating,
    String? comment,
  }) async {
    try {
      await _aiRepository.submitFeedback(
        predictionId: predictionId,
        feedbackType: feedbackType,
        rating: rating,
        comment: comment,
      );
    } catch (e) {
      debugPrint('Feedback submission failed: $e');
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearPredictions() {
    state = state.copyWith(
      demandPrediction: null,
      priceRecommendation: null,
      fraudCheck: null,
    );
  }
}

// Providers
final aiNotifierProvider = NotifierProvider<AINotifier, AIState>(AINotifier.new);

// Computed providers
final demandPredictionProvider = Provider<DemandPredictionModel?>((ref) {
  return ref.watch(aiNotifierProvider).demandPrediction;
});

final priceRecommendationProvider = Provider<PriceRecommendationModel?>((ref) {
  return ref.watch(aiNotifierProvider).priceRecommendation;
});

final fraudCheckProvider = Provider<FraudCheckResult?>((ref) {
  return ref.watch(aiNotifierProvider).fraudCheck;
});

final marketAnalyticsProvider = Provider<List<MarketAnalyticsModel>>((ref) {
  return ref.watch(aiNotifierProvider).marketAnalytics;
});

final aiLoadingProvider = Provider<bool>((ref) {
  return ref.watch(aiNotifierProvider).isLoading;
});

final aiErrorProvider = Provider<String?>((ref) {
  return ref.watch(aiNotifierProvider).error;
});
