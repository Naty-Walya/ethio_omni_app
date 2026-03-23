import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/ai/data/models/prediction_model.dart';

final aiRepositoryProvider = Provider<AIRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return AIRepository(dio);
});

class AIRepository {
  final DioClient _dioClient;

  AIRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  Future<DemandPredictionModel> getDemandPrediction(
    GetDemandPredictionRequest request,
  ) async {
    try {
      final response = await _dio.post(
        '/ai/demand-prediction',
        data: request.toJson(),
      );

      if (response.data['success'] == true) {
        return DemandPredictionModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get demand prediction');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<PriceRecommendationModel> getPriceRecommendation(
    GetPriceRecommendationRequest request,
  ) async {
    try {
      final response = await _dio.post(
        '/ai/price-recommendation',
        data: request.toJson(),
      );

      if (response.data['success'] == true) {
        return PriceRecommendationModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get price recommendation');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<FraudAlertModel>> getFraudAlerts() async {
    try {
      final response = await _dio.get('/ai/fraud-alerts');

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

  Future<MatchScoreModel> getMatchScore(String driverId, String freightPostId) async {
    try {
      final response = await _dio.get('/ai/match-score', queryParameters: {
        'driverId': driverId,
        'freightPostId': freightPostId,
      });

      if (response.data['success'] == true) {
        return MatchScoreModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get match score');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> submitFeedback(String entityId, String entityType, bool wasHelpful) async {
    try {
      await _dio.post('/ai/feedback', data: {
        'entityId': entityId,
        'entityType': entityType,
        'wasHelpful': wasHelpful,
      });
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
