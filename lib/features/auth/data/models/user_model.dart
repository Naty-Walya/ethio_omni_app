import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String phone,
    required String role,
    String? firstName,
    String? lastName,
    String? email,
    String? avatar,
    @Default(false) bool isPhoneVerified,
    @Default(false) bool isFaydaVerified,
    String? faydaId,
    ShipperProfileModel? shipperProfile,
    DriverProfileModel? driverProfile,
    FleetOwnerProfileModel? fleetOwnerProfile,
    WalletModel? wallet,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class ShipperProfileModel with _$ShipperProfileModel {
  const factory ShipperProfileModel({
    String? id,
    String? companyName,
    String? tinNumber,
    String? businessType,
    String? address,
    String? city,
    String? region,
    @Default(0) int totalShipments,
    @Default(0.0) double rating,
  }) = _ShipperProfileModel;

  factory ShipperProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ShipperProfileModelFromJson(json);
}

@freezed
class DriverProfileModel with _$DriverProfileModel {
  const factory DriverProfileModel({
    String? id,
    String? licenseNumber,
    DateTime? licenseExpiry,
    String? licenseType,
    String? vehicleType,
    double? vehicleCapacity,
    String? vehiclePlate,
    @Default(0) int totalDeliveries,
    @Default(0.0) double rating,
    @Default(0.0) double onTimeRate,
    @Default(true) bool isAvailable,
    String? currentLocation,
  }) = _DriverProfileModel;

  factory DriverProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileModelFromJson(json);
}

@freezed
class FleetOwnerProfileModel with _$FleetOwnerProfileModel {
  const factory FleetOwnerProfileModel({
    String? id,
    String? companyName,
    @Default(0) int fleetSize,
  }) = _FleetOwnerProfileModel;

  factory FleetOwnerProfileModel.fromJson(Map<String, dynamic> json) =>
      _$FleetOwnerProfileModelFromJson(json);
}

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    String? id,
    @Default(0.0) double balance,
    @Default('ETB') String currency,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);
}

// Login/Register Request Models
class LoginRequest {
  final String phone;
  final String password;

  LoginRequest({required this.phone, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'password': password,
    };
  }
}

class RegisterRequest {
  final String phone;
  final String password;
  final String role;
  final String? firstName;
  final String? lastName;

  RegisterRequest({
    required this.phone,
    required this.password,
    required this.role,
    this.firstName,
    this.lastName,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'password': password,
      'role': role,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}

// Auth Response
class AuthResponse {
  final UserModel user;
  final String token;

  AuthResponse({required this.user, required this.token});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      user: UserModel.fromJson(json['user']),
      token: json['token'],
    );
  }
}
