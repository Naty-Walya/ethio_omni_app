// Manual implementation without Freezed to work around code generation issues

class UserModel {
  final String id;
  final String phone;
  final String role;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? avatar;
  final bool isPhoneVerified;
  final bool isFaydaVerified;
  final String? faydaId;
  final ShipperProfileModel? shipperProfile;
  final DriverProfileModel? driverProfile;
  final FleetOwnerProfileModel? fleetOwnerProfile;
  final WalletModel? wallet;

  UserModel({
    required this.id,
    required this.phone,
    required this.role,
    this.firstName,
    this.lastName,
    this.email,
    this.avatar,
    this.isPhoneVerified = false,
    this.isFaydaVerified = false,
    this.faydaId,
    this.shipperProfile,
    this.driverProfile,
    this.fleetOwnerProfile,
    this.wallet,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
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
      shipperProfile: json['shipperProfile'] != null
          ? ShipperProfileModel.fromJson(json['shipperProfile'] as Map<String, dynamic>)
          : null,
      driverProfile: json['driverProfile'] != null
          ? DriverProfileModel.fromJson(json['driverProfile'] as Map<String, dynamic>)
          : null,
      fleetOwnerProfile: json['fleetOwnerProfile'] != null
          ? FleetOwnerProfileModel.fromJson(json['fleetOwnerProfile'] as Map<String, dynamic>)
          : null,
      wallet: json['wallet'] != null
          ? WalletModel.fromJson(json['wallet'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phone': phone,
      'role': role,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'avatar': avatar,
      'isPhoneVerified': isPhoneVerified,
      'isFaydaVerified': isFaydaVerified,
      'faydaId': faydaId,
      'shipperProfile': shipperProfile?.toJson(),
      'driverProfile': driverProfile?.toJson(),
      'fleetOwnerProfile': fleetOwnerProfile?.toJson(),
      'wallet': wallet?.toJson(),
    };
  }

  String? get name => [firstName, lastName].where((e) => e != null && e.isNotEmpty).join(' ').trim();
}

class ShipperProfileModel {
  final String? id;
  final String? companyName;
  final String? tinNumber;
  final String? businessType;
  final String? address;
  final String? city;
  final String? region;
  final int totalShipments;
  final double rating;

  ShipperProfileModel({
    this.id,
    this.companyName,
    this.tinNumber,
    this.businessType,
    this.address,
    this.city,
    this.region,
    this.totalShipments = 0,
    this.rating = 0.0,
  });

  factory ShipperProfileModel.fromJson(Map<String, dynamic> json) {
    return ShipperProfileModel(
      id: json['id'] as String?,
      companyName: json['companyName'] as String?,
      tinNumber: json['tinNumber'] as String?,
      businessType: json['businessType'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      totalShipments: json['totalShipments'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'companyName': companyName,
      'tinNumber': tinNumber,
      'businessType': businessType,
      'address': address,
      'city': city,
      'region': region,
      'totalShipments': totalShipments,
      'rating': rating,
    };
  }
}

class DriverProfileModel {
  final String? id;
  final String? licenseNumber;
  final DateTime? licenseExpiry;
  final String? licenseType;
  final String? vehicleType;
  final double? vehicleCapacity;
  final String? vehiclePlate;
  final int totalDeliveries;
  final double rating;
  final double onTimeRate;
  final bool isAvailable;
  final String? currentLocation;

  DriverProfileModel({
    this.id,
    this.licenseNumber,
    this.licenseExpiry,
    this.licenseType,
    this.vehicleType,
    this.vehicleCapacity,
    this.vehiclePlate,
    this.totalDeliveries = 0,
    this.rating = 0.0,
    this.onTimeRate = 0.0,
    this.isAvailable = true,
    this.currentLocation,
  });

  factory DriverProfileModel.fromJson(Map<String, dynamic> json) {
    return DriverProfileModel(
      id: json['id'] as String?,
      licenseNumber: json['licenseNumber'] as String?,
      licenseExpiry: json['licenseExpiry'] != null
          ? DateTime.parse(json['licenseExpiry'] as String)
          : null,
      licenseType: json['licenseType'] as String?,
      vehicleType: json['vehicleType'] as String?,
      vehicleCapacity: (json['vehicleCapacity'] as num?)?.toDouble(),
      vehiclePlate: json['vehiclePlate'] as String?,
      totalDeliveries: json['totalDeliveries'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      onTimeRate: (json['onTimeRate'] as num?)?.toDouble() ?? 0.0,
      isAvailable: json['isAvailable'] as bool? ?? true,
      currentLocation: json['currentLocation'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'licenseNumber': licenseNumber,
      'licenseExpiry': licenseExpiry?.toIso8601String(),
      'licenseType': licenseType,
      'vehicleType': vehicleType,
      'vehicleCapacity': vehicleCapacity,
      'vehiclePlate': vehiclePlate,
      'totalDeliveries': totalDeliveries,
      'rating': rating,
      'onTimeRate': onTimeRate,
      'isAvailable': isAvailable,
      'currentLocation': currentLocation,
    };
  }
}

class FleetOwnerProfileModel {
  final String? id;
  final String? companyName;
  final int fleetSize;

  FleetOwnerProfileModel({
    this.id,
    this.companyName,
    this.fleetSize = 0,
  });

  factory FleetOwnerProfileModel.fromJson(Map<String, dynamic> json) {
    return FleetOwnerProfileModel(
      id: json['id'] as String?,
      companyName: json['companyName'] as String?,
      fleetSize: json['fleetSize'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'companyName': companyName,
      'fleetSize': fleetSize,
    };
  }
}

class WalletModel {
  final String? id;
  final double balance;
  final String currency;

  WalletModel({
    this.id,
    this.balance = 0.0,
    this.currency = 'ETB',
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
      id: json['id'] as String?,
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      currency: json['currency'] as String? ?? 'ETB',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'balance': balance,
      'currency': currency,
    };
  }
}

// Login/Register Request Models
class LoginRequest {
  final String phone;
  final String password;

  LoginRequest({required this.phone, required this.password});

  Map<String, dynamic> toJson() {
    return {'phone': phone, 'password': password};
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
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );
  }
}
