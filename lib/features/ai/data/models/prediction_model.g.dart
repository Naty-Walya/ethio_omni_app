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
  demandScore: (json['demandScore'] as num).toDouble(),
  predictedLoads: (json['predictedLoads'] as num).toInt(),
  averagePrice: (json['averagePrice'] as num).toDouble(),
  timeRange: json['timeRange'] as String,
  predictedAt: json['predictedAt'] == null
      ? null
      : DateTime.parse(json['predictedAt'] as String),
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
  'demandScore': instance.demandScore,
  'predictedLoads': instance.predictedLoads,
  'averagePrice': instance.averagePrice,
  'timeRange': instance.timeRange,
  'predictedAt': instance.predictedAt?.toIso8601String(),
  'segments': instance.segments,
};

_RouteSegmentModel _$RouteSegmentModelFromJson(Map<String, dynamic> json) =>
    _RouteSegmentModel(
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      demandFactor: (json['demandFactor'] as num).toDouble(),
      priceEstimate: (json['priceEstimate'] as num).toDouble(),
      confidence: (json['confidence'] as num).toInt(),
    );

Map<String, dynamic> _$RouteSegmentModelToJson(_RouteSegmentModel instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'demandFactor': instance.demandFactor,
      'priceEstimate': instance.priceEstimate,
      'confidence': instance.confidence,
    };

_PriceRecommendationModel _$PriceRecommendationModelFromJson(
  Map<String, dynamic> json,
) => _PriceRecommendationModel(
  id: json['id'] as String,
  recommendedPrice: (json['recommendedPrice'] as num).toDouble(),
  minPrice: (json['minPrice'] as num).toDouble(),
  maxPrice: (json['maxPrice'] as num).toDouble(),
  marketAverage: (json['marketAverage'] as num).toDouble(),
  reasoning: json['reasoning'] as String,
  factors:
      (json['factors'] as List<dynamic>?)
          ?.map((e) => PriceFactorModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  generatedAt: json['generatedAt'] == null
      ? null
      : DateTime.parse(json['generatedAt'] as String),
);

Map<String, dynamic> _$PriceRecommendationModelToJson(
  _PriceRecommendationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'recommendedPrice': instance.recommendedPrice,
  'minPrice': instance.minPrice,
  'maxPrice': instance.maxPrice,
  'marketAverage': instance.marketAverage,
  'reasoning': instance.reasoning,
  'factors': instance.factors,
  'generatedAt': instance.generatedAt?.toIso8601String(),
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
      alertType: json['alertType'] as String,
      riskScore: (json['riskScore'] as num).toDouble(),
      description: json['description'] as String,
      entityId: json['entityId'] as String,
      entityType: json['entityType'] as String,
      actionTaken: json['actionTaken'] as String?,
      detectedAt: json['detectedAt'] == null
          ? null
          : DateTime.parse(json['detectedAt'] as String),
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
    );

Map<String, dynamic> _$FraudAlertModelToJson(_FraudAlertModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alertType': instance.alertType,
      'riskScore': instance.riskScore,
      'description': instance.description,
      'entityId': instance.entityId,
      'entityType': instance.entityType,
      'actionTaken': instance.actionTaken,
      'detectedAt': instance.detectedAt?.toIso8601String(),
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
    };

_MatchScoreModel _$MatchScoreModelFromJson(Map<String, dynamic> json) =>
    _MatchScoreModel(
      driverId: json['driverId'] as String,
      freightPostId: json['freightPostId'] as String,
      score: (json['score'] as num).toDouble(),
      distanceScore: (json['distanceScore'] as num).toDouble(),
      ratingScore: (json['ratingScore'] as num).toDouble(),
      priceScore: (json['priceScore'] as num).toDouble(),
      reliabilityScore: (json['reliabilityScore'] as num).toDouble(),
      reasoning: json['reasoning'] as String?,
    );

Map<String, dynamic> _$MatchScoreModelToJson(_MatchScoreModel instance) =>
    <String, dynamic>{
      'driverId': instance.driverId,
      'freightPostId': instance.freightPostId,
      'score': instance.score,
      'distanceScore': instance.distanceScore,
      'ratingScore': instance.ratingScore,
      'priceScore': instance.priceScore,
      'reliabilityScore': instance.reliabilityScore,
      'reasoning': instance.reasoning,
    };
