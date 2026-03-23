import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ethio_omni_app/features/notifications/presentation/providers/notification_provider.dart';
import 'package:ethio_omni_app/features/notifications/data/models/notification_model.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsProvider);
    final isLoading = ref.watch(notificationsLoadingProvider);
    final error = ref.watch(notificationsNotifierProvider).error;
    final unreadCount = ref.watch(unreadNotificationsCountProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          if (unreadCount > 0)
            TextButton(
              onPressed: () {
                ref.read(notificationsNotifierProvider.notifier).markAllAsRead();
              },
              child: const Text('Mark all read'),
            ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(notificationsNotifierProvider.notifier).refresh();
        },
        child: _buildBody(context, ref, notifications, isLoading, error),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    List<NotificationModel> notifications,
    bool isLoading,
    String? error,
  ) {
    if (isLoading && notifications.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (error != null && notifications.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text('Failed to load notifications', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(error, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(notificationsNotifierProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (notifications.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.notifications_none, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text('No Notifications', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('You\'re all caught up!', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return _NotificationTile(
          notification: notification,
          onTap: () {
            if (!notification.isRead) {
              ref.read(notificationsNotifierProvider.notifier).markAsRead(notification.id);
            }
            if (notification.actionUrl != null) {
              context.push(notification.actionUrl!);
            }
          },
        );
      },
    );
  }
}

class _NotificationTile extends StatelessWidget {
  final NotificationModel notification;
  final VoidCallback onTap;

  const _NotificationTile({
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final icon = _getIconForType(notification.type);
    final color = _getColorForPriority(notification.priority);

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      color: notification.isRead ? null : theme.colorScheme.primary.withOpacity(0.05),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          notification.title,
          style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold,
              ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              notification.body,
              style: theme.textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              _formatTime(notification.createdAt),
              style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.5),
                  ),
            ),
          ],
        ),
        trailing: !notification.isRead
            ? Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
              )
            : null,
      ),
    );
  }

  IconData _getIconForType(NotificationType type) {
    switch (type) {
      case NotificationType.bid:
        return Icons.gavel;
      case NotificationType.auction:
        return Icons.access_time;
      case NotificationType.payment:
        return Icons.payment;
      case NotificationType.job:
        return Icons.work;
      case NotificationType.system:
        return Icons.info;
      default:
        return Icons.notifications;
    }
  }

  Color _getColorForPriority(NotificationPriority priority) {
    switch (priority) {
      case NotificationPriority.high:
        return Colors.red;
      case NotificationPriority.medium:
        return Colors.orange;
      case NotificationPriority.low:
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  String _formatTime(DateTime? time) {
    if (time == null) return '';
    final now = DateTime.now();
    final diff = now.difference(time);

    if (diff.inDays > 0) return '${diff.inDays}d ago';
    if (diff.inHours > 0) return '${diff.inHours}h ago';
    if (diff.inMinutes > 0) return '${diff.inMinutes}m ago';
    return 'Just now';
  }
}
