import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/jobs/data/models/job_model.dart';
import 'package:ethio_omni_app/features/jobs/data/repositories/jobs_repository.dart';

// Job state
class JobsState {
  final List<JobModel> jobs;
  final List<JobModel> activeJobs;
  final JobModel? selectedJob;
  final bool isLoading;
  final String? error;

  const JobsState({
    this.jobs = const [],
    this.activeJobs = const [],
    this.selectedJob,
    this.isLoading = false,
    this.error,
  });

  JobsState copyWith({
    List<JobModel>? jobs,
    List<JobModel>? activeJobs,
    JobModel? selectedJob,
    bool? isLoading,
    String? error,
  }) {
    return JobsState(
      jobs: jobs ?? this.jobs,
      activeJobs: activeJobs ?? this.activeJobs,
      selectedJob: selectedJob ?? this.selectedJob,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

// Jobs notifier
class JobsNotifier extends Notifier<JobsState> {
  late final JobsRepository _jobsRepository;

  @override
  JobsState build() {
    _jobsRepository = ref.watch(jobsRepositoryProvider);
    return const JobsState();
  }

  Future<void> getJobs({String? status}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final jobs = await _jobsRepository.getJobs(status: status);
      state = state.copyWith(
        jobs: jobs,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> getActiveJobs() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final jobs = await _jobsRepository.getActiveJobs();
      state = state.copyWith(
        activeJobs: jobs,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> getJobDetails(String jobId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final job = await _jobsRepository.getJobDetails(jobId);
      state = state.copyWith(
        selectedJob: job,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> updateJobStatus(String jobId, String status, {String? notes}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final updatedJob = await _jobsRepository.updateJobStatus(jobId, status, notes: notes);
      state = state.copyWith(
        selectedJob: updatedJob,
        isLoading: false,
      );
      // Refresh active jobs list
      getActiveJobs();
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> updateLocation(String jobId, double lat, double lng) async {
    try {
      await _jobsRepository.updateLocation(jobId, lat, lng);
    } catch (e) {
      // Silently fail for location updates
      debugPrint('Location update failed: $e');
    }
  }

  Future<bool> verifyPickup(String jobId, String qrCode) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final updatedJob = await _jobsRepository.verifyPickup(jobId, qrCode);
      state = state.copyWith(
        selectedJob: updatedJob,
        isLoading: false,
      );
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<bool> verifyDelivery(String jobId, String qrCode) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final updatedJob = await _jobsRepository.verifyDelivery(jobId, qrCode);
      state = state.copyWith(
        selectedJob: updatedJob,
        isLoading: false,
      );
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<void> uploadDeliveryProof(
    String jobId, {
    required List<String> photos,
    String? recipientName,
    String? notes,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final updatedJob = await _jobsRepository.uploadDeliveryProof(
        jobId,
        photos: photos,
        recipientName: recipientName,
        notes: notes,
      );
      state = state.copyWith(
        selectedJob: updatedJob,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  void selectJob(JobModel job) {
    state = state.copyWith(selectedJob: job);
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearSelectedJob() {
    state = state.copyWith(selectedJob: null);
  }
}

// Providers
final jobsNotifierProvider = NotifierProvider<JobsNotifier, JobsState>(JobsNotifier.new);

// Computed providers
final activeJobsProvider = Provider<List<JobModel>>((ref) {
  return ref.watch(jobsNotifierProvider).activeJobs;
});

final selectedJobProvider = Provider<JobModel?>((ref) {
  return ref.watch(jobsNotifierProvider).selectedJob;
});

final jobsLoadingProvider = Provider<bool>((ref) {
  return ref.watch(jobsNotifierProvider).isLoading;
});

final jobsErrorProvider = Provider<String?>((ref) {
  return ref.watch(jobsNotifierProvider).error;
});
