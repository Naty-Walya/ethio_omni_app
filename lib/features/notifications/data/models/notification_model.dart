import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

enum NotificationType {
  bid,
  auction,
  payment,
  job,
  system,
}

enum NotificationPriority {
  low,
  medium,
  high,
}

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,
    required String userId,
    required String title,
    required String body,
    required NotificationType type,
    @Default(NotificationPriority.medium) NotificationPriority priority,
    @Default(false) bool isRead,
    String? actionUrl,
    String? imageUrl,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? readAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    @Default(true) bool pushEnabled,
    @Default(true) bool emailEnabled,
    @Default(true) bool bidNotifications,
    @Default(true) bool auctionNotifications,
    @Default(true) bool paymentNotifications,
    @Default(true) bool jobNotifications,
    @Default(true) bool marketingNotifications,
  }) = _NotificationSettings;

  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);
}
