import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/ai/data/models/ai_models.dart';

final aiRepositoryProvider = Provider<AIRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return AIRepository(dio);
});

class AIRepository {
  final DioClient _dioClient;

  AIRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  // Get demand prediction
  Future<DemandPredictionModel> getDemandPrediction({
    required String region,
    String? route,
    int daysAhead = 7,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'region': region,
        if (route != null) 'route': route,
        'daysAhead': daysAhead,
      };

      final response = await _dio.get('/ai/demand-prediction', queryParameters: queryParams);

      if (response.data['success'] == true) {
        return DemandPredictionModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get demand prediction');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get price recommendation
  Future<PriceRecommendationModel> getPriceRecommendation({
    required String pickupLocation,
    required String deliveryLocation,
    double weight = 1000,
    String cargoType = 'GENERAL',
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'pickupLocation': pickupLocation,
        'deliveryLocation': deliveryLocation,
        'weight': weight,
        'cargoType': cargoType,
      };

      final response = await _dio.get('/ai/price-recommendation', queryParameters: queryParams);

      if (response.data['success'] == true) {
        return PriceRecommendationModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get price recommendation');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Check fraud
  Future<FraudCheckResult> checkFraud({
    required String entityType,
    required String entityId,
    required Map<String, dynamic> data,
  }) async {
    try {
      final response = await _dio.post('/ai/fraud-check', data: {
        'entityType': entityType,
        'entityId': entityId,
        'data': data,
      });

      if (response.data['success'] == true) {
        return FraudCheckResult.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to check fraud');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get fraud alerts (admin)
  Future<List<FraudAlertModel>> getFraudAlerts({
    String? status,
    String? severity,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'limit': limit,
        if (status != null) 'status': status,
        if (severity != null) 'severity': severity,
      };

      final response = await _dio.get('/ai/fraud-alerts', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => FraudAlertModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get fraud alerts');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get market analytics
  Future<List<MarketAnalyticsModel>> getMarketAnalytics({
    String? region,
    String? period,
    String periodType = 'DAY',
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'periodType': periodType,
        if (region != null) 'region': region,
        if (period != null) 'period': period,
      };

      final response = await _dio.get('/ai/market-analytics', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => MarketAnalyticsModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get market analytics');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Submit AI feedback
  Future<void> submitFeedback({
    required String predictionId,
    required String feedbackType,
    int? rating,
    String? comment,
  }) async {
    try {
      final response = await _dio.post('/ai/feedback', data: {
        'predictionId': predictionId,
        'feedbackType': feedbackType,
        if (rating != null) 'rating': rating,
        if (comment != null) 'comment': comment,
      });

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to submit feedback');
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
