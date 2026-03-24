import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/notifications/data/models/notification_model.dart';
import 'package:ethio_omni_app/features/notifications/data/repositories/notification_repository.dart';

// Notifications state
class NotificationsState {
  final List<NotificationModel> notifications;
  final NotificationPreferences? preferences;
  final List<DeviceInfo> devices;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;
  final int unreadCount;
  final int totalCount;
  final bool hasMore;
  final int currentOffset;

  const NotificationsState({
    this.notifications = const [],
    this.preferences,
    this.devices = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
    this.unreadCount = 0,
    this.totalCount = 0,
    this.hasMore = true,
    this.currentOffset = 0,
  });

  NotificationsState copyWith({
    List<NotificationModel>? notifications,
    NotificationPreferences? preferences,
    List<DeviceInfo>? devices,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
    int? unreadCount,
    int? totalCount,
    bool? hasMore,
    int? currentOffset,
  }) {
    return NotificationsState(
      notifications: notifications ?? this.notifications,
      preferences: preferences ?? this.preferences,
      devices: devices ?? this.devices,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error,
      unreadCount: unreadCount ?? this.unreadCount,
      totalCount: totalCount ?? this.totalCount,
      hasMore: hasMore ?? this.hasMore,
      currentOffset: currentOffset ?? this.currentOffset,
    );
  }
}

class NotificationsNotifier extends Notifier<NotificationsState> {
  late final NotificationRepository _repository;
  static const int _pageSize = 20;

  @override
  NotificationsState build() {
    _repository = ref.watch(notificationRepositoryProvider);
    _initialize();
    return const NotificationsState();
  }

  Future<void> _initialize() async {
    await Future.wait([
      _loadNotifications(),
      _loadUnreadCount(),
      _loadPreferences(),
    ]);
  }

  Future<void> _loadNotifications() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final notifications = await _repository.getNotifications(
        limit: _pageSize,
        offset: 0,
      );
      state = state.copyWith(
        notifications: notifications,
        isLoading: false,
        currentOffset: notifications.length,
        hasMore: notifications.length == _pageSize,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> loadMoreNotifications() async {
    if (state.isLoadingMore || !state.hasMore) return;

    state = state.copyWith(isLoadingMore: true, error: null);
    try {
      final newNotifications = await _repository.getNotifications(
        limit: _pageSize,
        offset: state.currentOffset,
      );

      final allNotifications = [...state.notifications, ...newNotifications];
      state = state.copyWith(
        notifications: allNotifications,
        isLoadingMore: false,
        currentOffset: allNotifications.length,
        hasMore: newNotifications.length == _pageSize,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoadingMore: false,
      );
    }
  }

  Future<void> _loadUnreadCount() async {
    try {
      final count = await _repository.getUnreadCount();
      state = state.copyWith(unreadCount: count);
    } catch (e) {
      // Silent fail
    }
  }

  Future<void> _loadPreferences() async {
    try {
      final prefs = await _repository.getPreferences();
      state = state.copyWith(preferences: prefs);
    } catch (e) {
      // Silent fail - use defaults
    }
  }

  Future<void> refresh() async {
    await Future.wait([
      _loadNotifications(),
      _loadUnreadCount(),
    ]);
  }

  Future<void> markAsRead(String notificationId) async {
    try {
      await _repository.markAsRead(notificationId);
      final updatedNotifications = state.notifications.map((n) {
        if (n.id == notificationId) {
          return n.copyWith(isRead: true, readAt: DateTime.now());
        }
        return n;
      }).toList();
      state = state.copyWith(
        notifications: updatedNotifications,
        unreadCount: state.unreadCount > 0 ? state.unreadCount - 1 : 0,
      );
    } catch (e) {
      // Handle error silently
    }
  }

  Future<void> markAllAsRead() async {
    try {
      await _repository.markAllAsRead();
      final updatedNotifications = state.notifications.map((n) {
        return n.copyWith(isRead: true, readAt: DateTime.now());
      }).toList();
      state = state.copyWith(
        notifications: updatedNotifications,
        unreadCount: 0,
      );
    } catch (e) {
      // Handle error silently
    }
  }

  Future<void> deleteNotification(String notificationId) async {
    try {
      await _repository.deleteNotification(notificationId);
      final wasUnread = state.notifications
          .firstWhere((n) => n.id == notificationId, orElse: () => state.notifications.first)
          .isRead == false;

      final updatedNotifications = state.notifications
          .where((n) => n.id != notificationId)
          .toList();

      state = state.copyWith(
        notifications: updatedNotifications,
        unreadCount: wasUnread && state.unreadCount > 0
            ? state.unreadCount - 1
            : state.unreadCount,
      );
    } catch (e) {
      // Handle error silently
    }
  }

  // Device registration for push notifications
  Future<bool> registerDevice({
    required String fcmToken,
    required String deviceType,
    String? deviceName,
    String? osVersion,
    String? appVersion,
  }) async {
    try {
      await _repository.registerDevice(
        fcmToken: fcmToken,
        deviceType: deviceType,
        deviceName: deviceName,
        osVersion: osVersion,
        appVersion: appVersion,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> unregisterDevice(String fcmToken) async {
    try {
      await _repository.unregisterDevice(fcmToken);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> loadDevices() async {
    try {
      final devices = await _repository.getDevices();
      state = state.copyWith(devices: devices);
    } catch (e) {
      // Silent fail
    }
  }

  // Preferences
  Future<void> updatePreferences(NotificationPreferences preferences) async {
    try {
      await _repository.updatePreferences(preferences);
      state = state.copyWith(preferences: preferences);
    } catch (e) {
      // Silent fail
    }
  }

  Future<void> updatePreferenceField(String field, dynamic value) async {
    try {
      await _repository.updatePreferenceFields({field: value});

      // Update local state
      final currentPrefs = state.preferences;
      if (currentPrefs != null) {
        final updatedPrefs = currentPrefs.copyWith();
        // Use reflection or manual mapping based on field name
        state = state.copyWith(preferences: _updatePreferenceByField(updatedPrefs, field, value));
      }
    } catch (e) {
      // Silent fail
    }
  }

  NotificationPreferences _updatePreferenceByField(
    NotificationPreferences prefs,
    String field,
    dynamic value,
  ) {
    switch (field) {
      case 'bidAlerts':
        return prefs.copyWith(bidAlerts: value as bool);
      case 'auctionAlerts':
        return prefs.copyWith(auctionAlerts: value as bool);
      case 'jobAlerts':
        return prefs.copyWith(jobAlerts: value as bool);
      case 'paymentAlerts':
        return prefs.copyWith(paymentAlerts: value as bool);
      case 'fraudAlerts':
        return prefs.copyWith(fraudAlerts: value as bool);
      case 'messageAlerts':
        return prefs.copyWith(messageAlerts: value as bool);
      case 'rentalAlerts':
        return prefs.copyWith(rentalAlerts: value as bool);
      case 'systemAlerts':
        return prefs.copyWith(systemAlerts: value as bool);
      case 'pushEnabled':
        return prefs.copyWith(pushEnabled: value as bool);
      case 'emailEnabled':
        return prefs.copyWith(emailEnabled: value as bool);
      case 'smsEnabled':
        return prefs.copyWith(smsEnabled: value as bool);
      case 'quietHoursStart':
        return prefs.copyWith(quietHoursStart: value as int?);
      case 'quietHoursEnd':
        return prefs.copyWith(quietHoursEnd: value as int?);
      default:
        return prefs;
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  // Add a notification (e.g., from push notification)
  void addNotification(NotificationModel notification) {
    final exists = state.notifications.any((n) => n.id == notification.id);
    if (!exists) {
      state = state.copyWith(
        notifications: [notification, ...state.notifications],
        unreadCount: notification.isRead ? state.unreadCount : state.unreadCount + 1,
      );
    }
  }
}

// Providers
final notificationsNotifierProvider = NotifierProvider<NotificationsNotifier, NotificationsState>(
  NotificationsNotifier.new,
);

final notificationsProvider = Provider<List<NotificationModel>>((ref) {
  return ref.watch(notificationsNotifierProvider).notifications;
});

final unreadNotificationsCountProvider = Provider<int>((ref) {
  return ref.watch(notificationsNotifierProvider).unreadCount;
});

final notificationsLoadingProvider = Provider<bool>((ref) {
  return ref.watch(notificationsNotifierProvider).isLoading;
});

final notificationPreferencesProvider = Provider<NotificationPreferences?>((ref) {
  return ref.watch(notificationsNotifierProvider).preferences;
});

final devicesProvider = Provider<List<DeviceInfo>>((ref) {
  return ref.watch(notificationsNotifierProvider).devices;
});
