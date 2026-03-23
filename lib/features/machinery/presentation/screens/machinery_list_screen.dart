import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ethio_omni_app/features/machinery/presentation/providers/machinery_provider.dart';

class MachineryListScreen extends ConsumerWidget {
  const MachineryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final machinery = ref.watch(machineryListProvider);
    final isLoading = ref.watch(machineryListNotifierProvider).isLoading;
    final error = ref.watch(machineryListNotifierProvider).error;
    final types = ref.watch(machineryTypesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Machinery Rental'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              context.push('/machinery/my-rentals');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: types.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _buildFilterChip(context, ref, 'All', null);
                }
                return _buildFilterChip(context, ref, types[index - 1], types[index - 1]);
              },
            ),
          ),
          Expanded(
            child: _buildBody(context, ref, machinery, isLoading, error),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(
    BuildContext context,
    WidgetRef ref,
    String label,
    String? type,
  ) {
    final selectedType = ref.watch(machineryListNotifierProvider).selectedType;
    final isSelected = (type == null && selectedType == null) ||
                       (type != null && selectedType == type);

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (selected) {
          ref.read(machineryListNotifierProvider.notifier).setType(type);
        },
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    List<dynamic> machinery,
    bool isLoading,
    String? error,
  ) {
    if (isLoading && machinery.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (error != null && machinery.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text('Failed to load machinery', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(error, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(machineryListNotifierProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (machinery.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.build, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text('No Machinery Available', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('Check back later for new listings', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(machineryListNotifierProvider.notifier).refresh();
      },
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: machinery.length,
        itemBuilder: (context, index) {
          final item = machinery[index];
          return _MachineryCard(
            machinery: item,
            onTap: () => context.push('/machinery/${item.id}'),
          );
        },
      ),
    );
  }
}

class _MachineryCard extends StatelessWidget {
  final dynamic machinery;
  final VoidCallback onTap;

  const _MachineryCard({
    required this.machinery,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey[200],
                child: machinery.imageUrl != null
                    ? Image.network(machinery.imageUrl, fit: BoxFit.cover)
                    : Center(
                        child: Icon(
                          Icons.build,
                          size: 48,
                          color: Colors.grey[400],
                        ),
                      ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      machinery.name ?? machinery.type ?? 'Equipment',
                      style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'ETB ${machinery.dailyRate?.toStringAsFixed(0) ?? '0'}/day',
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 12, color: Colors.grey[600]),
                        const SizedBox(width: 2),
                        Expanded(
                          child: Text(
                            machinery.location ?? 'Location N/A',
                            style: theme.textTheme.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
