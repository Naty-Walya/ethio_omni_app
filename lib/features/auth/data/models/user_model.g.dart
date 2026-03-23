// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String?,
  avatar: json['avatar'] as String?,
  isPhoneVerified: json['isPhoneVerified'] as bool? ?? false,
  isFaydaVerified: json['isFaydaVerified'] as bool? ?? false,
  faydaId: json['faydaId'] as String?,
  shipperProfile: json['shipperProfile'] == null
      ? null
      : ShipperProfileModel.fromJson(
          json['shipperProfile'] as Map<String, dynamic>,
        ),
  driverProfile: json['driverProfile'] == null
      ? null
      : DriverProfileModel.fromJson(
          json['driverProfile'] as Map<String, dynamic>,
        ),
  fleetOwnerProfile: json['fleetOwnerProfile'] == null
      ? null
      : FleetOwnerProfileModel.fromJson(
          json['fleetOwnerProfile'] as Map<String, dynamic>,
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
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
      'isPhoneVerified': instance.isPhoneVerified,
      'isFaydaVerified': instance.isFaydaVerified,
      'faydaId': instance.faydaId,
      'shipperProfile': instance.shipperProfile,
      'driverProfile': instance.driverProfile,
      'fleetOwnerProfile': instance.fleetOwnerProfile,
      'wallet': instance.wallet,
    };

_ShipperProfileModel _$ShipperProfileModelFromJson(Map<String, dynamic> json) =>
    _ShipperProfileModel(
      id: json['id'] as String?,
      companyName: json['companyName'] as String?,
      tinNumber: json['tinNumber'] as String?,
      businessType: json['businessType'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      totalShipments: (json['totalShipments'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$ShipperProfileModelToJson(
  _ShipperProfileModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'companyName': instance.companyName,
  'tinNumber': instance.tinNumber,
  'businessType': instance.businessType,
  'address': instance.address,
  'city': instance.city,
  'region': instance.region,
  'totalShipments': instance.totalShipments,
  'rating': instance.rating,
};

_DriverProfileModel _$DriverProfileModelFromJson(Map<String, dynamic> json) =>
    _DriverProfileModel(
      id: json['id'] as String?,
      licenseNumber: json['licenseNumber'] as String?,
      licenseExpiry: json['licenseExpiry'] == null
          ? null
          : DateTime.parse(json['licenseExpiry'] as String),
      licenseType: json['licenseType'] as String?,
      vehicleType: json['vehicleType'] as String?,
      vehicleCapacity: (json['vehicleCapacity'] as num?)?.toDouble(),
      vehiclePlate: json['vehiclePlate'] as String?,
      totalDeliveries: (json['totalDeliveries'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      onTimeRate: (json['onTimeRate'] as num?)?.toDouble() ?? 0.0,
      isAvailable: json['isAvailable'] as bool? ?? true,
      currentLocation: json['currentLocation'] as String?,
    );

Map<String, dynamic> _$DriverProfileModelToJson(_DriverProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'licenseNumber': instance.licenseNumber,
      'licenseExpiry': instance.licenseExpiry?.toIso8601String(),
      'licenseType': instance.licenseType,
      'vehicleType': instance.vehicleType,
      'vehicleCapacity': instance.vehicleCapacity,
      'vehiclePlate': instance.vehiclePlate,
      'totalDeliveries': instance.totalDeliveries,
      'rating': instance.rating,
      'onTimeRate': instance.onTimeRate,
      'isAvailable': instance.isAvailable,
      'currentLocation': instance.currentLocation,
    };

_FleetOwnerProfileModel _$FleetOwnerProfileModelFromJson(
  Map<String, dynamic> json,
) => _FleetOwnerProfileModel(
  id: json['id'] as String?,
  companyName: json['companyName'] as String?,
  fleetSize: (json['fleetSize'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$FleetOwnerProfileModelToJson(
  _FleetOwnerProfileModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'companyName': instance.companyName,
  'fleetSize': instance.fleetSize,
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
