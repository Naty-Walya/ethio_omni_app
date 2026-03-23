// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      priority:
          $enumDecodeNullable(
            _$NotificationPriorityEnumMap,
            json['priority'],
          ) ??
          NotificationPriority.medium,
      isRead: json['isRead'] as bool? ?? false,
      actionUrl: json['actionUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      readAt: json['readAt'] == null
          ? null
          : DateTime.parse(json['readAt'] as String),
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'isRead': instance.isRead,
      'actionUrl': instance.actionUrl,
      'imageUrl': instance.imageUrl,
      'data': instance.data,
      'createdAt': instance.createdAt?.toIso8601String(),
      'readAt': instance.readAt?.toIso8601String(),
    };

const _$NotificationTypeEnumMap = {
  NotificationType.bid: 'bid',
  NotificationType.auction: 'auction',
  NotificationType.payment: 'payment',
  NotificationType.job: 'job',
  NotificationType.system: 'system',
};

const _$NotificationPriorityEnumMap = {
  NotificationPriority.low: 'low',
  NotificationPriority.medium: 'medium',
  NotificationPriority.high: 'high',
};

_NotificationSettings _$NotificationSettingsFromJson(
  Map<String, dynamic> json,
) => _NotificationSettings(
  pushEnabled: json['pushEnabled'] as bool? ?? true,
  emailEnabled: json['emailEnabled'] as bool? ?? true,
  bidNotifications: json['bidNotifications'] as bool? ?? true,
  auctionNotifications: json['auctionNotifications'] as bool? ?? true,
  paymentNotifications: json['paymentNotifications'] as bool? ?? true,
  jobNotifications: json['jobNotifications'] as bool? ?? true,
  marketingNotifications: json['marketingNotifications'] as bool? ?? true,
);

Map<String, dynamic> _$NotificationSettingsToJson(
  _NotificationSettings instance,
) => <String, dynamic>{
  'pushEnabled': instance.pushEnabled,
  'emailEnabled': instance.emailEnabled,
  'bidNotifications': instance.bidNotifications,
  'auctionNotifications': instance.auctionNotifications,
  'paymentNotifications': instance.paymentNotifications,
  'jobNotifications': instance.jobNotifications,
  'marketingNotifications': instance.marketingNotifications,
};
