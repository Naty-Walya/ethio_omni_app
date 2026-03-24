import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ethio_omni_app/features/jobs/presentation/providers/jobs_provider.dart';
import 'package:ethio_omni_app/features/auth/presentation/providers/auth_provider.dart';

class JobsListScreen extends ConsumerStatefulWidget {
  const JobsListScreen({super.key});

  @override
  ConsumerState<JobsListScreen> createState() => _JobsListScreenState();
}

class _JobsListScreenState extends ConsumerState<JobsListScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadJobs();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _loadJobs() {
    Future.microtask(() {
      ref.read(jobsNotifierProvider.notifier).getActiveJobs();
    });
  }

  @override
  Widget build(BuildContext context) {
    final jobsState = ref.watch(jobsNotifierProvider);
    final authState = ref.watch(authNotifierProvider);
    final isDriver = authState.user?.role == 'DRIVER';

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Jobs'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Active'),
            Tab(text: 'History'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadJobs,
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Active jobs tab
          _buildActiveJobsList(jobsState),
          // History tab
          _buildHistoryList(jobsState),
        ],
      ),
      floatingActionButton: isDriver
          ? FloatingActionButton.extended(
              onPressed: () => context.push('/auctions'),
              icon: const Icon(Icons.local_shipping),
              label: const Text('Find Loads'),
            )
          : null,
    );
  }

  Widget _buildActiveJobsList(JobsState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 48, color: Colors.red[300]),
            const SizedBox(height: 16),
            Text('Error: ${state.error}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadJobs,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    final activeJobs = state.activeJobs;

    if (activeJobs.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_shipping_outlined, size: 64, color: Colors.grey[300]),
            const SizedBox(height: 16),
            Text(
              'No active jobs',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Jobs will appear here after winning an auction',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[500],
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async => _loadJobs(),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: activeJobs.length,
        itemBuilder: (context, index) {
          final job = activeJobs[index];
          return _JobCard(
            job: job,
            onTap: () => context.push('/jobs/${job.id}'),
          );
        },
      ),
    );
  }

  Widget _buildHistoryList(JobsState state) {
    // Filter completed jobs
    final completedJobs = state.jobs.where((j) => j.isCompleted).toList();

    if (completedJobs.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.history, size: 64, color: Colors.grey[300]),
            const SizedBox(height: 16),
            Text(
              'No completed jobs yet',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: completedJobs.length,
      itemBuilder: (context, index) {
        final job = completedJobs[index];
        return _JobCard(
          job: job,
          onTap: () => context.push('/jobs/${job.id}'),
        );
      },
    );
  }
}

class _JobCard extends StatelessWidget {
  final dynamic job;
  final VoidCallback onTap;

  const _JobCard({
    required this.job,
    required this.onTap,
  });

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getStatusColor(job.status).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      job.statusDisplay,
                      style: TextStyle(
                        color: _getStatusColor(job.status),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (job.bid != null)
                    Text(
                      '${job.bid.amount.toStringAsFixed(0)} ${job.bid.currency}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              if (job.freightPost != null) ...[
                Text(
                  job.freightPost.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                _buildLocationRow(
                  Icons.location_on,
                  Colors.green,
                  job.freightPost.pickupLocation,
                ),
                const SizedBox(height: 4),
                _buildLocationRow(
                  Icons.location_on,
                  Colors.red,
                  job.freightPost.deliveryLocation,
                ),
              ],
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.scale, size: 16, color: Colors.grey[600]),
                  const SizedBox(width: 4),
                  Text(
                    '${job.freightPost?.weight.toStringAsFixed(0) ?? 'N/A'} kg',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.inventory, size: 16, color: Colors.grey[600]),
                  const SizedBox(width: 4),
                  Text(
                    job.freightPost?.cargoType ?? 'N/A',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationRow(IconData icon, Color color, String location) {
    return Row(
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            location,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 14,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
