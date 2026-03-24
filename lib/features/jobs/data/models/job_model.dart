// Job model for freight job tracking
// Manual implementation to avoid Freezed generation issues

class JobModel {
  final String id;
  final String freightPostId;
  final String bidId;
  final String driverId;
  final String status;
  final DateTime? pickupTime;
  final DateTime? deliveryTime;
  final double? currentLat;
  final double? currentLng;
  final DateTime? lastLocationUpdate;
  final String? pickupQrCode;
  final String? deliveryQrCode;
  final bool pickupConfirmed;
  final bool deliveryConfirmed;
  final List<String> deliveryPhotos;
  final String? recipientName;
  final String? recipientSignature;
  final String? notes;
  final String paymentStatus;
  final DateTime createdAt;
  final DateTime updatedAt;
  final FreightPostSummary? freightPost;
  final BidSummary? bid;
  final DriverSummary? driver;

  JobModel({
    required this.id,
    required this.freightPostId,
    required this.bidId,
    required this.driverId,
    required this.status,
    this.pickupTime,
    this.deliveryTime,
    this.currentLat,
    this.currentLng,
    this.lastLocationUpdate,
    this.pickupQrCode,
    this.deliveryQrCode,
    this.pickupConfirmed = false,
    this.deliveryConfirmed = false,
    this.deliveryPhotos = const [],
    this.recipientName,
    this.recipientSignature,
    this.notes,
    this.paymentStatus = 'PENDING',
    required this.createdAt,
    required this.updatedAt,
    this.freightPost,
    this.bid,
    this.driver,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json['id'] as String,
      freightPostId: json['freightPostId'] as String,
      bidId: json['bidId'] as String,
      driverId: json['driverId'] as String,
      status: json['status'] as String,
      pickupTime: json['pickupTime'] != null ? DateTime.parse(json['pickupTime'] as String) : null,
      deliveryTime: json['deliveryTime'] != null ? DateTime.parse(json['deliveryTime'] as String) : null,
      currentLat: (json['currentLat'] as num?)?.toDouble(),
      currentLng: (json['currentLng'] as num?)?.toDouble(),
      lastLocationUpdate: json['lastLocationUpdate'] != null ? DateTime.parse(json['lastLocationUpdate'] as String) : null,
      pickupQrCode: json['pickupQrCode'] as String?,
      deliveryQrCode: json['deliveryQrCode'] as String?,
      pickupConfirmed: json['pickupConfirmed'] as bool? ?? false,
      deliveryConfirmed: json['deliveryConfirmed'] as bool? ?? false,
      deliveryPhotos: (json['deliveryPhotos'] as List<dynamic>?)?.cast<String>() ?? [],
      recipientName: json['recipientName'] as String?,
      recipientSignature: json['recipientSignature'] as String?,
      notes: json['notes'] as String?,
      paymentStatus: json['paymentStatus'] as String? ?? 'PENDING',
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      freightPost: json['freightPost'] != null
          ? FreightPostSummary.fromJson(json['freightPost'] as Map<String, dynamic>)
          : null,
      bid: json['bid'] != null ? BidSummary.fromJson(json['bid'] as Map<String, dynamic>) : null,
      driver: json['driver'] != null ? DriverSummary.fromJson(json['driver'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'freightPostId': freightPostId,
      'bidId': bidId,
      'driverId': driverId,
      'status': status,
      'pickupTime': pickupTime?.toIso8601String(),
      'deliveryTime': deliveryTime?.toIso8601String(),
      'currentLat': currentLat,
      'currentLng': currentLng,
      'lastLocationUpdate': lastLocationUpdate?.toIso8601String(),
      'pickupQrCode': pickupQrCode,
      'deliveryQrCode': deliveryQrCode,
      'pickupConfirmed': pickupConfirmed,
      'deliveryConfirmed': deliveryConfirmed,
      'deliveryPhotos': deliveryPhotos,
      'recipientName': recipientName,
      'recipientSignature': recipientSignature,
      'notes': notes,
      'paymentStatus': paymentStatus,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'freightPost': freightPost?.toJson(),
      'bid': bid?.toJson(),
      'driver': driver?.toJson(),
    };
  }

  // Helper getters
  bool get isActive => ['ASSIGNED', 'PICKUP_READY', 'IN_TRANSIT', 'NEAR_DELIVERY'].contains(status);
  bool get isCompleted => status == 'COMPLETED' || status == 'DELIVERED';
  bool get canUpdateStatus => isActive;
  bool get canUploadProof => status == 'DELIVERED' || status == 'NEAR_DELIVERY';

  String get statusDisplay {
    switch (status) {
      case 'ASSIGNED':
        return 'Assigned';
      case 'PICKUP_READY':
        return 'Ready for Pickup';
      case 'IN_TRANSIT':
        return 'In Transit';
      case 'NEAR_DELIVERY':
        return 'Near Delivery';
      case 'DELIVERED':
        return 'Delivered';
      case 'COMPLETED':
        return 'Completed';
      case 'DISPUTED':
        return 'Disputed';
      default:
        return status;
    }
  }

  String get nextStatus {
    switch (status) {
      case 'ASSIGNED':
        return 'PICKUP_READY';
      case 'PICKUP_READY':
        return 'IN_TRANSIT';
      case 'IN_TRANSIT':
        return 'NEAR_DELIVERY';
      case 'NEAR_DELIVERY':
        return 'DELIVERED';
      default:
        return '';
    }
  }

  String get nextStatusDisplay {
    switch (nextStatus) {
      case 'PICKUP_READY':
        return 'Mark Ready for Pickup';
      case 'IN_TRANSIT':
        return 'Confirm Pickup & Start Transit';
      case 'NEAR_DELIVERY':
        return 'Mark Near Delivery';
      case 'DELIVERED':
        return 'Complete Delivery';
      default:
        return '';
    }
  }
}

class FreightPostSummary {
  final String id;
  final String title;
  final String pickupLocation;
  final String deliveryLocation;
  final DateTime? pickupDate;
  final DateTime? preferredDeliveryDate;
  final double weight;
  final String cargoType;
  final ShipperSummary? shipper;

  FreightPostSummary({
    required this.id,
    required this.title,
    required this.pickupLocation,
    required this.deliveryLocation,
    this.pickupDate,
    this.preferredDeliveryDate,
    required this.weight,
    required this.cargoType,
    this.shipper,
  });

  factory FreightPostSummary.fromJson(Map<String, dynamic> json) {
    return FreightPostSummary(
      id: json['id'] as String,
      title: json['title'] as String,
      pickupLocation: json['pickupLocation'] as String,
      deliveryLocation: json['deliveryLocation'] as String,
      pickupDate: json['pickupDate'] != null ? DateTime.parse(json['pickupDate'] as String) : null,
      preferredDeliveryDate: json['preferredDeliveryDate'] != null
          ? DateTime.parse(json['preferredDeliveryDate'] as String)
          : null,
      weight: (json['weight'] as num).toDouble(),
      cargoType: json['cargoType'] as String,
      shipper: json['shipper'] != null ? ShipperSummary.fromJson(json['shipper'] as Map<String, dynamic>) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'pickupLocation': pickupLocation,
      'deliveryLocation': deliveryLocation,
      'pickupDate': pickupDate?.toIso8601String(),
      'preferredDeliveryDate': preferredDeliveryDate?.toIso8601String(),
      'weight': weight,
      'cargoType': cargoType,
      'shipper': shipper?.toJson(),
    };
  }
}

class ShipperSummary {
  final String id;
  final UserSummary user;

  ShipperSummary({
    required this.id,
    required this.user,
  });

  factory ShipperSummary.fromJson(Map<String, dynamic> json) {
    return ShipperSummary(
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
  final String? email;

  UserSummary({
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
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
      email: json['email'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'email': email,
    };
  }
}

class BidSummary {
  final double amount;
  final String currency;

  BidSummary({
    required this.amount,
    this.currency = 'ETB',
  });

  factory BidSummary.fromJson(Map<String, dynamic> json) {
    return BidSummary(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String? ?? 'ETB',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }
}

class DriverSummary {
  final String id;
  final UserSummary user;

  DriverSummary({
    required this.id,
    required this.user,
  });

  factory DriverSummary.fromJson(Map<String, dynamic> json) {
    return DriverSummary(
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
