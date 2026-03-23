import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_model.freezed.dart';
part 'prediction_model.g.dart';

@freezed
class DemandPredictionModel with _$DemandPredictionModel {
  const factory DemandPredictionModel({
    required String id,
    required String route,
    required double demandScore, // 0.0 to 1.0
    required int predictedLoads,
    required double averagePrice,
    required String timeRange,
    DateTime? predictedAt,
    @Default([]) List<RouteSegmentModel> segments,
  }) = _DemandPredictionModel;

  factory DemandPredictionModel.fromJson(Map<String, dynamic> json) =>
      _$DemandPredictionModelFromJson(json);
}

@freezed
class RouteSegmentModel with _$RouteSegmentModel {
  const factory RouteSegmentModel({
    required String origin,
    required String destination,
    required double demandFactor,
    required double priceEstimate,
    required int confidence, // percentage
  }) = _RouteSegmentModel;

  factory RouteSegmentModel.fromJson(Map<String, dynamic> json) =>
      _$RouteSegmentModelFromJson(json);
}

@freezed
class PriceRecommendationModel with _$PriceRecommendationModel {
  const factory PriceRecommendationModel({
    required String id,
    required double recommendedPrice,
    required double minPrice,
    required double maxPrice,
    required double marketAverage,
    required String reasoning,
    @Default([]) List<PriceFactorModel> factors,
    DateTime? generatedAt,
  }) = _PriceRecommendationModel;

  factory PriceRecommendationModel.fromJson(Map<String, dynamic> json) =>
      _$PriceRecommendationModelFromJson(json);
}

@freezed
class PriceFactorModel with _$PriceFactorModel {
  const factory PriceFactorModel({
    required String factor,
    required double impact, // -1.0 to 1.0
    required String description,
  }) = _PriceFactorModel;

  factory PriceFactorModel.fromJson(Map<String, dynamic> json) =>
      _$PriceFactorModelFromJson(json);
}

@freezed
class FraudAlertModel with _$FraudAlertModel {
  const factory FraudAlertModel({
    required String id,
    required String alertType,
    required double riskScore, // 0.0 to 1.0
    required String description,
    required String entityId,
    required String entityType,
    String? actionTaken,
    DateTime? detectedAt,
    DateTime? resolvedAt,
  }) = _FraudAlertModel;

  factory FraudAlertModel.fromJson(Map<String, dynamic> json) =>
      _$FraudAlertModelFromJson(json);
}

@freezed
class MatchScoreModel with _$MatchScoreModel {
  const factory MatchScoreModel({
    required String driverId,
    required String freightPostId,
    required double score, // 0.0 to 1.0
    required double distanceScore,
    required double ratingScore,
    required double priceScore,
    required double reliabilityScore,
    String? reasoning,
  }) = _MatchScoreModel;

  factory MatchScoreModel.fromJson(Map<String, dynamic> json) =>
      _$MatchScoreModelFromJson(json);
}

// Request models
class GetDemandPredictionRequest {
  final String origin;
  final String destination;
  final String cargoType;
  final DateTime? startDate;
  final DateTime? endDate;

  GetDemandPredictionRequest({
    required this.origin,
    required this.destination,
    required this.cargoType,
    this.startDate,
    this.endDate,
  });

  Map<String, dynamic> toJson() {
    return {
      'origin': origin,
      'destination': destination,
      'cargoType': cargoType,
      'startDate': startDate?.toIso8601String(),
      'endDate': endDate?.toIso8601String(),
    };
  }
}

class GetPriceRecommendationRequest {
  final String origin;
  final String destination;
  final double weight;
  final String cargoType;
  final String? vehicleType;

  GetPriceRecommendationRequest({
    required this.origin,
    required this.destination,
    required this.weight,
    required this.cargoType,
    this.vehicleType,
  });

  Map<String, dynamic> toJson() {
    return {
      'origin': origin,
      'destination': destination,
      'weight': weight,
      'cargoType': cargoType,
      'vehicleType': vehicleType,
    };
  }
}
