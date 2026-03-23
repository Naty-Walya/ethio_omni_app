import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

// Tables for offline-first sync
class FreightPosts extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  TextColumn get cargoType => text()();
  RealColumn get weight => real()();
  TextColumn get dimensions => text().nullable()();
  TextColumn get pickupLocation => text()();
  RealColumn get pickupLat => real().nullable()();
  RealColumn get pickupLng => real().nullable()();
  DateTimeColumn get pickupDate => dateTime()();
  TextColumn get deliveryLocation => text()();
  RealColumn get deliveryLat => real().nullable()();
  RealColumn get deliveryLng => real().nullable()();
  DateTimeColumn get preferredDeliveryDate => dateTime().nullable()();
  TextColumn get requiredVehicleType => text().nullable()();
  TextColumn get specialRequirements => text().nullable()();
  RealColumn get budget => real().nullable()();
  BoolColumn get auctionEnabled => boolean().withDefault(const Constant(true))();
  TextColumn get status => text().withDefault(const Constant('POSTED'))();
  TextColumn get shipperId => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();
  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class Bids extends Table {
  TextColumn get id => text()();
  TextColumn get freightPostId => text()();
  TextColumn get driverId => text()();
  RealColumn get amount => real()();
  TextColumn get currency => text().withDefault(const Constant('ETB'))();
  DateTimeColumn get estimatedPickupDate => dateTime().nullable()();
  DateTimeColumn get estimatedDeliveryDate => dateTime().nullable()();
  TextColumn get message => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('PENDING'))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class SyncQueue extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get operation => text()(); // CREATE, UPDATE, DELETE
  TextColumn get entityType => text()(); // freight_post, bid, etc.
  TextColumn get entityId => text()();
  TextColumn get payload => text()(); // JSON payload
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get retryCount => integer().withDefault(const Constant(0))();
  TextColumn get status => text().withDefault(const Constant('PENDING'))(); // PENDING, PROCESSING, FAILED
}

class Users extends Table {
  TextColumn get id => text()();
  TextColumn get phone => text()();
  TextColumn get role => text()();
  TextColumn get firstName => text().nullable()();
  TextColumn get lastName => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get avatar => text().nullable()();
  BoolColumn get isPhoneVerified => boolean().withDefault(const Constant(false))();
  BoolColumn get isFaydaVerified => boolean().withDefault(const Constant(false))();
  TextColumn get faydaId => text().nullable()();
  DateTimeColumn get lastUpdated => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [FreightPosts, Bids, SyncQueue, Users])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'ethio_omni_db',
    );
  }

  // Freight Posts CRUD
  Future<List<FreightPost>> getAllFreightPosts() =>
      select(freightPosts).get();

  Future<List<FreightPost>> getUnsyncedFreightPosts() =>
      (select(freightPosts)..where((p) => p.isSynced.equals(false))).get();

  Future<void> insertFreightPost(FreightPostsCompanion post) =>
      into(freightPosts).insert(post, mode: InsertMode.replace);

  Future<void> updateFreightPost(String id, FreightPostsCompanion post) =>
      (update(freightPosts)..where((p) => p.id.equals(id))).write(post);

  Future<void> deleteFreightPost(String id) =>
      (delete(freightPosts)..where((p) => p.id.equals(id))).go();

  // Bids CRUD
  Future<List<Bid>> getAllBids() =>
      select(bids).get();

  Future<List<Bid>> getBidsForPost(String freightPostId) =>
      (select(bids)..where((b) => b.freightPostId.equals(freightPostId))).get();

  Future<void> insertBid(BidsCompanion bid) =>
      into(bids).insert(bid, mode: InsertMode.replace);

  // Sync Queue
  Future<List<SyncQueueData>> getPendingSyncItems() =>
      (select(syncQueue)..where((s) => s.status.equals('PENDING'))).get();

  Future<void> addToSyncQueue(SyncQueueCompanion item) =>
      into(syncQueue).insert(item);

  Future<void> updateSyncItemStatus(int id, String status, {int? retryCount}) =>
      (update(syncQueue)..where((s) => s.id.equals(id))).write(
        SyncQueueCompanion(
          status: Value(status),
          retryCount: retryCount != null ? Value(retryCount) : const Value.absent(),
        ),
      );

  Future<void> deleteSyncItem(int id) =>
      (delete(syncQueue)..where((s) => s.id.equals(id))).go();

  // Users
  Future<void> insertUser(UsersCompanion user) =>
      into(users).insert(user, mode: InsertMode.replace);

  Future<User?> getUser(String id) =>
      (select(users)..where((u) => u.id.equals(id))).getSingleOrNull();

  // Clear all data (for logout)
  Future<void> clearAllData() async {
    await delete(freightPosts).go();
    await delete(bids).go();
    await delete(syncQueue).go();
    await delete(users).go();
  }
}
