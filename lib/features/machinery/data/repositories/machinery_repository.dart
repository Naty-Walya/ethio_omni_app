import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/machinery/data/models/machinery_model.dart';

final machineryRepositoryProvider = Provider<MachineryRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return MachineryRepository(dio);
});

class MachineryRepository {
  final DioClient _dioClient;

  MachineryRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  Future<List<MachineryModel>> getAvailableMachinery({
    String? type,
    String? location,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _dio.get('/machinery', queryParameters: {
        if (type != null) 'type': type,
        if (location != null) 'location': location,
        'page': page,
        'limit': limit,
      });

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => MachineryModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get machinery');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<MachineryModel> getMachineryDetails(String id) async {
    try {
      final response = await _dio.get('/machinery/$id');

      if (response.data['success'] == true) {
        return MachineryModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get machinery details');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<RentalBookingModel> createRental(CreateRentalRequest request) async {
    try {
      final response = await _dio.post('/machinery/rentals', data: request.toJson());

      if (response.data['success'] == true) {
        return RentalBookingModel.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to create rental');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<RentalBookingModel>> getMyRentals() async {
    try {
      final response = await _dio.get('/machinery/rentals/my');

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => RentalBookingModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get rentals');
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
