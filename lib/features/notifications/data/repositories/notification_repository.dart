import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';
import 'package:ethio_omni_app/features/notifications/data/models/notification_model.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  final dio = ref.watch(dioClientProvider);
  return NotificationRepository(dio);
});

class NotificationRepository {
  final DioClient _dioClient;

  NotificationRepository(this._dioClient);

  Dio get _dio => _dioClient.dio;

  Future<List<NotificationModel>> getNotifications({
    bool unreadOnly = false,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _dio.get('/notifications', queryParameters: {
        if (unreadOnly) 'unreadOnly': true,
        'page': page,
        'limit': limit,
      });

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data'];
        return data.map((json) => NotificationModel.fromJson(json)).toList();
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get notifications');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> markAsRead(String notificationId) async {
    try {
      final response = await _dio.post('/notifications/$notificationId/read');

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to mark as read');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> markAllAsRead() async {
    try {
      final response = await _dio.post('/notifications/read-all');

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to mark all as read');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<int> getUnreadCount() async {
    try {
      final response = await _dio.get('/notifications/unread-count');

      if (response.data['success'] == true) {
        return response.data['data']['count'] as int;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  Future<NotificationSettings> getSettings() async {
    try {
      final response = await _dio.get('/notifications/settings');

      if (response.data['success'] == true) {
        return NotificationSettings.fromJson(response.data['data']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get settings');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> updateSettings(NotificationSettings settings) async {
    try {
      final response = await _dio.put(
        '/notifications/settings',
        data: settings.toJson(),
      );

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to update settings');
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
