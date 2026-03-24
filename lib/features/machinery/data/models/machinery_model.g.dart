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
      hourlyRate: (json['hourly_rate'] as num).toDouble(),
      dailyRate: (json['daily_rate'] as num).toDouble(),
      currency: json['currency'] as String,
      imageUrl: json['image_url'] as String?,
      ownerId: json['owner_id'] as String?,
      ownerName: json['owner_name'] as String?,
      ownerRating: (json['owner_rating'] as num?)?.toDouble(),
      location: json['location'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      isAvailable: json['is_available'] as bool? ?? true,
      totalRentals: (json['total_rentals'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
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
      'hourly_rate': instance.hourlyRate,
      'daily_rate': instance.dailyRate,
      'currency': instance.currency,
      'image_url': instance.imageUrl,
      'owner_id': instance.ownerId,
      'owner_name': instance.ownerName,
      'owner_rating': instance.ownerRating,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'is_available': instance.isAvailable,
      'total_rentals': instance.totalRentals,
      'created_at': instance.createdAt?.toIso8601String(),
      'features': instance.features,
      'specifications': instance.specifications,
    };

_RentalBookingModel _$RentalBookingModelFromJson(Map<String, dynamic> json) =>
    _RentalBookingModel(
      id: json['id'] as String,
      machineryId: json['machinery_id'] as String,
      machineryName: json['machinery_name'] as String,
      renterId: json['renter_id'] as String,
      ownerId: json['owner_id'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      totalAmount: (json['total_amount'] as num).toDouble(),
      currency: json['currency'] as String,
      status: json['status'] as String,
      deliveryLocation: json['delivery_location'] as String?,
      deliveryLatitude: (json['delivery_latitude'] as num?)?.toDouble(),
      deliveryLongitude: (json['delivery_longitude'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$RentalBookingModelToJson(_RentalBookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'machinery_id': instance.machineryId,
      'machinery_name': instance.machineryName,
      'renter_id': instance.renterId,
      'owner_id': instance.ownerId,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'total_amount': instance.totalAmount,
      'currency': instance.currency,
      'status': instance.status,
      'delivery_location': instance.deliveryLocation,
      'delivery_latitude': instance.deliveryLatitude,
      'delivery_longitude': instance.deliveryLongitude,
      'notes': instance.notes,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_CreateRentalRequest _$CreateRentalRequestFromJson(Map<String, dynamic> json) =>
    _CreateRentalRequest(
      machineryId: json['machinery_id'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      deliveryLocation: json['delivery_location'] as String?,
      deliveryLatitude: (json['delivery_latitude'] as num?)?.toDouble(),
      deliveryLongitude: (json['delivery_longitude'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateRentalRequestToJson(
  _CreateRentalRequest instance,
) => <String, dynamic>{
  'machinery_id': instance.machineryId,
  'start_date': instance.startDate.toIso8601String(),
  'end_date': instance.endDate.toIso8601String(),
  'delivery_location': instance.deliveryLocation,
  'delivery_latitude': instance.deliveryLatitude,
  'delivery_longitude': instance.deliveryLongitude,
  'notes': instance.notes,
};
