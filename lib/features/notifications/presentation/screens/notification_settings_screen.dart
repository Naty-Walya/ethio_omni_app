import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/notifications/presentation/providers/notification_provider.dart';
import 'package:ethio_omni_app/features/notifications/data/models/notification_model.dart';

class NotificationSettingsScreen extends ConsumerWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(notificationPreferencesProvider);
    final isLoading = ref.watch(notificationsLoadingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Settings'),
      ),
      body: isLoading && preferences == null
          ? const Center(child: CircularProgressIndicator())
          : preferences == null
              ? const Center(child: Text('Failed to load settings'))
              : _SettingsBody(preferences: preferences),
    );
  }
}

class _SettingsBody extends ConsumerWidget {
  final NotificationPreferences preferences;

  const _SettingsBody({required this.preferences});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Push Notifications Section
        _buildSectionHeader(context, 'Push Notifications'),
        _buildSwitchTile(
          context,
          title: 'Enable Push Notifications',
          subtitle: 'Receive notifications on your device',
          value: preferences.pushEnabled,
          onChanged: (value) => _updatePreference(ref, 'pushEnabled', value),
        ),
        const Divider(),

        // Category Toggles
        _buildSectionHeader(context, 'Notification Categories'),
        _buildSwitchTile(
          context,
          title: 'Bid Alerts',
          subtitle: 'Get notified about bid updates',
          value: preferences.bidAlerts,
          onChanged: (value) => _updatePreference(ref, 'bidAlerts', value),
        ),
        _buildSwitchTile(
          context,
          title: 'Auction Alerts',
          subtitle: 'Auction status and outbid notifications',
          value: preferences.auctionAlerts,
          onChanged: (value) => _updatePreference(ref, 'auctionAlerts', value),
        ),
        _buildSwitchTile(
          context,
          title: 'Job Alerts',
          subtitle: 'Job assignments and updates',
          value: preferences.jobAlerts,
          onChanged: (value) => _updatePreference(ref, 'jobAlerts', value),
        ),
        _buildSwitchTile(
          context,
          title: 'Payment Alerts',
          subtitle: 'Payment confirmations and receipts',
          value: preferences.paymentAlerts,
          onChanged: (value) => _updatePreference(ref, 'paymentAlerts', value),
        ),
        _buildSwitchTile(
          context,
          title: 'Rental Alerts',
          subtitle: 'Equipment rental updates',
          value: preferences.rentalAlerts,
          onChanged: (value) => _updatePreference(ref, 'rentalAlerts', value),
        ),
        _buildSwitchTile(
          context,
          title: 'Security Alerts',
          subtitle: 'Fraud alerts and security notices',
          value: preferences.fraudAlerts,
          onChanged: (value) => _updatePreference(ref, 'fraudAlerts', value),
        ),
        _buildSwitchTile(
          context,
          title: 'Messages',
          subtitle: 'New message notifications',
          value: preferences.messageAlerts,
          onChanged: (value) => _updatePreference(ref, 'messageAlerts', value),
        ),
        _buildSwitchTile(
          context,
          title: 'System Updates',
          subtitle: 'App updates and system notifications',
          value: preferences.systemAlerts,
          onChanged: (value) => _updatePreference(ref, 'systemAlerts', value),
        ),
        const Divider(),

        // Quiet Hours
        _buildSectionHeader(context, 'Quiet Hours'),
        _buildSwitchTile(
          context,
          title: 'Enable Quiet Hours',
          subtitle: 'Pause push notifications during set hours',
          value: preferences.quietHoursStart != null,
          onChanged: (value) {
            if (value) {
              _showQuietHoursDialog(context, ref, preferences);
            } else {
              _updatePreference(ref, 'quietHoursStart', null);
              _updatePreference(ref, 'quietHoursEnd', null);
            }
          },
        ),
        if (preferences.quietHoursStart != null && preferences.quietHoursEnd != null)
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              '${_formatHour(preferences.quietHoursStart!)} - ${_formatHour(preferences.quietHoursEnd!)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),

        const Divider(),

        // Other Channels
        _buildSectionHeader(context, 'Other Channels'),
        _buildSwitchTile(
          context,
          title: 'Email Notifications',
          subtitle: 'Also send notifications via email',
          value: preferences.emailEnabled,
          onChanged: (value) => _updatePreference(ref, 'emailEnabled', value),
        ),
        _buildSwitchTile(
          context,
          title: 'SMS Notifications',
          subtitle: 'Send critical alerts via SMS (may incur charges)',
          value: preferences.smsEnabled,
          onChanged: (value) => _updatePreference(ref, 'smsEnabled', value),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Widget _buildSwitchTile(
    BuildContext context, {
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
      value: value,
      onChanged: onChanged,
    );
  }

  void _updatePreference(WidgetRef ref, String field, dynamic value) {
    ref.read(notificationsNotifierProvider.notifier).updatePreferenceField(field, value);
  }

  String _formatHour(int hour) {
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    return '$displayHour:00 $period';
  }

  void _showQuietHoursDialog(BuildContext context, WidgetRef ref, NotificationPreferences prefs) {
    int startHour = prefs.quietHoursStart ?? 22;
    int endHour = prefs.quietHoursEnd ?? 7;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Set Quiet Hours'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Start Time'),
              trailing: Text(_formatHour(startHour)),
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: startHour, minute: 0),
                );
                if (time != null) {
                  startHour = time.hour;
                }
              },
            ),
            ListTile(
              title: const Text('End Time'),
              trailing: Text(_formatHour(endHour)),
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: endHour, minute: 0),
                );
                if (time != null) {
                  endHour = time.hour;
                }
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              _updatePreference(ref, 'quietHoursStart', startHour);
              _updatePreference(ref, 'quietHoursEnd', endHour);
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
