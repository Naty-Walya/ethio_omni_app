import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/rental/data/models/rental_models.dart';

final rentalRepositoryProvider = Provider<RentalRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return RentalRepository(dio);
});

class RentalRepository {
  final DioClient _dioClient;

  RentalRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  // Get available assets for rent
  Future<List<AssetModel>> getAvailableAssets({
    String? type,
    double? minCapacity,
    double? maxCapacity,
    String? location,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'status': 'AVAILABLE',
        'page': page,
        'limit': limit,
        if (type != null) 'type': type,
        if (minCapacity != null) 'minCapacity': minCapacity,
        if (maxCapacity != null) 'maxCapacity': maxCapacity,
        if (location != null) 'location': location,
      };

      final response = await _dio.get('/assets', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => AssetModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get assets');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get asset details
  Future<AssetModel> getAssetDetails(String assetId) async {
    try {
      final response = await _dio.get('/assets/$assetId');

      if (response.data['success'] == true) {
        return AssetModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get asset details');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Create booking request
  Future<RentalBookingModel> createBooking({
    required String assetId,
    required DateTime startDate,
    required DateTime endDate,
    String? pickupLocation,
    String? notes,
  }) async {
    try {
      final response = await _dio.post('/rentals', data: {
        'assetId': assetId,
        'startDate': startDate.toIso8601String(),
        'endDate': endDate.toIso8601String(),
        if (pickupLocation != null) 'pickupLocation': pickupLocation,
        if (notes != null) 'notes': notes,
      });

      if (response.data['success'] == true) {
        return RentalBookingModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to create booking');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get my bookings (as renter)
  Future<List<RentalBookingModel>> getMyBookings({
    String? status,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'limit': limit,
        if (status != null) 'status': status,
      };

      final response = await _dio.get('/rentals/my', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => RentalBookingModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get bookings');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get incoming bookings (as fleet owner)
  Future<List<RentalBookingModel>> getIncomingBookings({
    String? status,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'limit': limit,
        if (status != null) 'status': status,
      };

      final response = await _dio.get('/rentals/incoming', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => RentalBookingModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get incoming bookings');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get booking details
  Future<RentalBookingModel> getBookingDetails(String bookingId) async {
    try {
      final response = await _dio.get('/rentals/$bookingId');

      if (response.data['success'] == true) {
        return RentalBookingModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get booking details');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Update booking status (fleet owner)
  Future<RentalBookingModel> updateBookingStatus(String bookingId, String status) async {
    try {
      final response = await _dio.patch('/rentals/$bookingId/status', data: {
        'status': status,
      });

      if (response.data['success'] == true) {
        return RentalBookingModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to update booking status');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Cancel booking (renter)
  Future<RentalBookingModel> cancelBooking(String bookingId) async {
    try {
      final response = await _dio.patch('/rentals/$bookingId/cancel');

      if (response.data['success'] == true) {
        return RentalBookingModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to cancel booking');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Start rental (fleet owner)
  Future<RentalBookingModel> startRental(String bookingId) async {
    try {
      final response = await _dio.patch('/rentals/$bookingId/start');

      if (response.data['success'] == true) {
        return RentalBookingModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to start rental');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Complete rental (fleet owner)
  Future<RentalBookingModel> completeRental(String bookingId) async {
    try {
      final response = await _dio.patch('/rentals/$bookingId/complete');

      if (response.data['success'] == true) {
        return RentalBookingModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to complete rental');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Register asset (fleet owner)
  Future<AssetModel> registerAsset({
    required String name,
    required String type,
    double? capacity,
    int? year,
    String? plateNumber,
    String? currentLocation,
    double? dailyRate,
  }) async {
    try {
      final response = await _dio.post('/assets', data: {
        'name': name,
        'type': type,
        if (capacity != null) 'capacity': capacity,
        if (year != null) 'year': year,
        if (plateNumber != null) 'plateNumber': plateNumber,
        if (currentLocation != null) 'currentLocation': currentLocation,
        if (dailyRate != null) 'dailyRate': dailyRate,
      });

      if (response.data['success'] == true) {
        return AssetModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to register asset');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Get my assets (fleet owner)
  Future<List<AssetModel>> getMyAssets({
    String? status,
    String? type,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'limit': limit,
        if (status != null) 'status': status,
        if (type != null) 'type': type,
      };

      final response = await _dio.get('/assets/my', queryParameters: queryParams);

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => AssetModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get assets');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Update asset status (fleet owner)
  Future<AssetModel> updateAssetStatus(String assetId, String status) async {
    try {
      final response = await _dio.patch('/assets/$assetId/status', data: {
        'status': status,
      });

      if (response.data['success'] == true) {
        return AssetModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to update asset status');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Exception _handleDioError(DioException error) {
    if (error.response != null) {
      final message = error.response?.data['message'] ?? error.response?.data['error'];
      if (message != null) {
        return Exception(message);
      }
      return Exception('Server error: ${error.response?.statusCode}');
    }
    return Exception(error.message ?? 'Network error');
  }
}
