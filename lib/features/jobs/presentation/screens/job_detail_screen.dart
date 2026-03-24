import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ethio_omni_app/features/jobs/presentation/providers/jobs_provider.dart';
import 'package:ethio_omni_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:ethio_omni_app/features/jobs/data/models/job_model.dart';

class JobDetailScreen extends ConsumerStatefulWidget {
  final String jobId;

  const JobDetailScreen({
    super.key,
    required this.jobId,
  });

  @override
  ConsumerState<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends ConsumerState<JobDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(jobsNotifierProvider.notifier).getJobDetails(widget.jobId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final jobsState = ref.watch(jobsNotifierProvider);
    final authState = ref.watch(authNotifierProvider);
    final job = jobsState.selectedJob;
    final isDriver = authState.user?.role == 'DRIVER';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.read(jobsNotifierProvider.notifier).getJobDetails(widget.jobId),
          ),
        ],
      ),
      body: jobsState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : jobsState.error != null
              ? _buildErrorView(jobsState.error!)
              : job == null
                  ? const Center(child: Text('Job not found'))
                  : _buildJobDetail(job, isDriver),
      bottomNavigationBar: job != null && isDriver && job.isActive
          ? _buildDriverActions(job)
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
            onPressed: () => ref.read(jobsNotifierProvider.notifier).getJobDetails(widget.jobId),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildJobDetail(JobModel job, bool isDriver) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Status Card
          _buildStatusCard(job),
          const SizedBox(height: 16),

          // Cargo Details
          _buildCargoDetails(job),
          const SizedBox(height: 16),

          // Locations
          _buildLocations(job),
          const SizedBox(height: 16),

          // Contact Info
          if (!isDriver && job.driver != null)
            _buildDriverInfo(job.driver!)
          else if (isDriver && job.freightPost?.shipper != null)
            _buildShipperInfo(job.freightPost!.shipper!),
          const SizedBox(height: 16),

          // Payment Info
          _buildPaymentInfo(job),

          // Delivery Proof (if available)
          if (job.deliveryPhotos.isNotEmpty) ...[
            const SizedBox(height: 16),
            _buildDeliveryProof(job),
          ],
        ],
      ),
    );
  }

  Widget _buildStatusCard(JobModel job) {
    final statusColor = _getStatusColor(job.status);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _getStatusIcon(job.status),
                    color: statusColor,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        job.statusDisplay,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: statusColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Job ID: ${job.id.substring(0, 8)}...',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (job.nextStatus.isNotEmpty) ...[
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 8),
              Text(
                'Next: ${job.nextStatusDisplay}',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildCargoDetails(JobModel job) {
    final post = job.freightPost;
    if (post == null) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cargo Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              post.title,
              style: const TextStyle(fontSize: 16),
            ),
            if (post.cargoType.isNotEmpty) ...[
              const SizedBox(height: 8),
              _buildInfoRow('Cargo Type', post.cargoType),
            ],
            _buildInfoRow('Weight', '${post.weight} kg'),
            if (job.bid != null)
              _buildInfoRow('Bid Amount', '${job.bid!.amount.toStringAsFixed(0)} ${job.bid!.currency}'),
          ],
        ),
      ),
    );
  }

  Widget _buildLocations(JobModel job) {
    final post = job.freightPost;
    if (post == null) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Route',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Column(
                  children: [
                    const Icon(Icons.location_on, color: Colors.green, size: 28),
                    Container(width: 2, height: 40, color: Colors.grey[300]),
                    const Icon(Icons.location_on, color: Colors.red, size: 28),
                  ],
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pickup Location',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        post.pickupLocation,
                        style: const TextStyle(fontSize: 16),
                      ),
                      if (post.pickupDate != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          'Scheduled: ${_formatDate(post.pickupDate!)}',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                      const SizedBox(height: 24),
                      Text(
                        'Delivery Location',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        post.deliveryLocation,
                        style: const TextStyle(fontSize: 16),
                      ),
                      if (post.preferredDeliveryDate != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          'Preferred: ${_formatDate(post.preferredDeliveryDate!)}',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDriverInfo(DriverSummary driver) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Driver Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue[100],
                child: Text(
                  driver.user.displayName[0].toUpperCase(),
                  style: const TextStyle(color: Colors.blue),
                ),
              ),
              title: Text(driver.user.displayName),
              subtitle: Text(driver.user.phone ?? 'No phone'),
              trailing: IconButton(
                icon: const Icon(Icons.phone),
                onPressed: driver.user.phone != null
                    ? () => _showCallDialog(driver.user.phone!)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShipperInfo(ShipperSummary shipper) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Shipper Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green[100],
                child: Text(
                  shipper.user.displayName[0].toUpperCase(),
                  style: const TextStyle(color: Colors.green),
                ),
              ),
              title: Text(shipper.user.displayName),
              subtitle: Text(shipper.user.phone ?? 'No phone'),
              trailing: shipper.user.phone != null
                  ? IconButton(
                      icon: const Icon(Icons.phone),
                      onPressed: () => _showCallDialog(shipper.user.phone!),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentInfo(JobModel job) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Payment',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            _buildInfoRow('Status', job.paymentStatus),
            if (job.bid != null)
              _buildInfoRow('Amount', '${job.bid!.amount.toStringAsFixed(0)} ${job.bid!.currency}'),
          ],
        ),
      ),
    );
  }

  Widget _buildDeliveryProof(JobModel job) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery Proof',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            if (job.recipientName?.isNotEmpty == true)
              _buildInfoRow('Recipient', job.recipientName!),
            if (job.notes?.isNotEmpty == true)
              _buildInfoRow('Notes', job.notes!),
            const SizedBox(height: 8),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: job.deliveryPhotos.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Icon(Icons.image, size: 40, color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
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

  Widget? _buildDriverActions(JobModel job) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () => _showStatusUpdateDialog(job),
          style: ElevatedButton.styleFrom(
            backgroundColor: _getStatusColor(job.status),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(_getStatusActionIcon(job.status)),
              const SizedBox(width: 8),
              Text(job.nextStatusDisplay),
            ],
          ),
        ),
      ),
    );
  }

  void _showStatusUpdateDialog(JobModel job) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('${job.nextStatusDisplay}?'),
        content: Text(
          'Are you sure you want to update the job status to ${job.statusDisplay}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              await ref.read(jobsNotifierProvider.notifier).updateJobStatus(
                    job.id,
                    job.nextStatus,
                  );
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }

  void _showCallDialog(String phone) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Contact'),
        content: Text('Call $phone?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // TODO: Implement phone call
            },
            child: const Text('Call'),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'ASSIGNED':
        return Colors.blue;
      case 'PICKUP_READY':
        return Colors.orange;
      case 'IN_TRANSIT':
        return Colors.indigo;
      case 'NEAR_DELIVERY':
        return Colors.purple;
      case 'DELIVERED':
        return Colors.green;
      case 'COMPLETED':
        return Colors.teal;
      default:
        return Colors.grey;
    }
  }

  IconData _getStatusIcon(String status) {
    switch (status) {
      case 'ASSIGNED':
        return Icons.assignment;
      case 'PICKUP_READY':
        return Icons.local_shipping;
      case 'IN_TRANSIT':
        return Icons.local_shipping;
      case 'NEAR_DELIVERY':
        return Icons.near_me;
      case 'DELIVERED':
        return Icons.check_circle;
      case 'COMPLETED':
        return Icons.done_all;
      default:
        return Icons.help;
    }
  }

  IconData _getStatusActionIcon(String status) {
    switch (status) {
      case 'ASSIGNED':
        return Icons.local_shipping;
      case 'PICKUP_READY':
        return Icons.play_arrow;
      case 'IN_TRANSIT':
        return Icons.location_on;
      case 'NEAR_DELIVERY':
        return Icons.check_circle;
      default:
        return Icons.help;
    }
  }
}
