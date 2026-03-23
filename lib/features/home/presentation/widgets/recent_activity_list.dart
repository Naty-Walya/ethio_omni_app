import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentActivityList extends ConsumerWidget {
  const RecentActivityList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Mock recent activities
    final activities = [
      {
        'type': 'bid',
        'title': 'New bid received',
        'description': 'Driver Ahmed placed a bid on your freight',
        'time': '5 min ago',
        'icon': Icons.gavel,
        'color': Colors.blue,
      },
      {
        'type': 'payment',
        'title': 'Payment received',
        'description': 'ETB 5,000 deposited to your wallet',
        'time': '1 hour ago',
        'icon': Icons.payment,
        'color': Colors.green,
      },
      {
        'type': 'job',
        'title': 'Job completed',
        'description': 'Freight delivery confirmed',
        'time': '3 hours ago',
        'icon': Icons.check_circle,
        'color': Colors.orange,
      },
      {
        'type': 'auction',
        'title': 'Auction ended',
        'description': 'Your auction closed with 5 bids',
        'time': 'Yesterday',
        'icon': Icons.timer_off,
        'color': Colors.purple,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Activity',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to full activity history
                },
                child: const Text('See All'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: activities.length,
            itemBuilder: (context, index) {
              final activity = activities[index];
              return _ActivityItem(
                icon: activity['icon'] as IconData,
                title: activity['title'] as String,
                description: activity['description'] as String,
                time: activity['time'] as String,
                color: activity['color'] as Color,
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ActivityItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String time;
  final Color color;

  const _ActivityItem({
    required this.icon,
    required this.title,
    required this.description,
    required this.time,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(0.6),
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            time,
            style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.4),
                  fontSize: 11,
                ),
          ),
        ],
      ),
    );
  }
}
