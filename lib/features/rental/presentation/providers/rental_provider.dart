import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/rental/data/models/rental_models.dart';
import 'package:ethio_omni_app/features/rental/data/repositories/rental_repository.dart';

// Rental state
class RentalState {
  final List<AssetModel> availableAssets;
  final List<AssetModel> myAssets;
  final List<RentalBookingModel> myBookings;
  final List<RentalBookingModel> incomingBookings;
  final AssetModel? selectedAsset;
  final RentalBookingModel? selectedBooking;
  final bool isLoading;
  final String? error;

  const RentalState({
    this.availableAssets = const [],
    this.myAssets = const [],
    this.myBookings = const [],
    this.incomingBookings = const [],
    this.selectedAsset,
    this.selectedBooking,
    this.isLoading = false,
    this.error,
  });

  RentalState copyWith({
    List<AssetModel>? availableAssets,
    List<AssetModel>? myAssets,
    List<RentalBookingModel>? myBookings,
    List<RentalBookingModel>? incomingBookings,
    AssetModel? selectedAsset,
    RentalBookingModel? selectedBooking,
    bool? isLoading,
    String? error,
  }) {
    return RentalState(
      availableAssets: availableAssets ?? this.availableAssets,
      myAssets: myAssets ?? this.myAssets,
      myBookings: myBookings ?? this.myBookings,
      incomingBookings: incomingBookings ?? this.incomingBookings,
      selectedAsset: selectedAsset ?? this.selectedAsset,
      selectedBooking: selectedBooking ?? this.selectedBooking,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

// Rental notifier
class RentalNotifier extends Notifier<RentalState> {
  late final RentalRepository _rentalRepository;

  @override
  RentalState build() {
    _rentalRepository = ref.watch(rentalRepositoryProvider);
    return const RentalState();
  }

  Future<void> getAvailableAssets({
    String? type,
    double? minCapacity,
    double? maxCapacity,
    String? location,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final assets = await _rentalRepository.getAvailableAssets(
        type: type,
        minCapacity: minCapacity,
        maxCapacity: maxCapacity,
        location: location,
      );
      state = state.copyWith(
        availableAssets: assets,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> getMyAssets() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final assets = await _rentalRepository.getMyAssets();
      state = state.copyWith(
        myAssets: assets,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> getMyBookings({String? status}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final bookings = await _rentalRepository.getMyBookings(status: status);
      state = state.copyWith(
        myBookings: bookings,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> getIncomingBookings({String? status}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final bookings = await _rentalRepository.getIncomingBookings(status: status);
      state = state.copyWith(
        incomingBookings: bookings,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> getAssetDetails(String assetId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final asset = await _rentalRepository.getAssetDetails(assetId);
      state = state.copyWith(
        selectedAsset: asset,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<void> getBookingDetails(String bookingId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final booking = await _rentalRepository.getBookingDetails(bookingId);
      state = state.copyWith(
        selectedBooking: booking,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
    }
  }

  Future<bool> createBooking({
    required String assetId,
    required DateTime startDate,
    required DateTime endDate,
    String? pickupLocation,
    String? notes,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final booking = await _rentalRepository.createBooking(
        assetId: assetId,
        startDate: startDate,
        endDate: endDate,
        pickupLocation: pickupLocation,
        notes: notes,
      );
      state = state.copyWith(
        selectedBooking: booking,
        isLoading: false,
      );
      // Refresh bookings list
      getMyBookings();
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<bool> updateBookingStatus(String bookingId, String status) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final booking = await _rentalRepository.updateBookingStatus(bookingId, status);
      state = state.copyWith(
        selectedBooking: booking,
        isLoading: false,
      );
      // Refresh bookings lists
      getIncomingBookings();
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<bool> cancelBooking(String bookingId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final booking = await _rentalRepository.cancelBooking(bookingId);
      state = state.copyWith(
        selectedBooking: booking,
        isLoading: false,
      );
      // Refresh bookings list
      getMyBookings();
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<bool> startRental(String bookingId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final booking = await _rentalRepository.startRental(bookingId);
      state = state.copyWith(
        selectedBooking: booking,
        isLoading: false,
      );
      getIncomingBookings();
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<bool> completeRental(String bookingId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final booking = await _rentalRepository.completeRental(bookingId);
      state = state.copyWith(
        selectedBooking: booking,
        isLoading: false,
      );
      getIncomingBookings();
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<bool> registerAsset({
    required String name,
    required String type,
    double? capacity,
    int? year,
    String? plateNumber,
    String? currentLocation,
    double? dailyRate,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _rentalRepository.registerAsset(
        name: name,
        type: type,
        capacity: capacity,
        year: year,
        plateNumber: plateNumber,
        currentLocation: currentLocation,
        dailyRate: dailyRate,
      );
      state = state.copyWith(isLoading: false);
      // Refresh assets list
      getMyAssets();
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  Future<bool> updateAssetStatus(String assetId, String status) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _rentalRepository.updateAssetStatus(assetId, status);
      state = state.copyWith(isLoading: false);
      getMyAssets();
      return true;
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
        isLoading: false,
      );
      return false;
    }
  }

  void selectAsset(AssetModel asset) {
    state = state.copyWith(selectedAsset: asset);
  }

  void selectBooking(RentalBookingModel booking) {
    state = state.copyWith(selectedBooking: booking);
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void clearSelected() {
    state = state.copyWith(selectedAsset: null, selectedBooking: null);
  }
}

// Providers
final rentalNotifierProvider = NotifierProvider<RentalNotifier, RentalState>(RentalNotifier.new);

// Computed providers
final availableAssetsProvider = Provider<List<AssetModel>>((ref) {
  return ref.watch(rentalNotifierProvider).availableAssets;
});

final myAssetsProvider = Provider<List<AssetModel>>((ref) {
  return ref.watch(rentalNotifierProvider).myAssets;
});

final myBookingsProvider = Provider<List<RentalBookingModel>>((ref) {
  return ref.watch(rentalNotifierProvider).myBookings;
});

final incomingBookingsProvider = Provider<List<RentalBookingModel>>((ref) {
  return ref.watch(rentalNotifierProvider).incomingBookings;
});

final selectedAssetProvider = Provider<AssetModel?>((ref) {
  return ref.watch(rentalNotifierProvider).selectedAsset;
});

final selectedRentalBookingProvider = Provider<RentalBookingModel?>((ref) {
  return ref.watch(rentalNotifierProvider).selectedBooking;
});

final rentalLoadingProvider = Provider<bool>((ref) {
  return ref.watch(rentalNotifierProvider).isLoading;
});

final rentalErrorProvider = Provider<String?>((ref) {
  return ref.watch(rentalNotifierProvider).error;
});
