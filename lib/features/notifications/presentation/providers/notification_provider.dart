import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/notifications/data/models/notification_model.dart';
import 'package:ethio_omni_app/features/notifications/data/repositories/notification_repository.dart';

// Notifications state
class NotificationsState {
  final List<NotificationModel> notifications;
  final bool isLoading;
  final String? error;
  final int unreadCount;

  const NotificationsState({
    this.notifications = const [],
    this.isLoading = false,
    this.error,
    this.unreadCount = 0,
  });

  NotificationsState copyWith({
    List<NotificationModel>? notifications,
    bool? isLoading,
    String? error,
    int? unreadCount,
  }) {
    return NotificationsState(
      notifications: notifications ?? this.notifications,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      unreadCount: unreadCount ?? this.unreadCount,
    );
  }
}

class NotificationsNotifier extends Notifier<NotificationsState> {
  late final NotificationRepository _repository;

  @override
  NotificationsState build() {
    _repository = ref.watch(notificationRepositoryProvider);
    _loadNotifications();
    _loadUnreadCount();
    return const NotificationsState();
  }

  Future<void> _loadNotifications() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final notifications = await _repository.getNotifications();
      state = state.copyWith(
        notifications: notifications,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
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

  Future<void> refresh() async {
    await _loadNotifications();
    await _loadUnreadCount();
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

  void clearError() {
    state = state.copyWith(error: null);
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
