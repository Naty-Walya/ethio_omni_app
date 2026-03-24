import 'package:flutter/material.dart';
import 'package:ethio_omni_app/features/ai/data/models/ai_models.dart';

class FraudAlertBanner extends StatelessWidget {
  final FraudCheckResult? fraudCheck;
  final VoidCallback? onDismiss;

  const FraudAlertBanner({
    super.key,
    this.fraudCheck,
    this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    if (fraudCheck == null || !fraudCheck!.isFraudulent) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: fraudCheck!.severityColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: fraudCheck!.severityColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: fraudCheck!.severityColor,
                size: 28,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Security Alert',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: fraudCheck!.severityColor,
                          ),
                    ),
                    Text(
                      'Risk Score: ${(fraudCheck!.riskScore * 100).toStringAsFixed(0)}%',
                      style: TextStyle(
                        color: fraudCheck!.severityColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              if (onDismiss != null)
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: onDismiss,
                  color: fraudCheck!.severityColor,
                ),
            ],
          ),
          const SizedBox(height: 12),
          ...fraudCheck!.alerts.map((alert) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: fraudCheck!.severityColor,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        alert,
                        style: TextStyle(
                          color: fraudCheck!.severityColor.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          if (fraudCheck!.shouldBlock) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.block, color: Colors.red[700], size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'This action has been blocked for your security.',
                      style: TextStyle(
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class FraudAlertListItem extends StatelessWidget {
  final FraudAlertModel alert;
  final VoidCallback? onTap;

  const FraudAlertListItem({
    super.key,
    required this.alert,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: alert.severityColor.withOpacity(0.2),
          child: Icon(
            Icons.warning,
            color: alert.severityColor,
          ),
        ),
        title: Text(alert.alertTypeDisplay),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Risk: ${(alert.riskScore * 100).toStringAsFixed(0)}%'),
            if (alert.user != null)
              Text('User: ${alert.user!.displayName}'),
          ],
        ),
        trailing: Chip(
          label: Text(
            alert.status,
            style: const TextStyle(fontSize: 10),
          ),
          backgroundColor: _getStatusColor(alert.status).withOpacity(0.2),
        ),
        onTap: onTap,
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'OPEN':
        return Colors.red;
      case 'UNDER_REVIEW':
        return Colors.orange;
      case 'CONFIRMED_FRAUD':
        return Colors.red.shade800;
      case 'FALSE_POSITIVE':
        return Colors.green;
      case 'RESOLVED':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}
