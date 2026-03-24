// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DemandPredictionModel _$DemandPredictionModelFromJson(
  Map<String, dynamic> json,
) => _DemandPredictionModel(
  id: json['id'] as String,
  route: json['route'] as String,
  demandScore: (json['demand_score'] as num).toDouble(),
  predictedLoads: (json['predicted_loads'] as num).toInt(),
  averagePrice: (json['average_price'] as num).toDouble(),
  timeRange: json['time_range'] as String,
  predictedAt: json['predicted_at'] == null
      ? null
      : DateTime.parse(json['predicted_at'] as String),
  segments:
      (json['segments'] as List<dynamic>?)
          ?.map((e) => RouteSegmentModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DemandPredictionModelToJson(
  _DemandPredictionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'route': instance.route,
  'demand_score': instance.demandScore,
  'predicted_loads': instance.predictedLoads,
  'average_price': instance.averagePrice,
  'time_range': instance.timeRange,
  'predicted_at': instance.predictedAt?.toIso8601String(),
  'segments': instance.segments.map((e) => e.toJson()).toList(),
};

_RouteSegmentModel _$RouteSegmentModelFromJson(Map<String, dynamic> json) =>
    _RouteSegmentModel(
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      demandFactor: (json['demand_factor'] as num).toDouble(),
      priceEstimate: (json['price_estimate'] as num).toDouble(),
      confidence: (json['confidence'] as num).toInt(),
    );

Map<String, dynamic> _$RouteSegmentModelToJson(_RouteSegmentModel instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'demand_factor': instance.demandFactor,
      'price_estimate': instance.priceEstimate,
      'confidence': instance.confidence,
    };

_PriceRecommendationModel _$PriceRecommendationModelFromJson(
  Map<String, dynamic> json,
) => _PriceRecommendationModel(
  id: json['id'] as String,
  recommendedPrice: (json['recommended_price'] as num).toDouble(),
  minPrice: (json['min_price'] as num).toDouble(),
  maxPrice: (json['max_price'] as num).toDouble(),
  marketAverage: (json['market_average'] as num).toDouble(),
  reasoning: json['reasoning'] as String,
  factors:
      (json['factors'] as List<dynamic>?)
          ?.map((e) => PriceFactorModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  generatedAt: json['generated_at'] == null
      ? null
      : DateTime.parse(json['generated_at'] as String),
);

Map<String, dynamic> _$PriceRecommendationModelToJson(
  _PriceRecommendationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'recommended_price': instance.recommendedPrice,
  'min_price': instance.minPrice,
  'max_price': instance.maxPrice,
  'market_average': instance.marketAverage,
  'reasoning': instance.reasoning,
  'factors': instance.factors.map((e) => e.toJson()).toList(),
  'generated_at': instance.generatedAt?.toIso8601String(),
};

_PriceFactorModel _$PriceFactorModelFromJson(Map<String, dynamic> json) =>
    _PriceFactorModel(
      factor: json['factor'] as String,
      impact: (json['impact'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$PriceFactorModelToJson(_PriceFactorModel instance) =>
    <String, dynamic>{
      'factor': instance.factor,
      'impact': instance.impact,
      'description': instance.description,
    };

_FraudAlertModel _$FraudAlertModelFromJson(Map<String, dynamic> json) =>
    _FraudAlertModel(
      id: json['id'] as String,
      alertType: json['alert_type'] as String,
      riskScore: (json['risk_score'] as num).toDouble(),
      description: json['description'] as String,
      entityId: json['entity_id'] as String,
      entityType: json['entity_type'] as String,
      actionTaken: json['action_taken'] as String?,
      detectedAt: json['detected_at'] == null
          ? null
          : DateTime.parse(json['detected_at'] as String),
      resolvedAt: json['resolved_at'] == null
          ? null
          : DateTime.parse(json['resolved_at'] as String),
    );

Map<String, dynamic> _$FraudAlertModelToJson(_FraudAlertModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alert_type': instance.alertType,
      'risk_score': instance.riskScore,
      'description': instance.description,
      'entity_id': instance.entityId,
      'entity_type': instance.entityType,
      'action_taken': instance.actionTaken,
      'detected_at': instance.detectedAt?.toIso8601String(),
      'resolved_at': instance.resolvedAt?.toIso8601String(),
    };

_MatchScoreModel _$MatchScoreModelFromJson(Map<String, dynamic> json) =>
    _MatchScoreModel(
      driverId: json['driver_id'] as String,
      freightPostId: json['freight_post_id'] as String,
      score: (json['score'] as num).toDouble(),
      distanceScore: (json['distance_score'] as num).toDouble(),
      ratingScore: (json['rating_score'] as num).toDouble(),
      priceScore: (json['price_score'] as num).toDouble(),
      reliabilityScore: (json['reliability_score'] as num).toDouble(),
      reasoning: json['reasoning'] as String?,
    );

Map<String, dynamic> _$MatchScoreModelToJson(_MatchScoreModel instance) =>
    <String, dynamic>{
      'driver_id': instance.driverId,
      'freight_post_id': instance.freightPostId,
      'score': instance.score,
      'distance_score': instance.distanceScore,
      'rating_score': instance.ratingScore,
      'price_score': instance.priceScore,
      'reliability_score': instance.reliabilityScore,
      'reasoning': instance.reasoning,
    };
