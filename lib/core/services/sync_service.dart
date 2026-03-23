import 'dart:async';
import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart';
import 'package:ethio_omni_app/core/database/database.dart';
import 'package:ethio_omni_app/core/network/dio_client.dart';

final syncServiceProvider = Provider<SyncService>((ref) {
  final db = AppDatabase();
  final dio = ref.watch(dioClientProvider);
  return SyncService(db, dio);
});

class SyncService {
  final AppDatabase _database;
  final DioClient _dioClient;
  Timer? _syncTimer;
  bool _isSyncing = false;

  SyncService(this._database, this._dioClient);

  void startPeriodicSync({Duration interval = const Duration(minutes: 5)}) {
    _syncTimer?.cancel();
    _syncTimer = Timer.periodic(interval, (_) => syncPendingChanges());
  }

  void stopPeriodicSync() {
    _syncTimer?.cancel();
    _syncTimer = null;
  }

  Future<void> dispose() async {
    stopPeriodicSync();
    await _database.close();
  }

  // Check if online
  Future<bool> get isOnline async {
    final connectivityResults = await Connectivity().checkConnectivity();
    return !connectivityResults.contains(ConnectivityResult.none);
  }

  // Add item to sync queue
  Future<void> queueForSync({
    required String operation, // CREATE, UPDATE, DELETE
    required String entityType, // freight_post, bid
    required String entityId,
    required Map<String, dynamic> payload,
  }) async {
    await _database.addToSyncQueue(
      SyncQueueCompanion(
        operation: Value(operation),
        entityType: Value(entityType),
        entityId: Value(entityId),
        payload: Value(jsonEncode(payload)),
      ),
    );
  }

  // Mark entity as synced
  Future<void> markAsSynced(String entityType, String entityId) async {
    switch (entityType) {
      case 'freight_post':
        await _database.updateFreightPost(
          entityId,
          const FreightPostsCompanion(isSynced: Value(true)),
        );
        break;
      // Add other entity types as needed
    }
  }

  // Sync pending changes
  Future<void> syncPendingChanges() async {
    if (_isSyncing) return;

    final online = await isOnline;
    if (!online) return;

    _isSyncing = true;

    try {
      final pendingItems = await _database.getPendingSyncItems();

      for (final item in pendingItems) {
        await _processSyncItem(item);
      }
    } finally {
      _isSyncing = false;
    }
  }

  Future<void> _processSyncItem(SyncQueueData item) async {
    try {
      await _database.updateSyncItemStatus(item.id, 'PROCESSING');

      final payload = jsonDecode(item.payload) as Map<String, dynamic>;

      switch (item.entityType) {
        case 'freight_post':
          await _syncFreightPost(item.operation, item.entityId, payload);
          break;
        case 'bid':
          await _syncBid(item.operation, item.entityId, payload);
          break;
        // Add other entity types
      }

      // Mark as completed
      await _database.deleteSyncItem(item.id);
    } catch (e) {
      // Increment retry count
      final newRetryCount = item.retryCount + 1;

      if (newRetryCount >= 5) {
        // Mark as failed after 5 retries
        await _database.updateSyncItemStatus(item.id, 'FAILED', retryCount: newRetryCount);
      } else {
        await _database.updateSyncItemStatus(item.id, 'PENDING', retryCount: newRetryCount);
      }
    }
  }

  Future<void> _syncFreightPost(String operation, String entityId, Map<String, dynamic> payload) async {
    final dio = _dioClient.dio;

    switch (operation) {
      case 'CREATE':
        await dio.post('/freight', data: payload);
        break;
      case 'UPDATE':
        // API doesn't have update endpoint yet, but structure is ready
        break;
      case 'DELETE':
        await dio.delete('/freight/$entityId');
        break;
    }

    await markAsSynced('freight_post', entityId);
  }

  Future<void> _syncBid(String operation, String entityId, Map<String, dynamic> payload) async {
    final dio = _dioClient.dio;

    switch (operation) {
      case 'CREATE':
        final freightPostId = payload['freightPostId'];
        await dio.post('/freight/$freightPostId/bids', data: payload);
        break;
    }
  }

  // Fetch data from server and store locally
  Future<void> syncFromServer() async {
    final online = await isOnline;
    if (!online) return;

    try {
      final dio = _dioClient.dio;

      // Sync freight posts
      final postsResponse = await dio.get('/freight', queryParameters: {'limit': 100});
      if (postsResponse.data['success'] == true) {
        final posts = postsResponse.data['data'] as List;
        for (final post in posts) {
          await _database.insertFreightPost(
            FreightPostsCompanion(
              id: Value(post['id']),
              title: Value(post['title']),
              description: Value(post['description']),
              cargoType: Value(post['cargoType']),
              weight: Value(post['weight']?.toDouble() ?? 0.0),
              dimensions: Value(post['dimensions']),
              pickupLocation: Value(post['pickupLocation']),
              pickupLat: Value(post['pickupLat']?.toDouble()),
              pickupLng: Value(post['pickupLng']?.toDouble()),
              pickupDate: Value(DateTime.parse(post['pickupDate'])),
              deliveryLocation: Value(post['deliveryLocation']),
              deliveryLat: Value(post['deliveryLat']?.toDouble()),
              deliveryLng: Value(post['deliveryLng']?.toDouble()),
              preferredDeliveryDate: Value(post['preferredDeliveryDate'] != null
                  ? DateTime.parse(post['preferredDeliveryDate'])
                  : null),
              requiredVehicleType: Value(post['requiredVehicleType']),
              specialRequirements: Value(post['specialRequirements']),
              budget: Value(post['budget']?.toDouble()),
              auctionEnabled: Value(post['auctionEnabled'] ?? true),
              status: Value(post['status']),
              shipperId: Value(post['shipperId']),
              createdAt: Value(DateTime.parse(post['createdAt'])),
              updatedAt: Value(DateTime.parse(post['updatedAt'])),
              isSynced: const Value(true),
            ),
          );
        }
      }
    } catch (e) {
      // Log error but don't throw - offline mode should still work
      print('Sync from server failed: $e');
    }
  }
}
