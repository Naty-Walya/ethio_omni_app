// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      priority:
          $enumDecodeNullable(
            _$NotificationPriorityEnumMap,
            json['priority'],
          ) ??
          NotificationPriority.medium,
      isRead: json['is_read'] as bool? ?? false,
      actionUrl: json['action_url'] as String?,
      imageUrl: json['image_url'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      readAt: json['read_at'] == null
          ? null
          : DateTime.parse(json['read_at'] as String),
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'body': instance.body,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'is_read': instance.isRead,
      'action_url': instance.actionUrl,
      'image_url': instance.imageUrl,
      'data': instance.data,
      'created_at': instance.createdAt?.toIso8601String(),
      'read_at': instance.readAt?.toIso8601String(),
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
  pushEnabled: json['push_enabled'] as bool? ?? true,
  emailEnabled: json['email_enabled'] as bool? ?? true,
  bidNotifications: json['bid_notifications'] as bool? ?? true,
  auctionNotifications: json['auction_notifications'] as bool? ?? true,
  paymentNotifications: json['payment_notifications'] as bool? ?? true,
  jobNotifications: json['job_notifications'] as bool? ?? true,
  marketingNotifications: json['marketing_notifications'] as bool? ?? true,
);

Map<String, dynamic> _$NotificationSettingsToJson(
  _NotificationSettings instance,
) => <String, dynamic>{
  'push_enabled': instance.pushEnabled,
  'email_enabled': instance.emailEnabled,
  'bid_notifications': instance.bidNotifications,
  'auction_notifications': instance.auctionNotifications,
  'payment_notifications': instance.paymentNotifications,
  'job_notifications': instance.jobNotifications,
  'marketing_notifications': instance.marketingNotifications,
};
