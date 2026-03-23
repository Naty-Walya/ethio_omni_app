// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machinery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MachineryModel _$MachineryModelFromJson(Map<String, dynamic> json) =>
    _MachineryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      hourlyRate: (json['hourlyRate'] as num).toDouble(),
      dailyRate: (json['dailyRate'] as num).toDouble(),
      currency: json['currency'] as String,
      imageUrl: json['imageUrl'] as String?,
      ownerId: json['ownerId'] as String?,
      ownerName: json['ownerName'] as String?,
      ownerRating: (json['ownerRating'] as num?)?.toDouble(),
      location: json['location'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      isAvailable: json['isAvailable'] as bool? ?? true,
      totalRentals: (json['totalRentals'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      specifications: json['specifications'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$MachineryModelToJson(_MachineryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'hourlyRate': instance.hourlyRate,
      'dailyRate': instance.dailyRate,
      'currency': instance.currency,
      'imageUrl': instance.imageUrl,
      'ownerId': instance.ownerId,
      'ownerName': instance.ownerName,
      'ownerRating': instance.ownerRating,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isAvailable': instance.isAvailable,
      'totalRentals': instance.totalRentals,
      'createdAt': instance.createdAt?.toIso8601String(),
      'features': instance.features,
      'specifications': instance.specifications,
    };

_RentalBookingModel _$RentalBookingModelFromJson(Map<String, dynamic> json) =>
    _RentalBookingModel(
      id: json['id'] as String,
      machineryId: json['machineryId'] as String,
      machineryName: json['machineryName'] as String,
      renterId: json['renterId'] as String,
      ownerId: json['ownerId'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      currency: json['currency'] as String,
      status: json['status'] as String,
      deliveryLocation: json['deliveryLocation'] as String?,
      deliveryLatitude: (json['deliveryLatitude'] as num?)?.toDouble(),
      deliveryLongitude: (json['deliveryLongitude'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$RentalBookingModelToJson(_RentalBookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machineryId': instance.machineryId,
      'machineryName': instance.machineryName,
      'renterId': instance.renterId,
      'ownerId': instance.ownerId,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'currency': instance.currency,
      'status': instance.status,
      'deliveryLocation': instance.deliveryLocation,
      'deliveryLatitude': instance.deliveryLatitude,
      'deliveryLongitude': instance.deliveryLongitude,
      'notes': instance.notes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_CreateRentalRequest _$CreateRentalRequestFromJson(Map<String, dynamic> json) =>
    _CreateRentalRequest(
      machineryId: json['machineryId'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      deliveryLocation: json['deliveryLocation'] as String?,
      deliveryLatitude: (json['deliveryLatitude'] as num?)?.toDouble(),
      deliveryLongitude: (json['deliveryLongitude'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateRentalRequestToJson(
  _CreateRentalRequest instance,
) => <String, dynamic>{
  'machineryId': instance.machineryId,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate.toIso8601String(),
  'deliveryLocation': instance.deliveryLocation,
  'deliveryLatitude': instance.deliveryLatitude,
  'deliveryLongitude': instance.deliveryLongitude,
  'notes': instance.notes,
};
