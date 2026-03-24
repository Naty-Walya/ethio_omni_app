// AI Models for demand prediction, fraud detection, and recommendations
// Manual implementation to avoid Freezed generation issues

import 'package:flutter/material.dart';

class DemandPredictionModel {
  final int demandIndex; // 0-100
  final double confidence;
  final Map<String, dynamic> factors;
  final String recommendation;

  DemandPredictionModel({
    required this.demandIndex,
    required this.confidence,
    required this.factors,
    required this.recommendation,
  });

  factory DemandPredictionModel.fromJson(Map<String, dynamic> json) {
    return DemandPredictionModel(
      demandIndex: json['demandIndex'] as int,
      confidence: (json['confidence'] as num).toDouble(),
      factors: json['factors'] as Map<String, dynamic>,
      recommendation: json['recommendation'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'demandIndex': demandIndex,
      'confidence': confidence,
      'factors': factors,
      'recommendation': recommendation,
    };
  }

  // Helper getters
  bool get isHighDemand => demandIndex >= 60;
  bool get isLowDemand => demandIndex < 40;

  Color get demandColor {
    if (demandIndex >= 80) return Colors.red;
    if (demandIndex >= 60) return Colors.orange;
    if (demandIndex >= 40) return Colors.yellow;
    return Colors.green;
  }

  String get demandLabel {
    if (demandIndex >= 80) return 'Very High';
    if (demandIndex >= 60) return 'High';
    if (demandIndex >= 40) return 'Moderate';
    return 'Low';
  }
}

class PriceRecommendationModel {
  final double minPrice;
  final double optimalPrice;
  final double maxPrice;
  final double marketAverage;
  final double confidence;
  final List<String> factors;

  PriceRecommendationModel({
    required this.minPrice,
    required this.optimalPrice,
    required this.maxPrice,
    required this.marketAverage,
    required this.confidence,
    required this.factors,
  });

  factory PriceRecommendationModel.fromJson(Map<String, dynamic> json) {
    return PriceRecommendationModel(
      minPrice: (json['minPrice'] as num).toDouble(),
      optimalPrice: (json['optimalPrice'] as num).toDouble(),
      maxPrice: (json['maxPrice'] as num).toDouble(),
      marketAverage: (json['marketAverage'] as num).toDouble(),
      confidence: (json['confidence'] as num).toDouble(),
      factors: (json['factors'] as List<dynamic>).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'minPrice': minPrice,
      'optimalPrice': optimalPrice,
      'maxPrice': maxPrice,
      'marketAverage': marketAverage,
      'confidence': confidence,
      'factors': factors,
    };
  }
}

class FraudCheckResult {
  final bool isFraudulent;
  final double riskScore;
  final List<String> alerts;
  final String severity;

  FraudCheckResult({
    required this.isFraudulent,
    required this.riskScore,
    required this.alerts,
    required this.severity,
  });

  factory FraudCheckResult.fromJson(Map<String, dynamic> json) {
    return FraudCheckResult(
      isFraudulent: json['isFraudulent'] as bool,
      riskScore: (json['riskScore'] as num).toDouble(),
      alerts: (json['alerts'] as List<dynamic>).cast<String>(),
      severity: json['severity'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isFraudulent': isFraudulent,
      'riskScore': riskScore,
      'alerts': alerts,
      'severity': severity,
    };
  }

  Color get severityColor {
    switch (severity) {
      case 'CRITICAL':
        return Colors.red;
      case 'HIGH':
        return Colors.orange;
      case 'MEDIUM':
        return Colors.yellow;
      default:
        return Colors.green;
    }
  }

  bool get shouldBlock => isFraudulent || severity == 'CRITICAL';
}

class FraudAlertModel {
  final String id;
  final String alertType;
  final String severity;
  final double riskScore;
  final String relatedId;
  final String relatedType;
  final List<String> evidence;
  final String status;
  final DateTime createdAt;
  final UserSummary? user;

  FraudAlertModel({
    required this.id,
    required this.alertType,
    required this.severity,
    required this.riskScore,
    required this.relatedId,
    required this.relatedType,
    required this.evidence,
    required this.status,
    required this.createdAt,
    this.user,
  });

  factory FraudAlertModel.fromJson(Map<String, dynamic> json) {
    return FraudAlertModel(
      id: json['id'] as String,
      alertType: json['alertType'] as String,
      severity: json['severity'] as String,
      riskScore: (json['riskScore'] as num).toDouble(),
      relatedId: json['relatedId'] as String,
      relatedType: json['relatedType'] as String,
      evidence: (json['evidence'] as List<dynamic>).cast<String>(),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      user: json['user'] != null ? UserSummary.fromJson(json['user'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'alertType': alertType,
      'severity': severity,
      'riskScore': riskScore,
      'relatedId': relatedId,
      'relatedType': relatedType,
      'evidence': evidence,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
      'user': user?.toJson(),
    };
  }

  String get alertTypeDisplay {
    switch (alertType) {
      case 'TRANSACTION':
        return 'Suspicious Transaction';
      case 'BID_MANIPULATION':
        return 'Bid Manipulation';
      case 'IDENTITY_THEFT':
        return 'Identity Theft';
      case 'ACCOUNT_TAKEOVER':
        return 'Account Takeover';
      case 'PAYMENT_FRAUD':
        return 'Payment Fraud';
      default:
        return alertType;
    }
  }

  Color get severityColor {
    switch (severity) {
      case 'CRITICAL':
        return Colors.red;
      case 'HIGH':
        return Colors.deepOrange;
      case 'MEDIUM':
        return Colors.orange;
      default:
        return Colors.yellow;
    }
  }
}

class MarketAnalyticsModel {
  final String id;
  final String period;
  final String periodType;
  final String? region;
  final String? route;
  final double? avgPrice;
  final double? demandIndex;
  final double? supplyIndex;
  final int totalPosts;
  final int totalBids;
  final int completedJobs;
  final DateTime createdAt;

  MarketAnalyticsModel({
    required this.id,
    required this.period,
    required this.periodType,
    this.region,
    this.route,
    this.avgPrice,
    this.demandIndex,
    this.supplyIndex,
    required this.totalPosts,
    required this.totalBids,
    required this.completedJobs,
    required this.createdAt,
  });

  factory MarketAnalyticsModel.fromJson(Map<String, dynamic> json) {
    return MarketAnalyticsModel(
      id: json['id'] as String,
      period: json['period'] as String,
      periodType: json['periodType'] as String,
      region: json['region'] as String?,
      route: json['route'] as String?,
      avgPrice: (json['avgPrice'] as num?)?.toDouble(),
      demandIndex: (json['demandIndex'] as num?)?.toDouble(),
      supplyIndex: (json['supplyIndex'] as num?)?.toDouble(),
      totalPosts: json['totalPosts'] as int? ?? 0,
      totalBids: json['totalBids'] as int? ?? 0,
      completedJobs: json['completedJobs'] as int? ?? 0,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'period': period,
      'periodType': periodType,
      'region': region,
      'route': route,
      'avgPrice': avgPrice,
      'demandIndex': demandIndex,
      'supplyIndex': supplyIndex,
      'totalPosts': totalPosts,
      'totalBids': totalBids,
      'completedJobs': completedJobs,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  double get marketActivity => demandIndex != null && supplyIndex != null
      ? (demandIndex! + supplyIndex!) / 2
      : 0;
}

class RouteOptimizationModel {
  final List<RouteSegment> segments;
  final double totalDistance;
  final double estimatedDuration;
  final double fuelCost;
  final double tollCost;
  final String recommendation;

  RouteOptimizationModel({
    required this.segments,
    required this.totalDistance,
    required this.estimatedDuration,
    required this.fuelCost,
    required this.tollCost,
    required this.recommendation,
  });

  factory RouteOptimizationModel.fromJson(Map<String, dynamic> json) {
    return RouteOptimizationModel(
      segments: (json['segments'] as List<dynamic>)
          .map((s) => RouteSegment.fromJson(s as Map<String, dynamic>))
          .toList(),
      totalDistance: (json['totalDistance'] as num).toDouble(),
      estimatedDuration: (json['estimatedDuration'] as num).toDouble(),
      fuelCost: (json['fuelCost'] as num).toDouble(),
      tollCost: (json['tollCost'] as num).toDouble(),
      recommendation: json['recommendation'] as String,
    );
  }

  double get totalCost => fuelCost + tollCost;
}

class RouteSegment {
  final String from;
  final String to;
  final double distance;
  final double duration;
  final String roadType;

  RouteSegment({
    required this.from,
    required this.to,
    required this.distance,
    required this.duration,
    required this.roadType,
  });

  factory RouteSegment.fromJson(Map<String, dynamic> json) {
    return RouteSegment(
      from: json['from'] as String,
      to: json['to'] as String,
      distance: (json['distance'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      roadType: json['roadType'] as String,
    );
  }
}

class DriverMatchScore {
  final String driverId;
  final double score;
  final String reason;
  final Map<String, dynamic> factors;

  DriverMatchScore({
    required this.driverId,
    required this.score,
    required this.reason,
    required this.factors,
  });

  factory DriverMatchScore.fromJson(Map<String, dynamic> json) {
    return DriverMatchScore(
      driverId: json['driverId'] as String,
      score: (json['score'] as num).toDouble(),
      reason: json['reason'] as String,
      factors: json['factors'] as Map<String, dynamic>,
    );
  }
}

class AIFeedbackModel {
  final String id;
  final String predictionId;
  final String feedbackType;
  final int? rating;
  final String? comment;
  final DateTime createdAt;

  AIFeedbackModel({
    required this.id,
    required this.predictionId,
    required this.feedbackType,
    this.rating,
    this.comment,
    required this.createdAt,
  });

  factory AIFeedbackModel.fromJson(Map<String, dynamic> json) {
    return AIFeedbackModel(
      id: json['id'] as String,
      predictionId: json['predictionId'] as String,
      feedbackType: json['feedbackType'] as String,
      rating: json['rating'] as int?,
      comment: json['comment'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'predictionId': predictionId,
      'feedbackType': feedbackType,
      'rating': rating,
      'comment': comment,
    };
  }
}

class UserSummary {
  final String? firstName;
  final String? lastName;
  final String? phone;

  UserSummary({
    this.firstName,
    this.lastName,
    this.phone,
  });

  String get displayName {
    final name = [firstName, lastName].where((e) => e != null && e.isNotEmpty).join(' ').trim();
    return name.isNotEmpty ? name : phone ?? 'Unknown';
  }

  factory UserSummary.fromJson(Map<String, dynamic> json) {
    return UserSummary(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
    };
  }
}
