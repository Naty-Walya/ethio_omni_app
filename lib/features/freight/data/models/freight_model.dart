import 'package:freezed_annotation/freezed_annotation.dart';

part 'freight_model.freezed.dart';
part 'freight_model.g.dart';

@freezed
class FreightPostModel with _$FreightPostModel {
  const factory FreightPostModel({
    required String id,
    required String title,
    String? description,
    required String cargoType,
    required double weight,
    String? dimensions,
    required String pickupLocation,
    double? pickupLat,
    double? pickupLng,
    required DateTime pickupDate,
    required String deliveryLocation,
    double? deliveryLat,
    double? deliveryLng,
    DateTime? preferredDeliveryDate,
    String? requiredVehicleType,
    String? specialRequirements,
    double? budget,
    @Default(true) bool auctionEnabled,
    DateTime? auctionStartTime,
    DateTime? auctionEndTime,
    double? startingBid,
    @Default('POSTED') String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? shipperId,
    ShipperInfoModel? shipper,
    List<BidModel>? bids,
    FreightJobModel? job,
    AuctionModel? auction,
  }) = _FreightPostModel;

  factory FreightPostModel.fromJson(Map<String, dynamic> json) =>
      _$FreightPostModelFromJson(json);
}

@freezed
class ShipperInfoModel with _$ShipperInfoModel {
  const factory ShipperInfoModel({
    required String id,
    UserInfoModel? user,
  }) = _ShipperInfoModel;

  factory ShipperInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ShipperInfoModelFromJson(json);
}

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    String? firstName,
    String? lastName,
    double? rating,
    bool? isFaydaVerified,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}

@freezed
class BidModel with _$BidModel {
  const factory BidModel({
    required String id,
    required String freightPostId,
    required String driverId,
    required double amount,
    @Default('ETB') String currency,
    DateTime? estimatedPickupDate,
    DateTime? estimatedDeliveryDate,
    String? message,
    @Default('PENDING') String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    DriverInfoModel? driver,
  }) = _BidModel;

  factory BidModel.fromJson(Map<String, dynamic> json) =>
      _$BidModelFromJson(json);
}

@freezed
class DriverInfoModel with _$DriverInfoModel {
  const factory DriverInfoModel({
    required String id,
    UserInfoModel? user,
    String? vehicleType,
    double? rating,
  }) = _DriverInfoModel;

  factory DriverInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DriverInfoModelFromJson(json);
}

@freezed
class FreightJobModel with _$FreightJobModel {
  const factory FreightJobModel({
    required String id,
    required String freightPostId,
    required String bidId,
    required String driverId,
    @Default('ASSIGNED') String status,
    DateTime? pickupTime,
    DateTime? deliveryTime,
    double? currentLat,
    double? currentLng,
    DateTime? lastLocationUpdate,
    @Default(false) bool pickupConfirmed,
    @Default(false) bool deliveryConfirmed,
    String? recipientName,
    String? notes,
    @Default('PENDING') String paymentStatus,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _FreightJobModel;

  factory FreightJobModel.fromJson(Map<String, dynamic> json) =>
      _$FreightJobModelFromJson(json);
}

@freezed
class AuctionModel with _$AuctionModel {
  const factory AuctionModel({
    required String id,
    required String freightPostId,
    required DateTime startTime,
    required DateTime endTime,
    required double startingBid,
    double? currentBid,
    @Default(0) int bidCount,
    @Default('ACTIVE') String status,
    String? winnerId,
    double? winningBid,
    DateTime? createdAt,
    DateTime? updatedAt,
    FreightPostModel? freightPost,
    List<AuctionBidModel>? bids,
  }) = _AuctionModel;

  factory AuctionModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionModelFromJson(json);
}

@freezed
class AuctionBidModel with _$AuctionBidModel {
  const factory AuctionBidModel({
    required String id,
    required String auctionId,
    required String driverId,
    required double amount,
    DateTime? createdAt,
    DriverInfoModel? driver,
  }) = _AuctionBidModel;

  factory AuctionBidModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionBidModelFromJson(json);
}

// Create Freight Post Request
class CreateFreightPostRequest {
  final String title;
  final String? description;
  final String cargoType;
  final double weight;
  final String? dimensions;
  final String pickupLocation;
  final double? pickupLat;
  final double? pickupLng;
  final DateTime pickupDate;
  final String deliveryLocation;
  final double? deliveryLat;
  final double? deliveryLng;
  final DateTime? preferredDeliveryDate;
  final String? requiredVehicleType;
  final String? specialRequirements;
  final double? budget;
  final bool auctionEnabled;
  final int? auctionDuration;
  final double? startingBid;

  CreateFreightPostRequest({
    required this.title,
    this.description,
    required this.cargoType,
    required this.weight,
    this.dimensions,
    required this.pickupLocation,
    this.pickupLat,
    this.pickupLng,
    required this.pickupDate,
    required this.deliveryLocation,
    this.deliveryLat,
    this.deliveryLng,
    this.preferredDeliveryDate,
    this.requiredVehicleType,
    this.specialRequirements,
    this.budget,
    this.auctionEnabled = true,
    this.auctionDuration,
    this.startingBid,
  });

  Map<String, dynamic> toJson() {
    return {
    'title': title,
    'description': description,
    'cargoType': cargoType,
    'weight': weight,
    'dimensions': dimensions,
    'pickupLocation': pickupLocation,
    'pickupLat': pickupLat,
    'pickupLng': pickupLng,
    'pickupDate': pickupDate.toIso8601String(),
    'deliveryLocation': deliveryLocation,
    'deliveryLat': deliveryLat,
    'deliveryLng': deliveryLng,
    'preferredDeliveryDate': preferredDeliveryDate?.toIso8601String(),
    'requiredVehicleType': requiredVehicleType,
    'specialRequirements': specialRequirements,
    'budget': budget,
    'auctionEnabled': auctionEnabled,
    'auctionDuration': auctionDuration,
    'startingBid': startingBid,
    };
  }
}

// Create Bid Request
class CreateBidRequest {
  final double amount;
  final DateTime? estimatedPickupDate;
  final DateTime? estimatedDeliveryDate;
  final String? message;

  CreateBidRequest({
    required this.amount,
    this.estimatedPickupDate,
    this.estimatedDeliveryDate,
    this.message,
  });

  Map<String, dynamic> toJson() {
    return {
    'amount': amount,
    'estimatedPickupDate': estimatedPickupDate?.toIso8601String(),
    'estimatedDeliveryDate': estimatedDeliveryDate?.toIso8601String(),
    'message': message,
    };
  }

}
