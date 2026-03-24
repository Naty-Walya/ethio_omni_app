import 'package:flutter/material.dart';
import 'package:ethio_omni_app/features/ai/data/models/ai_models.dart';

class DemandIndicator extends StatelessWidget {
  final DemandPredictionModel? prediction;
  final bool isLoading;

  const DemandIndicator({
    super.key,
    this.prediction,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return _buildSkeleton();
    }

    if (prediction == null) {
      return const SizedBox.shrink();
    }

    final demandColor = prediction!.demandColor;
    final demandLabel = prediction!.demandLabel;

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.trending_up,
                  color: demandColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Demand Forecast',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                _buildDemandBadge(demandLabel, demandColor),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildStat(
                    context,
                    label: 'Demand Index',
                    value: '${prediction!.demandIndex}/100',
                  ),
                ),
                Expanded(
                  child: _buildStat(
                    context,
                    label: 'Confidence',
                    value: '${(prediction!.confidence * 100).toInt()}%',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: prediction!.demandIndex / 100,
                minHeight: 12,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation<Color>(demandColor),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              prediction!.recommendation,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 24,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDemandBadge(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(30),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildStat(BuildContext context, {required String label, required String value}) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
        ),
      ],
    );
  }

