import 'package:flutter/material.dart';

enum NotificationType {
  bidPlaced,
  bidAccepted,
  bidRejected,
  outbidAlert,
  auctionWon,
  auctionEndingSoon,
  jobAssigned,
  pickupReminder,
  deliveryReminder,
  deliveryConfirmed,
  paymentReceived,
  paymentSent,
  fraudAlert,
  system,
  message,
  rentalBooking,
  rentalConfirmed,
}

enum NotificationChannel {
  push,
  email,
  sms,
  inApp,
}

class NotificationModel {
  final String id;
  final String userId;
  final NotificationType type;
  final NotificationChannel channel;
  final String title;
  final String body;
  final Map<String, dynamic>? data;
  final bool isRead;
  final DateTime? readAt;
  final DateTime sentAt;
  final DateTime? deliveredAt;
  final DateTime createdAt;

  NotificationModel({
    required this.id,
    required this.userId,
    required this.type,
    required this.channel,
    required this.title,
    required this.body,
    this.data,
    this.isRead = false,
    this.readAt,
    required this.sentAt,
    this.deliveredAt,
    required this.createdAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      type: _parseNotificationType(json['type'] as String),
      channel: _parseNotificationChannel(json['channel'] as String? ?? 'IN_APP'),
      title: json['title'] as String,
      body: json['body'] as String,
      data: json['data'] as Map<String, dynamic>?,
      isRead: json['isRead'] as bool? ?? false,
      readAt: json['readAt'] != null ? DateTime.parse(json['readAt'] as String) : null,
      sentAt: DateTime.parse(json['sentAt'] as String),
      deliveredAt: json['deliveredAt'] != null
          ? DateTime.parse(json['deliveredAt'] as String)
          : null,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'type': _typeToString(type),
      'channel': _channelToString(channel),
      'title': title,
      'body': body,
      'data': data,
      'isRead': isRead,
      'readAt': readAt?.toIso8601String(),
      'sentAt': sentAt.toIso8601String(),
      'deliveredAt': deliveredAt?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
    };
  }

  NotificationModel copyWith({
    String? id,
    String? userId,
    NotificationType? type,
    NotificationChannel? channel,
    String? title,
    String? body,
    Map<String, dynamic>? data,
    bool? isRead,
    DateTime? readAt,
    DateTime? sentAt,
    DateTime? deliveredAt,
    DateTime? createdAt,
  }) {
    return NotificationModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      channel: channel ?? this.channel,
      title: title ?? this.title,
      body: body ?? this.body,
      data: data ?? this.data,
      isRead: isRead ?? this.isRead,
      readAt: readAt ?? this.readAt,
      sentAt: sentAt ?? this.sentAt,
      deliveredAt: deliveredAt ?? this.deliveredAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  static NotificationType _parseNotificationType(String type) {
    switch (type) {
      case 'BID_PLACED':
        return NotificationType.bidPlaced;
      case 'BID_ACCEPTED':
        return NotificationType.bidAccepted;
      case 'BID_REJECTED':
        return NotificationType.bidRejected;
      case 'OUTBID_ALERT':
        return NotificationType.outbidAlert;
      case 'AUCTION_WON':
        return NotificationType.auctionWon;
      case 'AUCTION_ENDING_SOON':
        return NotificationType.auctionEndingSoon;
      case 'JOB_ASSIGNED':
        return NotificationType.jobAssigned;
      case 'PICKUP_REMINDER':
        return NotificationType.pickupReminder;
      case 'DELIVERY_REMINDER':
        return NotificationType.deliveryReminder;
      case 'DELIVERY_CONFIRMED':
        return NotificationType.deliveryConfirmed;
      case 'PAYMENT_RECEIVED':
        return NotificationType.paymentReceived;
      case 'PAYMENT_SENT':
        return NotificationType.paymentSent;
      case 'FRAUD_ALERT':
        return NotificationType.fraudAlert;
      case 'SYSTEM':
        return NotificationType.system;
      case 'MESSAGE':
        return NotificationType.message;
      case 'RENTAL_BOOKING':
        return NotificationType.rentalBooking;
      case 'RENTAL_CONFIRMED':
        return NotificationType.rentalConfirmed;
      default:
        return NotificationType.system;
    }
  }

  static String _typeToString(NotificationType type) {
    switch (type) {
      case NotificationType.bidPlaced:
        return 'BID_PLACED';
      case NotificationType.bidAccepted:
        return 'BID_ACCEPTED';
      case NotificationType.bidRejected:
        return 'BID_REJECTED';
      case NotificationType.outbidAlert:
        return 'OUTBID_ALERT';
      case NotificationType.auctionWon:
        return 'AUCTION_WON';
      case NotificationType.auctionEndingSoon:
        return 'AUCTION_ENDING_SOON';
      case NotificationType.jobAssigned:
        return 'JOB_ASSIGNED';
      case NotificationType.pickupReminder:
        return 'PICKUP_REMINDER';
      case NotificationType.deliveryReminder:
        return 'DELIVERY_REMINDER';
      case NotificationType.deliveryConfirmed:
        return 'DELIVERY_CONFIRMED';
      case NotificationType.paymentReceived:
        return 'PAYMENT_RECEIVED';
      case NotificationType.paymentSent:
        return 'PAYMENT_SENT';
      case NotificationType.fraudAlert:
        return 'FRAUD_ALERT';
      case NotificationType.system:
        return 'SYSTEM';
      case NotificationType.message:
        return 'MESSAGE';
      case NotificationType.rentalBooking:
        return 'RENTAL_BOOKING';
      case NotificationType.rentalConfirmed:
        return 'RENTAL_CONFIRMED';
    }
  }

  static NotificationChannel _parseNotificationChannel(String channel) {
    switch (channel) {
      case 'PUSH':
        return NotificationChannel.push;
      case 'EMAIL':
        return NotificationChannel.email;
      case 'SMS':
        return NotificationChannel.sms;
      case 'IN_APP':
      default:
        return NotificationChannel.inApp;
    }
  }

  static String _channelToString(NotificationChannel channel) {
    switch (channel) {
      case NotificationChannel.push:
        return 'PUSH';
      case NotificationChannel.email:
        return 'EMAIL';
      case NotificationChannel.sms:
        return 'SMS';
      case NotificationChannel.inApp:
        return 'IN_APP';
    }
  }

  // Helper getters
  IconData get icon {
    switch (type) {
      case NotificationType.bidPlaced:
      case NotificationType.bidAccepted:
      case NotificationType.bidRejected:
        return Icons.gavel;
      case NotificationType.outbidAlert:
      case NotificationType.auctionWon:
      case NotificationType.auctionEndingSoon:
        return Icons.timer;
      case NotificationType.jobAssigned:
      case NotificationType.pickupReminder:
      case NotificationType.deliveryReminder:
        return Icons.local_shipping;
      case NotificationType.deliveryConfirmed:
        return Icons.check_circle;
      case NotificationType.paymentReceived:
      case NotificationType.paymentSent:
        return Icons.account_balance_wallet;
      case NotificationType.fraudAlert:
        return Icons.security;
      case NotificationType.system:
        return Icons.info;
      case NotificationType.message:
        return Icons.message;
      case NotificationType.rentalBooking:
      case NotificationType.rentalConfirmed:
        return Icons.construction;
    }
  }

  Color get iconColor {
    switch (type) {
      case NotificationType.bidAccepted:
      case NotificationType.auctionWon:
      case NotificationType.deliveryConfirmed:
      case NotificationType.paymentReceived:
        return Colors.green;
      case NotificationType.bidRejected:
      case NotificationType.outbidAlert:
      case NotificationType.fraudAlert:
        return Colors.red;
      case NotificationType.jobAssigned:
      case NotificationType.bidPlaced:
        return Colors.blue;
      case NotificationType.auctionEndingSoon:
      case NotificationType.pickupReminder:
      case NotificationType.deliveryReminder:
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  String? get deepLinkRoute {
    final typeStr = data?['type'] as String?;
    final freightPostId = data?['freightPostId'] as String?;
    final bidId = data?['bidId'] as String?;
    final auctionId = data?['auctionId'] as String?;
    final jobId = data?['jobId'] as String?;
    final bookingId = data?['bookingId'] as String?;

    switch (type) {
      case NotificationType.bidPlaced:
      case NotificationType.bidAccepted:
        if (freightPostId != null) return '/freight/$freightPostId';
        break;
      case NotificationType.auctionWon:
      case NotificationType.outbidAlert:
      case NotificationType.auctionEndingSoon:
        if (auctionId != null) return '/auction/$auctionId';
        break;
      case NotificationType.jobAssigned:
      case NotificationType.pickupReminder:
      case NotificationType.deliveryReminder:
      case NotificationType.deliveryConfirmed:
        if (jobId != null) return '/jobs/$jobId';
        break;
      case NotificationType.rentalBooking:
      case NotificationType.rentalConfirmed:
        if (bookingId != null) return '/rentals/$bookingId';
        break;
      default:
        return null;
    }
    return null;
  }
}

class NotificationPreferences {
  final String id;
  final String userId;
  final bool bidAlerts;
  final bool auctionAlerts;
  final bool jobAlerts;
  final bool paymentAlerts;
  final bool fraudAlerts;
  final bool messageAlerts;
  final bool rentalAlerts;
  final bool systemAlerts;
  final bool pushEnabled;
  final bool emailEnabled;
  final bool smsEnabled;
  final int? quietHoursStart;
  final int? quietHoursEnd;
  final DateTime? updatedAt;

  NotificationPreferences({
    required this.id,
    required this.userId,
    this.bidAlerts = true,
    this.auctionAlerts = true,
    this.jobAlerts = true,
    this.paymentAlerts = true,
    this.fraudAlerts = true,
    this.messageAlerts = true,
    this.rentalAlerts = true,
    this.systemAlerts = true,
    this.pushEnabled = true,
    this.emailEnabled = true,
    this.smsEnabled = false,
    this.quietHoursStart,
    this.quietHoursEnd,
    this.updatedAt,
  });

  factory NotificationPreferences.fromJson(Map<String, dynamic> json) {
    return NotificationPreferences(
      id: json['id'] as String,
      userId: json['userId'] as String,
      bidAlerts: json['bidAlerts'] as bool? ?? true,
      auctionAlerts: json['auctionAlerts'] as bool? ?? true,
      jobAlerts: json['jobAlerts'] as bool? ?? true,
      paymentAlerts: json['paymentAlerts'] as bool? ?? true,
      fraudAlerts: json['fraudAlerts'] as bool? ?? true,
      messageAlerts: json['messageAlerts'] as bool? ?? true,
      rentalAlerts: json['rentalAlerts'] as bool? ?? true,
      systemAlerts: json['systemAlerts'] as bool? ?? true,
      pushEnabled: json['pushEnabled'] as bool? ?? true,
      emailEnabled: json['emailEnabled'] as bool? ?? true,
      smsEnabled: json['smsEnabled'] as bool? ?? false,
      quietHoursStart: json['quietHoursStart'] as int?,
      quietHoursEnd: json['quietHoursEnd'] as int?,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'bidAlerts': bidAlerts,
      'auctionAlerts': auctionAlerts,
      'jobAlerts': jobAlerts,
      'paymentAlerts': paymentAlerts,
      'fraudAlerts': fraudAlerts,
      'messageAlerts': messageAlerts,
      'rentalAlerts': rentalAlerts,
      'systemAlerts': systemAlerts,
      'pushEnabled': pushEnabled,
      'emailEnabled': emailEnabled,
      'smsEnabled': smsEnabled,
      'quietHoursStart': quietHoursStart,
      'quietHoursEnd': quietHoursEnd,
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  NotificationPreferences copyWith({
    String? id,
    String? userId,
    bool? bidAlerts,
    bool? auctionAlerts,
    bool? jobAlerts,
    bool? paymentAlerts,
    bool? fraudAlerts,
    bool? messageAlerts,
    bool? rentalAlerts,
    bool? systemAlerts,
    bool? pushEnabled,
    bool? emailEnabled,
    bool? smsEnabled,
    int? quietHoursStart,
    int? quietHoursEnd,
    DateTime? updatedAt,
  }) {
    return NotificationPreferences(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      bidAlerts: bidAlerts ?? this.bidAlerts,
      auctionAlerts: auctionAlerts ?? this.auctionAlerts,
      jobAlerts: jobAlerts ?? this.jobAlerts,
      paymentAlerts: paymentAlerts ?? this.paymentAlerts,
      fraudAlerts: fraudAlerts ?? this.fraudAlerts,
      messageAlerts: messageAlerts ?? this.messageAlerts,
      rentalAlerts: rentalAlerts ?? this.rentalAlerts,
      systemAlerts: systemAlerts ?? this.systemAlerts,
      pushEnabled: pushEnabled ?? this.pushEnabled,
      emailEnabled: emailEnabled ?? this.emailEnabled,
      smsEnabled: smsEnabled ?? this.smsEnabled,
      quietHoursStart: quietHoursStart ?? this.quietHoursStart,
      quietHoursEnd: quietHoursEnd ?? this.quietHoursEnd,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class DeviceInfo {
  final String id;
  final String userId;
  final String fcmToken;
  final String deviceType;
  final String? deviceName;
  final String? osVersion;
  final String? appVersion;
  final bool isActive;
  final DateTime lastUsedAt;
  final DateTime createdAt;

  DeviceInfo({
    required this.id,
    required this.userId,
    required this.fcmToken,
    required this.deviceType,
    this.deviceName,
    this.osVersion,
    this.appVersion,
    this.isActive = true,
    required this.lastUsedAt,
    required this.createdAt,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) {
    return DeviceInfo(
      id: json['id'] as String,
      userId: json['userId'] as String,
      fcmToken: json['fcmToken'] as String,
      deviceType: json['deviceType'] as String,
      deviceName: json['deviceName'] as String?,
      osVersion: json['osVersion'] as String?,
      appVersion: json['appVersion'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      lastUsedAt: DateTime.parse(json['lastUsedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'fcmToken': fcmToken,
      'deviceType': deviceType,
      'deviceName': deviceName,
      'osVersion': osVersion,
      'appVersion': appVersion,
      'isActive': isActive,
      'lastUsedAt': lastUsedAt.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
    };
  }
}

class NotificationPagination {
  final int total;
  final int limit;
  final int offset;

  NotificationPagination({
    required this.total,
    required this.limit,
    required this.offset,
  });

  factory NotificationPagination.fromJson(Map<String, dynamic> json) {
    return NotificationPagination(
      total: json['total'] as int,
      limit: json['limit'] as int,
      offset: json['offset'] as int,
    );
  }

  bool get hasMore => offset + limit < total;
}
