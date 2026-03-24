// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  email: json['email'] as String?,
  avatar: json['avatar'] as String?,
  isPhoneVerified: json['is_phone_verified'] as bool? ?? false,
  isFaydaVerified: json['is_fayda_verified'] as bool? ?? false,
  faydaId: json['fayda_id'] as String?,
  shipperProfile: json['shipper_profile'] == null
      ? null
      : ShipperProfileModel.fromJson(
          json['shipper_profile'] as Map<String, dynamic>,
        ),
  driverProfile: json['driver_profile'] == null
      ? null
      : DriverProfileModel.fromJson(
          json['driver_profile'] as Map<String, dynamic>,
        ),
  fleetOwnerProfile: json['fleet_owner_profile'] == null
      ? null
      : FleetOwnerProfileModel.fromJson(
          json['fleet_owner_profile'] as Map<String, dynamic>,
        ),
  wallet: json['wallet'] == null
      ? null
      : WalletModel.fromJson(json['wallet'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'role': instance.role,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
      'is_phone_verified': instance.isPhoneVerified,
      'is_fayda_verified': instance.isFaydaVerified,
      'fayda_id': instance.faydaId,
      'shipper_profile': instance.shipperProfile?.toJson(),
      'driver_profile': instance.driverProfile?.toJson(),
      'fleet_owner_profile': instance.fleetOwnerProfile?.toJson(),
      'wallet': instance.wallet?.toJson(),
    };

_ShipperProfileModel _$ShipperProfileModelFromJson(Map<String, dynamic> json) =>
    _ShipperProfileModel(
      id: json['id'] as String?,
      companyName: json['company_name'] as String?,
      tinNumber: json['tin_number'] as String?,
      businessType: json['business_type'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      totalShipments: (json['total_shipments'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$ShipperProfileModelToJson(
  _ShipperProfileModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'company_name': instance.companyName,
  'tin_number': instance.tinNumber,
  'business_type': instance.businessType,
  'address': instance.address,
  'city': instance.city,
  'region': instance.region,
  'total_shipments': instance.totalShipments,
  'rating': instance.rating,
};

_DriverProfileModel _$DriverProfileModelFromJson(Map<String, dynamic> json) =>
    _DriverProfileModel(
      id: json['id'] as String?,
      licenseNumber: json['license_number'] as String?,
      licenseExpiry: json['license_expiry'] == null
          ? null
          : DateTime.parse(json['license_expiry'] as String),
      licenseType: json['license_type'] as String?,
      vehicleType: json['vehicle_type'] as String?,
      vehicleCapacity: (json['vehicle_capacity'] as num?)?.toDouble(),
      vehiclePlate: json['vehicle_plate'] as String?,
      totalDeliveries: (json['total_deliveries'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      onTimeRate: (json['on_time_rate'] as num?)?.toDouble() ?? 0.0,
      isAvailable: json['is_available'] as bool? ?? true,
      currentLocation: json['current_location'] as String?,
    );

Map<String, dynamic> _$DriverProfileModelToJson(_DriverProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'license_number': instance.licenseNumber,
      'license_expiry': instance.licenseExpiry?.toIso8601String(),
      'license_type': instance.licenseType,
      'vehicle_type': instance.vehicleType,
      'vehicle_capacity': instance.vehicleCapacity,
      'vehicle_plate': instance.vehiclePlate,
      'total_deliveries': instance.totalDeliveries,
      'rating': instance.rating,
      'on_time_rate': instance.onTimeRate,
      'is_available': instance.isAvailable,
      'current_location': instance.currentLocation,
    };

_FleetOwnerProfileModel _$FleetOwnerProfileModelFromJson(
  Map<String, dynamic> json,
) => _FleetOwnerProfileModel(
  id: json['id'] as String?,
  companyName: json['company_name'] as String?,
  fleetSize: (json['fleet_size'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$FleetOwnerProfileModelToJson(
  _FleetOwnerProfileModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'company_name': instance.companyName,
  'fleet_size': instance.fleetSize,
};

_WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => _WalletModel(
  id: json['id'] as String?,
  balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
  currency: json['currency'] as String? ?? 'ETB',
);

Map<String, dynamic> _$WalletModelToJson(_WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'currency': instance.currency,
    };
