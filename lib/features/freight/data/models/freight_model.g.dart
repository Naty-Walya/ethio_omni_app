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
      cargoType: json['cargo_type'] as String,
      weight: (json['weight'] as num).toDouble(),
      dimensions: json['dimensions'] as String?,
      pickupLocation: json['pickup_location'] as String,
      pickupLat: (json['pickup_lat'] as num?)?.toDouble(),
      pickupLng: (json['pickup_lng'] as num?)?.toDouble(),
      pickupDate: DateTime.parse(json['pickup_date'] as String),
      deliveryLocation: json['delivery_location'] as String,
      deliveryLat: (json['delivery_lat'] as num?)?.toDouble(),
      deliveryLng: (json['delivery_lng'] as num?)?.toDouble(),
      preferredDeliveryDate: json['preferred_delivery_date'] == null
          ? null
          : DateTime.parse(json['preferred_delivery_date'] as String),
      requiredVehicleType: json['required_vehicle_type'] as String?,
      specialRequirements: json['special_requirements'] as String?,
      budget: (json['budget'] as num?)?.toDouble(),
      auctionEnabled: json['auction_enabled'] as bool? ?? true,
      auctionStartTime: json['auction_start_time'] == null
          ? null
          : DateTime.parse(json['auction_start_time'] as String),
      auctionEndTime: json['auction_end_time'] == null
          ? null
          : DateTime.parse(json['auction_end_time'] as String),
      startingBid: (json['starting_bid'] as num?)?.toDouble(),
      status: json['status'] as String? ?? 'POSTED',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      shipperId: json['shipper_id'] as String?,
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
  'cargo_type': instance.cargoType,
  'weight': instance.weight,
  'dimensions': instance.dimensions,
  'pickup_location': instance.pickupLocation,
  'pickup_lat': instance.pickupLat,
  'pickup_lng': instance.pickupLng,
  'pickup_date': instance.pickupDate.toIso8601String(),
  'delivery_location': instance.deliveryLocation,
  'delivery_lat': instance.deliveryLat,
  'delivery_lng': instance.deliveryLng,
  'preferred_delivery_date': instance.preferredDeliveryDate?.toIso8601String(),
  'required_vehicle_type': instance.requiredVehicleType,
  'special_requirements': instance.specialRequirements,
  'budget': instance.budget,
  'auction_enabled': instance.auctionEnabled,
  'auction_start_time': instance.auctionStartTime?.toIso8601String(),
  'auction_end_time': instance.auctionEndTime?.toIso8601String(),
  'starting_bid': instance.startingBid,
  'status': instance.status,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'shipper_id': instance.shipperId,
  'shipper': instance.shipper?.toJson(),
  'bids': instance.bids?.map((e) => e.toJson()).toList(),
  'job': instance.job?.toJson(),
  'auction': instance.auction?.toJson(),
};

_ShipperInfoModel _$ShipperInfoModelFromJson(Map<String, dynamic> json) =>
    _ShipperInfoModel(
      id: json['id'] as String,
      user: json['user'] == null
          ? null
          : UserInfoModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShipperInfoModelToJson(_ShipperInfoModel instance) =>
    <String, dynamic>{'id': instance.id, 'user': instance.user?.toJson()};

_UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    _UserInfoModel(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      isFaydaVerified: json['is_fayda_verified'] as bool?,
    );

Map<String, dynamic> _$UserInfoModelToJson(_UserInfoModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'rating': instance.rating,
      'is_fayda_verified': instance.isFaydaVerified,
    };

_BidModel _$BidModelFromJson(Map<String, dynamic> json) => _BidModel(
  id: json['id'] as String,
  freightPostId: json['freight_post_id'] as String,
  driverId: json['driver_id'] as String,
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String? ?? 'ETB',
  estimatedPickupDate: json['estimated_pickup_date'] == null
      ? null
      : DateTime.parse(json['estimated_pickup_date'] as String),
  estimatedDeliveryDate: json['estimated_delivery_date'] == null
      ? null
      : DateTime.parse(json['estimated_delivery_date'] as String),
  message: json['message'] as String?,
  status: json['status'] as String? ?? 'PENDING',
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  driver: json['driver'] == null
      ? null
      : DriverInfoModel.fromJson(json['driver'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BidModelToJson(_BidModel instance) => <String, dynamic>{
  'id': instance.id,
  'freight_post_id': instance.freightPostId,
  'driver_id': instance.driverId,
  'amount': instance.amount,
  'currency': instance.currency,
  'estimated_pickup_date': instance.estimatedPickupDate?.toIso8601String(),
  'estimated_delivery_date': instance.estimatedDeliveryDate?.toIso8601String(),
  'message': instance.message,
  'status': instance.status,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'driver': instance.driver?.toJson(),
};

_DriverInfoModel _$DriverInfoModelFromJson(Map<String, dynamic> json) =>
    _DriverInfoModel(
      id: json['id'] as String,
      user: json['user'] == null
          ? null
          : UserInfoModel.fromJson(json['user'] as Map<String, dynamic>),
      vehicleType: json['vehicle_type'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DriverInfoModelToJson(_DriverInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user?.toJson(),
      'vehicle_type': instance.vehicleType,
      'rating': instance.rating,
    };

_FreightJobModel _$FreightJobModelFromJson(Map<String, dynamic> json) =>
    _FreightJobModel(
      id: json['id'] as String,
      freightPostId: json['freight_post_id'] as String,
      bidId: json['bid_id'] as String,
      driverId: json['driver_id'] as String,
      status: json['status'] as String? ?? 'ASSIGNED',
      pickupTime: json['pickup_time'] == null
          ? null
          : DateTime.parse(json['pickup_time'] as String),
      deliveryTime: json['delivery_time'] == null
          ? null
          : DateTime.parse(json['delivery_time'] as String),
      currentLat: (json['current_lat'] as num?)?.toDouble(),
      currentLng: (json['current_lng'] as num?)?.toDouble(),
      lastLocationUpdate: json['last_location_update'] == null
          ? null
          : DateTime.parse(json['last_location_update'] as String),
      pickupConfirmed: json['pickup_confirmed'] as bool? ?? false,
      deliveryConfirmed: json['delivery_confirmed'] as bool? ?? false,
      recipientName: json['recipient_name'] as String?,
      notes: json['notes'] as String?,
      paymentStatus: json['payment_status'] as String? ?? 'PENDING',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$FreightJobModelToJson(_FreightJobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'freight_post_id': instance.freightPostId,
      'bid_id': instance.bidId,
      'driver_id': instance.driverId,
      'status': instance.status,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      'delivery_time': instance.deliveryTime?.toIso8601String(),
      'current_lat': instance.currentLat,
      'current_lng': instance.currentLng,
      'last_location_update': instance.lastLocationUpdate?.toIso8601String(),
      'pickup_confirmed': instance.pickupConfirmed,
      'delivery_confirmed': instance.deliveryConfirmed,
      'recipient_name': instance.recipientName,
      'notes': instance.notes,
      'payment_status': instance.paymentStatus,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_AuctionModel _$AuctionModelFromJson(Map<String, dynamic> json) =>
    _AuctionModel(
      id: json['id'] as String,
      freightPostId: json['freight_post_id'] as String,
      startTime: DateTime.parse(json['start_time'] as String),
      endTime: DateTime.parse(json['end_time'] as String),
      startingBid: (json['starting_bid'] as num).toDouble(),
      currentBid: (json['current_bid'] as num?)?.toDouble(),
      bidCount: (json['bid_count'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? 'ACTIVE',
      winnerId: json['winner_id'] as String?,
      winningBid: (json['winning_bid'] as num?)?.toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      freightPost: json['freight_post'] == null
          ? null
          : FreightPostModel.fromJson(
              json['freight_post'] as Map<String, dynamic>,
            ),
      bids: (json['bids'] as List<dynamic>?)
          ?.map((e) => AuctionBidModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AuctionModelToJson(_AuctionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'freight_post_id': instance.freightPostId,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime.toIso8601String(),
      'starting_bid': instance.startingBid,
      'current_bid': instance.currentBid,
      'bid_count': instance.bidCount,
      'status': instance.status,
      'winner_id': instance.winnerId,
      'winning_bid': instance.winningBid,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'freight_post': instance.freightPost?.toJson(),
      'bids': instance.bids?.map((e) => e.toJson()).toList(),
    };

_AuctionBidModel _$AuctionBidModelFromJson(Map<String, dynamic> json) =>
    _AuctionBidModel(
      id: json['id'] as String,
      auctionId: json['auction_id'] as String,
      driverId: json['driver_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      driver: json['driver'] == null
          ? null
          : DriverInfoModel.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuctionBidModelToJson(_AuctionBidModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auction_id': instance.auctionId,
      'driver_id': instance.driverId,
      'amount': instance.amount,
      'created_at': instance.createdAt?.toIso8601String(),
      'driver': instance.driver?.toJson(),
    };
