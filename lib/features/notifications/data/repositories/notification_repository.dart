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
    int limit = 20,
    int offset = 0,
    List<NotificationType>? types,
  }) async {
    try {
      final response = await _dio.get('/notifications', queryParameters: {
        'unreadOnly': unreadOnly,
        'limit': limit,
        'offset': offset,
        if (types != null) 'types': types.map((t) => t.name.toUpperCase()).join(','),
      });

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['data']['notifications'];
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
      final response = await _dio.patch('/notifications/$notificationId/read');

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to mark as read');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> markAllAsRead() async {
    try {
      final response = await _dio.patch('/notifications/read-all');

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to mark all as read');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> deleteNotification(String notificationId) async {
    try {
      final response = await _dio.delete('/notifications/$notificationId');

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to delete notification');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<int> getUnreadCount() async {
    try {
      final response = await _dio.get('/notifications/unread-count');

      if (response.data['success'] == true) {
        return response.data['count'] as int;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  // Device registration for push notifications
  Future<void> registerDevice({
    required String fcmToken,
    required String deviceType,
    String? deviceName,
    String? osVersion,
    String? appVersion,
  }) async {
    try {
      final response = await _dio.post('/notifications/devices', data: {
        'fcmToken': fcmToken,
        'deviceType': deviceType,
        'deviceName': deviceName,
        'osVersion': osVersion,
        'appVersion': appVersion,
      });

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to register device');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> unregisterDevice(String fcmToken) async {
    try {
      final response = await _dio.delete('/notifications/devices/$fcmToken');

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to unregister device');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<DeviceInfo>> getDevices() async {
    try {
      final response = await _dio.get('/notifications/devices');

      if (response.data['success'] == true) {
        final List<dynamic> data = response.data['devices'];
        return data.map((json) => DeviceInfo.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  // Notification preferences
  Future<NotificationPreferences> getPreferences() async {
    try {
      final response = await _dio.get('/notifications/preferences');

      if (response.data['success'] == true) {
        return NotificationPreferences.fromJson(response.data['preferences']);
      } else {
        throw Exception(response.data['message'] ?? 'Failed to get preferences');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> updatePreferences(NotificationPreferences preferences) async {
    try {
      final response = await _dio.put(
        '/notifications/preferences',
        data: preferences.toJson(),
      );

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to update preferences');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Update specific preference fields
  Future<void> updatePreferenceFields(Map<String, dynamic> fields) async {
    try {
      final response = await _dio.put(
        '/notifications/preferences',
        data: fields,
      );

      if (response.data['success'] != true) {
        throw Exception(response.data['message'] ?? 'Failed to update preferences');
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
