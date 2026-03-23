import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/freight/data/models/freight_model.dart';
import 'package:ethio_omni_app/features/freight/data/repositories/freight_repository.dart';

// Freight posts state
class FreightPostsState {
  final List<FreightPostModel> posts;
  final bool isLoading;
  final String? error;
  final int page;
  final bool hasMore;

  const FreightPostsState({
    this.posts = const [],
    this.isLoading = false,
    this.error,
    this.page = 1,
    this.hasMore = true,
  });

  FreightPostsState copyWith({
    List<FreightPostModel>? posts,
    bool? isLoading,
    String? error,
    int? page,
    bool? hasMore,
  }) {
    return FreightPostsState(
      posts: posts ?? this.posts,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      page: page ?? this.page,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class FreightPostsNotifier extends Notifier<FreightPostsState> {
  late final FreightRepository _repository;

  @override
  FreightPostsState build() {
    _repository = ref.watch(freightRepositoryProvider);
    return const FreightPostsState();
  }

  Future<void> loadPosts({bool refresh = false}) async {
    if (state.isLoading) return;

    final page = refresh ? 1 : state.page;
    state = state.copyWith(isLoading: true, error: null);

    try {
      final posts = await _repository.getFreightPosts(page: page);
      state = state.copyWith(
        posts: refresh ? posts : [...state.posts, ...posts],
        isLoading: false,
        page: page + 1,
        hasMore: posts.length == 20,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Current post state
class CurrentPostState {
  final FreightPostModel? post;
  final bool isLoading;
  final String? error;

  const CurrentPostState({
    this.post,
    this.isLoading = false,
    this.error,
  });

  CurrentPostState copyWith({
    FreightPostModel? post,
    bool? isLoading,
    String? error,
  }) {
    return CurrentPostState(
      post: post ?? this.post,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class CurrentPostNotifier extends Notifier<CurrentPostState> {
  late final FreightRepository _repository;

  @override
  CurrentPostState build() {
    _repository = ref.watch(freightRepositoryProvider);
    return const CurrentPostState();
  }

  Future<void> loadPost(String id) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final post = await _repository.getFreightPost(id);
      state = state.copyWith(post: post, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  Future<void> createPost(CreateFreightPostRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final post = await _repository.createFreightPost(request);
      state = state.copyWith(post: post, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }
}

// Providers
final freightPostsNotifierProvider =
    NotifierProvider<FreightPostsNotifier, FreightPostsState>(FreightPostsNotifier.new);

final currentPostNotifierProvider =
    NotifierProvider<CurrentPostNotifier, CurrentPostState>(CurrentPostNotifier.new);

final freightPostsProvider = Provider<List<FreightPostModel>>((ref) {
  return ref.watch(freightPostsNotifierProvider).posts;
});

final freightLoadingProvider = Provider<bool>((ref) {
  return ref.watch(freightPostsNotifierProvider).isLoading;
});

final freightErrorProvider = Provider<String?>((ref) {
  return ref.watch(freightPostsNotifierProvider).error;
});
