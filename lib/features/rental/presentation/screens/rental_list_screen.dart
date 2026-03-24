import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ethio_omni_app/features/rental/presentation/providers/rental_provider.dart';
import 'package:ethio_omni_app/features/auth/presentation/providers/auth_provider.dart';

class RentalListScreen extends ConsumerStatefulWidget {
  const RentalListScreen({super.key});

  @override
  ConsumerState<RentalListScreen> createState() => _RentalListScreenState();
}

class _RentalListScreenState extends ConsumerState<RentalListScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    Future.microtask(() {
      ref.read(rentalNotifierProvider.notifier).getAvailableAssets();
    });
  }

  @override
  Widget build(BuildContext context) {
    final rentalState = ref.watch(rentalNotifierProvider);
    final authState = ref.watch(authNotifierProvider);
    final isFleetOwner = authState.user?.role == 'FLEET_OWNER';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipment Rental'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadData,
          ),
        ],
      ),
      body: rentalState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : rentalState.error != null
              ? _buildErrorView(rentalState.error!)
              : _buildAssetList(rentalState),
      floatingActionButton: isFleetOwner
          ? FloatingActionButton.extended(
              onPressed: () {
                // TODO: Navigate to register asset screen
                _showRegisterAssetDialog();
              },
              icon: const Icon(Icons.add),
              label: const Text('Register Asset'),
            )
          : null,
    );
  }

  Widget _buildErrorView(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 48, color: Colors.red[300]),
          const SizedBox(height: 16),
          Text('Error: $error'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _loadData,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildAssetList(RentalState state) {
    final assets = state.availableAssets;

    if (assets.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.construction, size: 64, color: Colors.grey[300]),
            const SizedBox(height: 16),
            Text(
              'No equipment available',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Check back later for available machinery',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[500],
                  ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async => _loadData(),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: assets.length,
        itemBuilder: (context, index) {
          final asset = assets[index];
          return _AssetCard(
            asset: asset,
            onTap: () => _showAssetDetailDialog(asset),
          );
        },
      ),
    );
  }

  void _showAssetDetailDialog(dynamic asset) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        _getAssetIcon(asset.type),
                        size: 40,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            asset.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            asset.typeDisplay,
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          if (asset.dailyRate != null)
                            Text(
                              '${asset.dailyRate!.toStringAsFixed(0)} ETB/day',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Specifications',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                _buildSpecRow('Status', asset.statusDisplay),
                if (asset.capacity != null)
                  _buildSpecRow('Capacity', '${asset.capacity} tons'),
                if (asset.year != null)
                  _buildSpecRow('Year', '${asset.year}'),
                if (asset.plateNumber != null)
                  _buildSpecRow('Plate Number', asset.plateNumber!),
                if (asset.currentLocation != null)
                  _buildSpecRow('Location', asset.currentLocation!),
                const SizedBox(height: 24),
                if (asset.owner != null) ...[
                  const Text(
                    'Owner',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green[100],
                      child: Text(
                        asset.owner!.user.displayName[0].toUpperCase(),
                        style: TextStyle(color: Colors.green[800]),
                      ),
                    ),
                    title: Text(asset.owner!.user.displayName),
                    subtitle: asset.owner!.user.isFaydaVerified == true
                        ? const Row(
                            children: [
                              Icon(Icons.verified, size: 14, color: Colors.blue),
                              SizedBox(width: 4),
                              Text('Fayda Verified', style: TextStyle(fontSize: 12)),
                            ],
                          )
                        : null,
                  ),
                ],
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _showBookingDialog(asset);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text('Request Booking'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSpecRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey[600]),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  void _showBookingDialog(dynamic asset) {
    DateTime? startDate;
    DateTime? endDate;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text('Book ${asset.name}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text('Start Date'),
                subtitle: Text(startDate != null
                    ? '${startDate!.day}/${startDate!.month}/${startDate!.year}'
                    : 'Select date'),
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (date != null) {
                    setState(() => startDate = date);
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text('End Date'),
                subtitle: Text(endDate != null
                    ? '${endDate!.day}/${endDate!.month}/${endDate!.year}'
                    : 'Select date'),
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: startDate ?? DateTime.now(),
                    firstDate: startDate ?? DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (date != null) {
                    setState(() => endDate = date);
                  }
                },
              ),
              if (startDate != null && endDate != null && asset.dailyRate != null) ...[
                const Divider(),
                Text(
                  'Total: ${_calculateTotal(startDate!, endDate!, asset.dailyRate!)} ETB',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: startDate != null && endDate != null
                  ? () async {
                      Navigator.pop(context);
                      final success = await ref.read(rentalNotifierProvider.notifier).createBooking(
                            assetId: asset.id,
                            startDate: startDate!,
                            endDate: endDate!,
                          );
                      if (success && mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Booking request sent!')),
                        );
                      }
                    }
                  : null,
              child: const Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }

  int _calculateTotal(DateTime start, DateTime end, double dailyRate) {
    final days = end.difference(start).inDays + 1;
    return (days * dailyRate).round();
  }

  void _showRegisterAssetDialog() {
    // TODO: Implement asset registration dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Register Asset'),
        content: const Text('Asset registration form coming soon...'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  IconData _getAssetIcon(String type) {
    switch (type) {
      case 'TRUCK':
        return Icons.local_shipping;
      case 'MACHINERY':
        return Icons.construction;
      case 'CAR':
        return Icons.directions_car;
      case 'VAN':
        return Icons.airport_shuttle;
      default:
        return Icons.construction;
    }
  }
}

class _AssetCard extends StatelessWidget {
  final dynamic asset;
  final VoidCallback onTap;

  const _AssetCard({
    required this.asset,
    required this.onTap,
  });

  IconData _getAssetIcon(String type) {
    switch (type) {
      case 'TRUCK':
        return Icons.local_shipping;
      case 'MACHINERY':
        return Icons.construction;
      case 'CAR':
        return Icons.directions_car;
      case 'VAN':
        return Icons.airport_shuttle;
      default:
        return Icons.construction;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getAssetIcon(asset.type),
                  color: Colors.blue,
                  size: 32,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      asset.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      asset.typeDisplay,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    if (asset.currentLocation != null)
                      Text(
                        asset.currentLocation!,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
              if (asset.dailyRate != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${asset.dailyRate!.toStringAsFixed(0)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'ETB/day',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
