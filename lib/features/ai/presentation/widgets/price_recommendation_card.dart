import 'package:flutter/material.dart';
import 'package:ethio_omni_app/features/ai/data/models/ai_models.dart';

class PriceRecommendationCard extends StatelessWidget {
  final PriceRecommendationModel? recommendation;
  final bool isLoading;

  const PriceRecommendationCard({
    super.key,
    this.recommendation,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return _buildSkeleton();
    }

    if (recommendation == null) {
      return const SizedBox.shrink();
    }

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.trending_up,
                  color: Colors.green,
                ),
                const SizedBox(width: 8),
                Text(
                  'Price Recommendation',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                _buildConfidenceBadge(recommendation!.confidence),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildPriceRange(
                    context,
                    label: 'Min',
                    value: recommendation!.minPrice,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: _buildPriceRange(
                    context,
                    label: 'Optimal',
                    value: recommendation!.optimalPrice,
                    color: Colors.green,
                    isHighlighted: true,
                  ),
                ),
                Expanded(
                  child: _buildPriceRange(
                    context,
                    label: 'Max',
                    value: recommendation!.maxPrice,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, size: 20, color: Colors.blue[700]),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Market average: ETB ${recommendation!.marketAverage.toStringAsFixed(0)}',
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: recommendation!.factors
                  .map((factor) => Chip(
                        label: Text(
                          factor,
                          style: const TextStyle(fontSize: 11),
                        ),
                        backgroundColor: Colors.grey[200],
                        padding: EdgeInsets.zero,
                      ))
                  .toList(),
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
                    height: 60,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 60,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 60,
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

  Widget _buildPriceRange(
    BuildContext context, {
    required String label,
    required double value,
    required Color color,
    bool isHighlighted = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isHighlighted ? color.withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: isHighlighted ? Border.all(color: color) : null,
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'ETB ${value.toStringAsFixed(0)}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isHighlighted ? color : Colors.black,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfidenceBadge(double confidence) {
    final percentage = (confidence * 100).round();
    Color color;
    if (confidence >= 0.8) {
      color = Colors.green;
    } else if (confidence >= 0.6) {
      color = Colors.orange;
    } else {
      color = Colors.red;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        '$percentage% confidence',
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
