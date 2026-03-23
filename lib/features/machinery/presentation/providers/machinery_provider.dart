import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/machinery/data/models/machinery_model.dart';
import 'package:ethio_omni_app/features/machinery/data/repositories/machinery_repository.dart';

// Machinery list state
class MachineryListState {
  final List<MachineryModel> machinery;
  final bool isLoading;
  final String? error;
  final String? selectedType;

  const MachineryListState({
    this.machinery = const [],
    this.isLoading = false,
    this.error,
    this.selectedType,
  });

  MachineryListState copyWith({
    List<MachineryModel>? machinery,
    bool? isLoading,
    String? error,
    String? selectedType,
  }) {
    return MachineryListState(
      machinery: machinery ?? this.machinery,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      selectedType: selectedType ?? this.selectedType,
    );
  }
}

class MachineryListNotifier extends Notifier<MachineryListState> {
  late final MachineryRepository _repository;

  @override
  MachineryListState build() {
    _repository = ref.watch(machineryRepositoryProvider);
    _loadMachinery();
    return const MachineryListState();
  }

  Future<void> _loadMachinery() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final machinery = await _repository.getAvailableMachinery(
        type: state.selectedType,
      );
      state = state.copyWith(
        machinery: machinery,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> refresh() async {
    await _loadMachinery();
  }

  void setType(String? type) {
    state = state.copyWith(selectedType: type);
    _loadMachinery();
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Rental bookings state
class RentalBookingsState {
  final List<RentalBookingModel> bookings;
  final bool isLoading;
  final String? error;

  const RentalBookingsState({
    this.bookings = const [],
    this.isLoading = false,
    this.error,
  });

  RentalBookingsState copyWith({
    List<RentalBookingModel>? bookings,
    bool? isLoading,
    String? error,
  }) {
    return RentalBookingsState(
      bookings: bookings ?? this.bookings,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class RentalBookingsNotifier extends Notifier<RentalBookingsState> {
  late final MachineryRepository _repository;

  @override
  RentalBookingsState build() {
    _repository = ref.watch(machineryRepositoryProvider);
    _loadBookings();
    return const RentalBookingsState();
  }

  Future<void> _loadBookings() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final bookings = await _repository.getMyRentals();
      state = state.copyWith(
        bookings: bookings,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> refresh() async {
    await _loadBookings();
  }
}

// Providers
final machineryListNotifierProvider = NotifierProvider<MachineryListNotifier, MachineryListState>(
  MachineryListNotifier.new,
);

final rentalBookingsNotifierProvider = NotifierProvider<RentalBookingsNotifier, RentalBookingsState>(
  RentalBookingsNotifier.new,
);

final machineryListProvider = Provider<List<MachineryModel>>((ref) {
  return ref.watch(machineryListNotifierProvider).machinery;
});

final machineryTypesProvider = Provider<List<String>>((ref) {
  return [
    'Excavator',
    'Bulldozer',
    'Crane',
    'Forklift',
    'Loader',
    'Dump Truck',
    'Concrete Mixer',
    'Generator',
  ];
});
