// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FreightPostModel _$FreightPostModelFromJson(Map<String, dynamic> json) =>
    _FreightPostModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      cargoType: json['cargoType'] as String,
      weight: (json['weight'] as num).toDouble(),
      dimensions: json['dimensions'] as String?,
      pickupLocation: json['pickupLocation'] as String,
      pickupLat: (json['pickupLat'] as num?)?.toDouble(),
      pickupLng: (json['pickupLng'] as num?)?.toDouble(),
      pickupDate: DateTime.parse(json['pickupDate'] as String),
      deliveryLocation: json['deliveryLocation'] as String,
      deliveryLat: (json['deliveryLat'] as num?)?.toDouble(),
      deliveryLng: (json['deliveryLng'] as num?)?.toDouble(),
      preferredDeliveryDate: json['preferredDeliveryDate'] == null
          ? null
          : DateTime.parse(json['preferredDeliveryDate'] as String),
      requiredVehicleType: json['requiredVehicleType'] as String?,
      specialRequirements: json['specialRequirements'] as String?,
      budget: (json['budget'] as num?)?.toDouble(),
      auctionEnabled: json['auctionEnabled'] as bool? ?? true,
      auctionStartTime: json['auctionStartTime'] == null
          ? null
          : DateTime.parse(json['auctionStartTime'] as String),
      auctionEndTime: json['auctionEndTime'] == null
          ? null
          : DateTime.parse(json['auctionEndTime'] as String),
      startingBid: (json['startingBid'] as num?)?.toDouble(),
      status: json['status'] as String? ?? 'POSTED',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      shipperId: json['shipperId'] as String?,
      shipper: json['shipper'] == null
          ? null
          : ShipperInfoModel.fromJson(json['shipper'] as Map<String, dynamic>),
      bids: (json['bids'] as List<dynamic>?)
          ?.map((e) => BidModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      job: json['job'] == null
          ? null
          : FreightJobModel.fromJson(json['job'] as Map<String, dynamic>),
      auction: json['auction'] == null
          ? null
          : AuctionModel.fromJson(json['auction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FreightPostModelToJson(
  _FreightPostModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'cargoType': instance.cargoType,
  'weight': instance.weight,
  'dimensions': instance.dimensions,
  'pickupLocation': instance.pickupLocation,
  'pickupLat': instance.pickupLat,
  'pickupLng': instance.pickupLng,
  'pickupDate': instance.pickupDate.toIso8601String(),
  'deliveryLocation': instance.deliveryLocation,
  'deliveryLat': instance.deliveryLat,
  'deliveryLng': instance.deliveryLng,
  'preferredDeliveryDate': instance.preferredDeliveryDate?.toIso8601String(),
  'requiredVehicleType': instance.requiredVehicleType,
  'specialRequirements': instance.specialRequirements,
  'budget': instance.budget,
  'auctionEnabled': instance.auctionEnabled,
  'auctionStartTime': instance.auctionStartTime?.toIso8601String(),
  'auctionEndTime': instance.auctionEndTime?.toIso8601String(),
  'startingBid': instance.startingBid,
  'status': instance.status,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'shipperId': instance.shipperId,
  'shipper': instance.shipper,
  'bids': instance.bids,
  'job': instance.job,
  'auction': instance.auction,
};

_ShipperInfoModel _$ShipperInfoModelFromJson(Map<String, dynamic> json) =>
    _ShipperInfoModel(
      id: json['id'] as String,
      user: json['user'] == null
          ? null
          : UserInfoModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShipperInfoModelToJson(_ShipperInfoModel instance) =>
    <String, dynamic>{'id': instance.id, 'user': instance.user};

_UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    _UserInfoModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      isFaydaVerified: json['isFaydaVerified'] as bool?,
    );

Map<String, dynamic> _$UserInfoModelToJson(_UserInfoModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'rating': instance.rating,
      'isFaydaVerified': instance.isFaydaVerified,
    };

_BidModel _$BidModelFromJson(Map<String, dynamic> json) => _BidModel(
  id: json['id'] as String,
  freightPostId: json['freightPostId'] as String,
  driverId: json['driverId'] as String,
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String? ?? 'ETB',
  estimatedPickupDate: json['estimatedPickupDate'] == null
      ? null
      : DateTime.parse(json['estimatedPickupDate'] as String),
  estimatedDeliveryDate: json['estimatedDeliveryDate'] == null
      ? null
      : DateTime.parse(json['estimatedDeliveryDate'] as String),
  message: json['message'] as String?,
  status: json['status'] as String? ?? 'PENDING',
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  driver: json['driver'] == null
      ? null
      : DriverInfoModel.fromJson(json['driver'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BidModelToJson(_BidModel instance) => <String, dynamic>{
  'id': instance.id,
  'freightPostId': instance.freightPostId,
  'driverId': instance.driverId,
  'amount': instance.amount,
  'currency': instance.currency,
  'estimatedPickupDate': instance.estimatedPickupDate?.toIso8601String(),
  'estimatedDeliveryDate': instance.estimatedDeliveryDate?.toIso8601String(),
  'message': instance.message,
  'status': instance.status,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'driver': instance.driver,
};

_DriverInfoModel _$DriverInfoModelFromJson(Map<String, dynamic> json) =>
    _DriverInfoModel(
      id: json['id'] as String,
      user: json['user'] == null
          ? null
          : UserInfoModel.fromJson(json['user'] as Map<String, dynamic>),
      vehicleType: json['vehicleType'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DriverInfoModelToJson(_DriverInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'vehicleType': instance.vehicleType,
      'rating': instance.rating,
    };

_FreightJobModel _$FreightJobModelFromJson(Map<String, dynamic> json) =>
    _FreightJobModel(
      id: json['id'] as String,
      freightPostId: json['freightPostId'] as String,
      bidId: json['bidId'] as String,
      driverId: json['driverId'] as String,
      status: json['status'] as String? ?? 'ASSIGNED',
      pickupTime: json['pickupTime'] == null
          ? null
          : DateTime.parse(json['pickupTime'] as String),
      deliveryTime: json['deliveryTime'] == null
          ? null
          : DateTime.parse(json['deliveryTime'] as String),
      currentLat: (json['currentLat'] as num?)?.toDouble(),
      currentLng: (json['currentLng'] as num?)?.toDouble(),
      lastLocationUpdate: json['lastLocationUpdate'] == null
          ? null
          : DateTime.parse(json['lastLocationUpdate'] as String),
      pickupConfirmed: json['pickupConfirmed'] as bool? ?? false,
      deliveryConfirmed: json['deliveryConfirmed'] as bool? ?? false,
      recipientName: json['recipientName'] as String?,
      notes: json['notes'] as String?,
      paymentStatus: json['paymentStatus'] as String? ?? 'PENDING',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$FreightJobModelToJson(_FreightJobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'freightPostId': instance.freightPostId,
      'bidId': instance.bidId,
      'driverId': instance.driverId,
      'status': instance.status,
      'pickupTime': instance.pickupTime?.toIso8601String(),
      'deliveryTime': instance.deliveryTime?.toIso8601String(),
      'currentLat': instance.currentLat,
      'currentLng': instance.currentLng,
      'lastLocationUpdate': instance.lastLocationUpdate?.toIso8601String(),
      'pickupConfirmed': instance.pickupConfirmed,
      'deliveryConfirmed': instance.deliveryConfirmed,
      'recipientName': instance.recipientName,
      'notes': instance.notes,
      'paymentStatus': instance.paymentStatus,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_AuctionModel _$AuctionModelFromJson(Map<String, dynamic> json) =>
    _AuctionModel(
      id: json['id'] as String,
      freightPostId: json['freightPostId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      startingBid: (json['startingBid'] as num).toDouble(),
      currentBid: (json['currentBid'] as num?)?.toDouble(),
      bidCount: (json['bidCount'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? 'ACTIVE',
      winnerId: json['winnerId'] as String?,
      winningBid: (json['winningBid'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      freightPost: json['freightPost'] == null
          ? null
          : FreightPostModel.fromJson(
              json['freightPost'] as Map<String, dynamic>,
            ),
      bids: (json['bids'] as List<dynamic>?)
          ?.map((e) => AuctionBidModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuctionModelToJson(_AuctionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'freightPostId': instance.freightPostId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'startingBid': instance.startingBid,
      'currentBid': instance.currentBid,
      'bidCount': instance.bidCount,
      'status': instance.status,
      'winnerId': instance.winnerId,
      'winningBid': instance.winningBid,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'freightPost': instance.freightPost,
      'bids': instance.bids,
    };

_AuctionBidModel _$AuctionBidModelFromJson(Map<String, dynamic> json) =>
    _AuctionBidModel(
      id: json['id'] as String,
      auctionId: json['auctionId'] as String,
      driverId: json['driverId'] as String,
      amount: (json['amount'] as num).toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      driver: json['driver'] == null
          ? null
          : DriverInfoModel.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuctionBidModelToJson(_AuctionBidModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auctionId': instance.auctionId,
      'driverId': instance.driverId,
      'amount': instance.amount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'driver': instance.driver,
    };
