import 'package:flutter/material.dart';

// Rental booking model for machinery/vehicle rental
// Manual implementation to avoid Freezed generation issues

class RentalBookingModel {
  final String id;
  final String assetId;
  final String renterId;
  final DateTime startDate;
  final DateTime endDate;
  final int totalDays;
  final double dailyRate;
  final double totalAmount;
  final String currency;
  final String status;
  final String? pickupLocation;
  final String? deliveryLocation;
  final String paymentStatus;
  final String? notes;
  final DateTime createdAt;
  final DateTime updatedAt;
  final AssetSummary? asset;
  final UserSummary? renter;

  RentalBookingModel({
    required this.id,
    required this.assetId,
    required this.renterId,
    required this.startDate,
    required this.endDate,
    required this.totalDays,
    required this.dailyRate,
    required this.totalAmount,
    this.currency = 'ETB',
    required this.status,
    this.pickupLocation,
    this.deliveryLocation,
    this.paymentStatus = 'PENDING',
    this.notes,
    required this.createdAt,
    required this.updatedAt,
    this.asset,
    this.renter,
  });

  factory RentalBookingModel.fromJson(Map<String, dynamic> json) {
    return RentalBookingModel(
      id: json['id'] as String,
      assetId: json['assetId'] as String,
      renterId: json['renterId'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      totalDays: json['totalDays'] as int,
      dailyRate: (json['dailyRate'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      currency: json['currency'] as String? ?? 'ETB',
      status: json['status'] as String,
      pickupLocation: json['pickupLocation'] as String?,
      deliveryLocation: json['deliveryLocation'] as String?,
      paymentStatus: json['paymentStatus'] as String? ?? 'PENDING',
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      asset: json['asset'] != null ? AssetSummary.fromJson(json['asset'] as Map<String, dynamic>) : null,
      renter: json['renter'] != null ? UserSummary.fromJson(json['renter'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'assetId': assetId,
      'renterId': renterId,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'totalDays': totalDays,
      'dailyRate': dailyRate,
      'totalAmount': totalAmount,
      'currency': currency,
      'status': status,
      'pickupLocation': pickupLocation,
      'deliveryLocation': deliveryLocation,
      'paymentStatus': paymentStatus,
      'notes': notes,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'asset': asset?.toJson(),
      'renter': renter?.toJson(),
    };
  }

  String get statusDisplay {
    switch (status) {
      case 'PENDING':
        return 'Pending Approval';
      case 'CONFIRMED':
        return 'Confirmed';
      case 'ACTIVE':
        return 'Active Rental';
      case 'COMPLETED':
        return 'Completed';
      case 'CANCELLED':
        return 'Cancelled';
      case 'REJECTED':
        return 'Rejected';
      default:
        return status;
    }
  }

  Color get statusColor {
    switch (status) {
      case 'PENDING':
        return Colors.orange;
      case 'CONFIRMED':
        return Colors.green;
      case 'ACTIVE':
        return Colors.blue;
      case 'COMPLETED':
        return Colors.teal;
      case 'CANCELLED':
      case 'REJECTED':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  bool get canCancel => status == 'PENDING' || status == 'CONFIRMED';
  bool get isActive => status == 'ACTIVE';
  bool get isCompleted => status == 'COMPLETED';
  bool get isPending => status == 'PENDING';
}

class AssetSummary {
  final String id;
  final String name;
  final String type;
  final double? capacity;
  final int? year;
  final String? plateNumber;
  final double? dailyRate;
  final FleetOwnerSummary? owner;

  AssetSummary({
    required this.id,
    required this.name,
    required this.type,
    this.capacity,
    this.year,
    this.plateNumber,
    this.dailyRate,
    this.owner,
  });

  factory AssetSummary.fromJson(Map<String, dynamic> json) {
    return AssetSummary(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      capacity: (json['capacity'] as num?)?.toDouble(),
      year: json['year'] as int?,
      plateNumber: json['plateNumber'] as String?,
      dailyRate: (json['dailyRate'] as num?)?.toDouble(),
      owner: json['owner'] != null ? FleetOwnerSummary.fromJson(json['owner'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'capacity': capacity,
      'year': year,
      'plateNumber': plateNumber,
      'dailyRate': dailyRate,
      'owner': owner?.toJson(),
    };
  }

  String get typeDisplay {
    switch (type) {
      case 'TRUCK':
        return 'Truck';
      case 'MACHINERY':
        return 'Heavy Machinery';
      case 'CAR':
        return 'Car';
      case 'VAN':
        return 'Van';
      default:
        return type;
    }
  }
}

class FleetOwnerSummary {
  final String id;
  final UserSummary user;

  FleetOwnerSummary({
    required this.id,
    required this.user,
  });

  factory FleetOwnerSummary.fromJson(Map<String, dynamic> json) {
    return FleetOwnerSummary(
      id: json['id'] as String,
      user: UserSummary.fromJson(json['user'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user.toJson(),
    };
  }
}

class UserSummary {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final bool? isFaydaVerified;

  UserSummary({
    this.firstName,
    this.lastName,
    this.phone,
    this.isFaydaVerified,
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
      isFaydaVerified: json['isFaydaVerified'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'isFaydaVerified': isFaydaVerified,
    };
  }
}

class AssetModel {
  final String id;
  final String ownerId;
  final String name;
  final String type;
  final String status;
  final double? capacity;
  final int? year;
  final String? plateNumber;
  final String? currentLocation;
  final double? dailyRate;
  final DateTime createdAt;
  final DateTime updatedAt;
  final FleetOwnerSummary? owner;

  AssetModel({
    required this.id,
    required this.ownerId,
    required this.name,
    required this.type,
    required this.status,
    this.capacity,
    this.year,
    this.plateNumber,
    this.currentLocation,
    this.dailyRate,
    required this.createdAt,
    required this.updatedAt,
    this.owner,
  });

  factory AssetModel.fromJson(Map<String, dynamic> json) {
    return AssetModel(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      capacity: (json['capacity'] as num?)?.toDouble(),
      year: json['year'] as int?,
      plateNumber: json['plateNumber'] as String?,
      currentLocation: json['currentLocation'] as String?,
      dailyRate: (json['dailyRate'] as num?)?.toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      owner: json['owner'] != null ? FleetOwnerSummary.fromJson(json['owner'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ownerId': ownerId,
      'name': name,
      'type': type,
      'status': status,
      'capacity': capacity,
      'year': year,
      'plateNumber': plateNumber,
      'currentLocation': currentLocation,
      'dailyRate': dailyRate,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'owner': owner?.toJson(),
    };
  }

  bool get isAvailable => status == 'AVAILABLE';

  String get typeDisplay {
    switch (type) {
      case 'TRUCK':
        return 'Truck';
      case 'MACHINERY':
        return 'Heavy Machinery';
      case 'CAR':
        return 'Car';
      case 'VAN':
        return 'Van';
      default:
        return type;
    }
  }

  String get statusDisplay {
    switch (status) {
      case 'AVAILABLE':
        return 'Available';
      case 'RENTED':
        return 'Rented';
      case 'MAINTENANCE':
        return 'Under Maintenance';
      case 'IN_USE':
        return 'In Use';
      case 'UNAVAILABLE':
        return 'Unavailable';
      default:
        return status;
    }
  }
}
