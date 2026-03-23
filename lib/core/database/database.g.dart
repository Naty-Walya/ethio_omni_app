// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FreightPostsTable extends FreightPosts
    with TableInfo<$FreightPostsTable, FreightPost> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FreightPostsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cargoTypeMeta = const VerificationMeta(
    'cargoType',
  );
  @override
  late final GeneratedColumn<String> cargoType = GeneratedColumn<String>(
    'cargo_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
    'weight',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dimensionsMeta = const VerificationMeta(
    'dimensions',
  );
  @override
  late final GeneratedColumn<String> dimensions = GeneratedColumn<String>(
    'dimensions',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pickupLocationMeta = const VerificationMeta(
    'pickupLocation',
  );
  @override
  late final GeneratedColumn<String> pickupLocation = GeneratedColumn<String>(
    'pickup_location',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pickupLatMeta = const VerificationMeta(
    'pickupLat',
  );
  @override
  late final GeneratedColumn<double> pickupLat = GeneratedColumn<double>(
    'pickup_lat',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pickupLngMeta = const VerificationMeta(
    'pickupLng',
  );
  @override
  late final GeneratedColumn<double> pickupLng = GeneratedColumn<double>(
    'pickup_lng',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pickupDateMeta = const VerificationMeta(
    'pickupDate',
  );
  @override
  late final GeneratedColumn<DateTime> pickupDate = GeneratedColumn<DateTime>(
    'pickup_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deliveryLocationMeta = const VerificationMeta(
    'deliveryLocation',
  );
  @override
  late final GeneratedColumn<String> deliveryLocation = GeneratedColumn<String>(
    'delivery_location',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deliveryLatMeta = const VerificationMeta(
    'deliveryLat',
  );
  @override
  late final GeneratedColumn<double> deliveryLat = GeneratedColumn<double>(
    'delivery_lat',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deliveryLngMeta = const VerificationMeta(
    'deliveryLng',
  );
  @override
  late final GeneratedColumn<double> deliveryLng = GeneratedColumn<double>(
    'delivery_lng',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _preferredDeliveryDateMeta =
      const VerificationMeta('preferredDeliveryDate');
  @override
  late final GeneratedColumn<DateTime> preferredDeliveryDate =
      GeneratedColumn<DateTime>(
        'preferred_delivery_date',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _requiredVehicleTypeMeta =
      const VerificationMeta('requiredVehicleType');
  @override
  late final GeneratedColumn<String> requiredVehicleType =
      GeneratedColumn<String>(
        'required_vehicle_type',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _specialRequirementsMeta =
      const VerificationMeta('specialRequirements');
  @override
  late final GeneratedColumn<String> specialRequirements =
      GeneratedColumn<String>(
        'special_requirements',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _budgetMeta = const VerificationMeta('budget');
  @override
  late final GeneratedColumn<double> budget = GeneratedColumn<double>(
    'budget',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _auctionEnabledMeta = const VerificationMeta(
    'auctionEnabled',
  );
  @override
  late final GeneratedColumn<bool> auctionEnabled = GeneratedColumn<bool>(
    'auction_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("auction_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('POSTED'),
  );
  static const VerificationMeta _shipperIdMeta = const VerificationMeta(
    'shipperId',
  );
  @override
  late final GeneratedColumn<String> shipperId = GeneratedColumn<String>(
    'shipper_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isSyncedMeta = const VerificationMeta(
    'isSynced',
  );
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
    'is_synced',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_synced" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isDeletedMeta = const VerificationMeta(
    'isDeleted',
  );
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_deleted" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    cargoType,
    weight,
    dimensions,
    pickupLocation,
    pickupLat,
    pickupLng,
    pickupDate,
    deliveryLocation,
    deliveryLat,
    deliveryLng,
    preferredDeliveryDate,
    requiredVehicleType,
    specialRequirements,
    budget,
    auctionEnabled,
    status,
    shipperId,
    createdAt,
    updatedAt,
    isSynced,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'freight_posts';
  @override
  VerificationContext validateIntegrity(
    Insertable<FreightPost> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('cargo_type')) {
      context.handle(
        _cargoTypeMeta,
        cargoType.isAcceptableOrUnknown(data['cargo_type']!, _cargoTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_cargoTypeMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('dimensions')) {
      context.handle(
        _dimensionsMeta,
        dimensions.isAcceptableOrUnknown(data['dimensions']!, _dimensionsMeta),
      );
    }
    if (data.containsKey('pickup_location')) {
      context.handle(
        _pickupLocationMeta,
        pickupLocation.isAcceptableOrUnknown(
          data['pickup_location']!,
          _pickupLocationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pickupLocationMeta);
    }
    if (data.containsKey('pickup_lat')) {
      context.handle(
        _pickupLatMeta,
        pickupLat.isAcceptableOrUnknown(data['pickup_lat']!, _pickupLatMeta),
      );
    }
    if (data.containsKey('pickup_lng')) {
      context.handle(
        _pickupLngMeta,
        pickupLng.isAcceptableOrUnknown(data['pickup_lng']!, _pickupLngMeta),
      );
    }
    if (data.containsKey('pickup_date')) {
      context.handle(
        _pickupDateMeta,
        pickupDate.isAcceptableOrUnknown(data['pickup_date']!, _pickupDateMeta),
      );
    } else if (isInserting) {
      context.missing(_pickupDateMeta);
    }
    if (data.containsKey('delivery_location')) {
      context.handle(
        _deliveryLocationMeta,
        deliveryLocation.isAcceptableOrUnknown(
          data['delivery_location']!,
          _deliveryLocationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_deliveryLocationMeta);
    }
    if (data.containsKey('delivery_lat')) {
      context.handle(
        _deliveryLatMeta,
        deliveryLat.isAcceptableOrUnknown(
          data['delivery_lat']!,
          _deliveryLatMeta,
        ),
      );
    }
    if (data.containsKey('delivery_lng')) {
      context.handle(
        _deliveryLngMeta,
        deliveryLng.isAcceptableOrUnknown(
          data['delivery_lng']!,
          _deliveryLngMeta,
        ),
      );
    }
    if (data.containsKey('preferred_delivery_date')) {
      context.handle(
        _preferredDeliveryDateMeta,
        preferredDeliveryDate.isAcceptableOrUnknown(
          data['preferred_delivery_date']!,
          _preferredDeliveryDateMeta,
        ),
      );
    }
    if (data.containsKey('required_vehicle_type')) {
      context.handle(
        _requiredVehicleTypeMeta,
        requiredVehicleType.isAcceptableOrUnknown(
          data['required_vehicle_type']!,
          _requiredVehicleTypeMeta,
        ),
      );
    }
    if (data.containsKey('special_requirements')) {
      context.handle(
        _specialRequirementsMeta,
        specialRequirements.isAcceptableOrUnknown(
          data['special_requirements']!,
          _specialRequirementsMeta,
        ),
      );
    }
    if (data.containsKey('budget')) {
      context.handle(
        _budgetMeta,
        budget.isAcceptableOrUnknown(data['budget']!, _budgetMeta),
      );
    }
    if (data.containsKey('auction_enabled')) {
      context.handle(
        _auctionEnabledMeta,
        auctionEnabled.isAcceptableOrUnknown(
          data['auction_enabled']!,
          _auctionEnabledMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('shipper_id')) {
      context.handle(
        _shipperIdMeta,
        shipperId.isAcceptableOrUnknown(data['shipper_id']!, _shipperIdMeta),
      );
    } else if (isInserting) {
      context.missing(_shipperIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_synced')) {
      context.handle(
        _isSyncedMeta,
        isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta),
      );
    }
    if (data.containsKey('is_deleted')) {
      context.handle(
        _isDeletedMeta,
        isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FreightPost map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FreightPost(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      cargoType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cargo_type'],
      )!,
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight'],
      )!,
      dimensions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dimensions'],
      ),
      pickupLocation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pickup_location'],
      )!,
      pickupLat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pickup_lat'],
      ),
      pickupLng: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pickup_lng'],
      ),
      pickupDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}pickup_date'],
      )!,
      deliveryLocation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}delivery_location'],
      )!,
      deliveryLat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}delivery_lat'],
      ),
      deliveryLng: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}delivery_lng'],
      ),
      preferredDeliveryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}preferred_delivery_date'],
      ),
      requiredVehicleType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}required_vehicle_type'],
      ),
      specialRequirements: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}special_requirements'],
      ),
      budget: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}budget'],
      ),
      auctionEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}auction_enabled'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      shipperId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shipper_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      isSynced: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_synced'],
      )!,
      isDeleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_deleted'],
      )!,
    );
  }

  @override
  $FreightPostsTable createAlias(String alias) {
    return $FreightPostsTable(attachedDatabase, alias);
  }
}

class FreightPost extends DataClass implements Insertable<FreightPost> {
  final String id;
  final String title;
  final String? description;
  final String cargoType;
  final double weight;
  final String? dimensions;
  final String pickupLocation;
  final double? pickupLat;
  final double? pickupLng;
  final DateTime pickupDate;
  final String deliveryLocation;
  final double? deliveryLat;
  final double? deliveryLng;
  final DateTime? preferredDeliveryDate;
  final String? requiredVehicleType;
  final String? specialRequirements;
  final double? budget;
  final bool auctionEnabled;
  final String status;
  final String shipperId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isSynced;
  final bool isDeleted;
  const FreightPost({
    required this.id,
    required this.title,
    this.description,
    required this.cargoType,
    required this.weight,
    this.dimensions,
    required this.pickupLocation,
    this.pickupLat,
    this.pickupLng,
    required this.pickupDate,
    required this.deliveryLocation,
    this.deliveryLat,
    this.deliveryLng,
    this.preferredDeliveryDate,
    this.requiredVehicleType,
    this.specialRequirements,
    this.budget,
    required this.auctionEnabled,
    required this.status,
    required this.shipperId,
    required this.createdAt,
    required this.updatedAt,
    required this.isSynced,
    required this.isDeleted,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['cargo_type'] = Variable<String>(cargoType);
    map['weight'] = Variable<double>(weight);
    if (!nullToAbsent || dimensions != null) {
      map['dimensions'] = Variable<String>(dimensions);
    }
    map['pickup_location'] = Variable<String>(pickupLocation);
    if (!nullToAbsent || pickupLat != null) {
      map['pickup_lat'] = Variable<double>(pickupLat);
    }
    if (!nullToAbsent || pickupLng != null) {
      map['pickup_lng'] = Variable<double>(pickupLng);
    }
    map['pickup_date'] = Variable<DateTime>(pickupDate);
    map['delivery_location'] = Variable<String>(deliveryLocation);
    if (!nullToAbsent || deliveryLat != null) {
      map['delivery_lat'] = Variable<double>(deliveryLat);
    }
    if (!nullToAbsent || deliveryLng != null) {
      map['delivery_lng'] = Variable<double>(deliveryLng);
    }
    if (!nullToAbsent || preferredDeliveryDate != null) {
      map['preferred_delivery_date'] = Variable<DateTime>(
        preferredDeliveryDate,
      );
    }
    if (!nullToAbsent || requiredVehicleType != null) {
      map['required_vehicle_type'] = Variable<String>(requiredVehicleType);
    }
    if (!nullToAbsent || specialRequirements != null) {
      map['special_requirements'] = Variable<String>(specialRequirements);
    }
    if (!nullToAbsent || budget != null) {
      map['budget'] = Variable<double>(budget);
    }
    map['auction_enabled'] = Variable<bool>(auctionEnabled);
    map['status'] = Variable<String>(status);
    map['shipper_id'] = Variable<String>(shipperId);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['is_synced'] = Variable<bool>(isSynced);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  FreightPostsCompanion toCompanion(bool nullToAbsent) {
    return FreightPostsCompanion(
      id: Value(id),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      cargoType: Value(cargoType),
      weight: Value(weight),
      dimensions: dimensions == null && nullToAbsent
          ? const Value.absent()
          : Value(dimensions),
      pickupLocation: Value(pickupLocation),
      pickupLat: pickupLat == null && nullToAbsent
          ? const Value.absent()
          : Value(pickupLat),
      pickupLng: pickupLng == null && nullToAbsent
          ? const Value.absent()
          : Value(pickupLng),
      pickupDate: Value(pickupDate),
      deliveryLocation: Value(deliveryLocation),
      deliveryLat: deliveryLat == null && nullToAbsent
          ? const Value.absent()
          : Value(deliveryLat),
      deliveryLng: deliveryLng == null && nullToAbsent
          ? const Value.absent()
          : Value(deliveryLng),
      preferredDeliveryDate: preferredDeliveryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredDeliveryDate),
      requiredVehicleType: requiredVehicleType == null && nullToAbsent
          ? const Value.absent()
          : Value(requiredVehicleType),
      specialRequirements: specialRequirements == null && nullToAbsent
          ? const Value.absent()
          : Value(specialRequirements),
      budget: budget == null && nullToAbsent
          ? const Value.absent()
          : Value(budget),
      auctionEnabled: Value(auctionEnabled),
      status: Value(status),
      shipperId: Value(shipperId),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isSynced: Value(isSynced),
      isDeleted: Value(isDeleted),
    );
  }

  factory FreightPost.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FreightPost(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      cargoType: serializer.fromJson<String>(json['cargoType']),
      weight: serializer.fromJson<double>(json['weight']),
      dimensions: serializer.fromJson<String?>(json['dimensions']),
      pickupLocation: serializer.fromJson<String>(json['pickupLocation']),
      pickupLat: serializer.fromJson<double?>(json['pickupLat']),
      pickupLng: serializer.fromJson<double?>(json['pickupLng']),
      pickupDate: serializer.fromJson<DateTime>(json['pickupDate']),
      deliveryLocation: serializer.fromJson<String>(json['deliveryLocation']),
      deliveryLat: serializer.fromJson<double?>(json['deliveryLat']),
      deliveryLng: serializer.fromJson<double?>(json['deliveryLng']),
      preferredDeliveryDate: serializer.fromJson<DateTime?>(
        json['preferredDeliveryDate'],
      ),
      requiredVehicleType: serializer.fromJson<String?>(
        json['requiredVehicleType'],
      ),
      specialRequirements: serializer.fromJson<String?>(
        json['specialRequirements'],
      ),
      budget: serializer.fromJson<double?>(json['budget']),
      auctionEnabled: serializer.fromJson<bool>(json['auctionEnabled']),
      status: serializer.fromJson<String>(json['status']),
      shipperId: serializer.fromJson<String>(json['shipperId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'cargoType': serializer.toJson<String>(cargoType),
      'weight': serializer.toJson<double>(weight),
      'dimensions': serializer.toJson<String?>(dimensions),
      'pickupLocation': serializer.toJson<String>(pickupLocation),
      'pickupLat': serializer.toJson<double?>(pickupLat),
      'pickupLng': serializer.toJson<double?>(pickupLng),
      'pickupDate': serializer.toJson<DateTime>(pickupDate),
      'deliveryLocation': serializer.toJson<String>(deliveryLocation),
      'deliveryLat': serializer.toJson<double?>(deliveryLat),
      'deliveryLng': serializer.toJson<double?>(deliveryLng),
      'preferredDeliveryDate': serializer.toJson<DateTime?>(
        preferredDeliveryDate,
      ),
      'requiredVehicleType': serializer.toJson<String?>(requiredVehicleType),
      'specialRequirements': serializer.toJson<String?>(specialRequirements),
      'budget': serializer.toJson<double?>(budget),
      'auctionEnabled': serializer.toJson<bool>(auctionEnabled),
      'status': serializer.toJson<String>(status),
      'shipperId': serializer.toJson<String>(shipperId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'isSynced': serializer.toJson<bool>(isSynced),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  FreightPost copyWith({
    String? id,
    String? title,
    Value<String?> description = const Value.absent(),
    String? cargoType,
    double? weight,
    Value<String?> dimensions = const Value.absent(),
    String? pickupLocation,
    Value<double?> pickupLat = const Value.absent(),
    Value<double?> pickupLng = const Value.absent(),
    DateTime? pickupDate,
    String? deliveryLocation,
    Value<double?> deliveryLat = const Value.absent(),
    Value<double?> deliveryLng = const Value.absent(),
    Value<DateTime?> preferredDeliveryDate = const Value.absent(),
    Value<String?> requiredVehicleType = const Value.absent(),
    Value<String?> specialRequirements = const Value.absent(),
    Value<double?> budget = const Value.absent(),
    bool? auctionEnabled,
    String? status,
    String? shipperId,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isSynced,
    bool? isDeleted,
  }) => FreightPost(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description.present ? description.value : this.description,
    cargoType: cargoType ?? this.cargoType,
    weight: weight ?? this.weight,
    dimensions: dimensions.present ? dimensions.value : this.dimensions,
    pickupLocation: pickupLocation ?? this.pickupLocation,
    pickupLat: pickupLat.present ? pickupLat.value : this.pickupLat,
    pickupLng: pickupLng.present ? pickupLng.value : this.pickupLng,
    pickupDate: pickupDate ?? this.pickupDate,
    deliveryLocation: deliveryLocation ?? this.deliveryLocation,
    deliveryLat: deliveryLat.present ? deliveryLat.value : this.deliveryLat,
    deliveryLng: deliveryLng.present ? deliveryLng.value : this.deliveryLng,
    preferredDeliveryDate: preferredDeliveryDate.present
        ? preferredDeliveryDate.value
        : this.preferredDeliveryDate,
    requiredVehicleType: requiredVehicleType.present
        ? requiredVehicleType.value
        : this.requiredVehicleType,
    specialRequirements: specialRequirements.present
        ? specialRequirements.value
        : this.specialRequirements,
    budget: budget.present ? budget.value : this.budget,
    auctionEnabled: auctionEnabled ?? this.auctionEnabled,
    status: status ?? this.status,
    shipperId: shipperId ?? this.shipperId,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    isSynced: isSynced ?? this.isSynced,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  FreightPost copyWithCompanion(FreightPostsCompanion data) {
    return FreightPost(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      cargoType: data.cargoType.present ? data.cargoType.value : this.cargoType,
      weight: data.weight.present ? data.weight.value : this.weight,
      dimensions: data.dimensions.present
          ? data.dimensions.value
          : this.dimensions,
      pickupLocation: data.pickupLocation.present
          ? data.pickupLocation.value
          : this.pickupLocation,
      pickupLat: data.pickupLat.present ? data.pickupLat.value : this.pickupLat,
      pickupLng: data.pickupLng.present ? data.pickupLng.value : this.pickupLng,
      pickupDate: data.pickupDate.present
          ? data.pickupDate.value
          : this.pickupDate,
      deliveryLocation: data.deliveryLocation.present
          ? data.deliveryLocation.value
          : this.deliveryLocation,
      deliveryLat: data.deliveryLat.present
          ? data.deliveryLat.value
          : this.deliveryLat,
      deliveryLng: data.deliveryLng.present
          ? data.deliveryLng.value
          : this.deliveryLng,
      preferredDeliveryDate: data.preferredDeliveryDate.present
          ? data.preferredDeliveryDate.value
          : this.preferredDeliveryDate,
      requiredVehicleType: data.requiredVehicleType.present
          ? data.requiredVehicleType.value
          : this.requiredVehicleType,
      specialRequirements: data.specialRequirements.present
          ? data.specialRequirements.value
          : this.specialRequirements,
      budget: data.budget.present ? data.budget.value : this.budget,
      auctionEnabled: data.auctionEnabled.present
          ? data.auctionEnabled.value
          : this.auctionEnabled,
      status: data.status.present ? data.status.value : this.status,
      shipperId: data.shipperId.present ? data.shipperId.value : this.shipperId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isSynced: data.isSynced.present ? data.isSynced.value : this.isSynced,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FreightPost(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('cargoType: $cargoType, ')
          ..write('weight: $weight, ')
          ..write('dimensions: $dimensions, ')
          ..write('pickupLocation: $pickupLocation, ')
          ..write('pickupLat: $pickupLat, ')
          ..write('pickupLng: $pickupLng, ')
          ..write('pickupDate: $pickupDate, ')
          ..write('deliveryLocation: $deliveryLocation, ')
          ..write('deliveryLat: $deliveryLat, ')
          ..write('deliveryLng: $deliveryLng, ')
          ..write('preferredDeliveryDate: $preferredDeliveryDate, ')
          ..write('requiredVehicleType: $requiredVehicleType, ')
          ..write('specialRequirements: $specialRequirements, ')
          ..write('budget: $budget, ')
          ..write('auctionEnabled: $auctionEnabled, ')
          ..write('status: $status, ')
          ..write('shipperId: $shipperId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isSynced: $isSynced, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    title,
    description,
    cargoType,
    weight,
    dimensions,
    pickupLocation,
    pickupLat,
    pickupLng,
    pickupDate,
    deliveryLocation,
    deliveryLat,
    deliveryLng,
    preferredDeliveryDate,
    requiredVehicleType,
    specialRequirements,
    budget,
    auctionEnabled,
    status,
    shipperId,
    createdAt,
    updatedAt,
    isSynced,
    isDeleted,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FreightPost &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.cargoType == this.cargoType &&
          other.weight == this.weight &&
          other.dimensions == this.dimensions &&
          other.pickupLocation == this.pickupLocation &&
          other.pickupLat == this.pickupLat &&
          other.pickupLng == this.pickupLng &&
          other.pickupDate == this.pickupDate &&
          other.deliveryLocation == this.deliveryLocation &&
          other.deliveryLat == this.deliveryLat &&
          other.deliveryLng == this.deliveryLng &&
          other.preferredDeliveryDate == this.preferredDeliveryDate &&
          other.requiredVehicleType == this.requiredVehicleType &&
          other.specialRequirements == this.specialRequirements &&
          other.budget == this.budget &&
          other.auctionEnabled == this.auctionEnabled &&
          other.status == this.status &&
          other.shipperId == this.shipperId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isSynced == this.isSynced &&
          other.isDeleted == this.isDeleted);
}

class FreightPostsCompanion extends UpdateCompanion<FreightPost> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<String> cargoType;
  final Value<double> weight;
  final Value<String?> dimensions;
  final Value<String> pickupLocation;
  final Value<double?> pickupLat;
  final Value<double?> pickupLng;
  final Value<DateTime> pickupDate;
  final Value<String> deliveryLocation;
  final Value<double?> deliveryLat;
  final Value<double?> deliveryLng;
  final Value<DateTime?> preferredDeliveryDate;
  final Value<String?> requiredVehicleType;
  final Value<String?> specialRequirements;
  final Value<double?> budget;
  final Value<bool> auctionEnabled;
  final Value<String> status;
  final Value<String> shipperId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> isSynced;
  final Value<bool> isDeleted;
  final Value<int> rowid;
  const FreightPostsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.cargoType = const Value.absent(),
    this.weight = const Value.absent(),
    this.dimensions = const Value.absent(),
    this.pickupLocation = const Value.absent(),
    this.pickupLat = const Value.absent(),
    this.pickupLng = const Value.absent(),
    this.pickupDate = const Value.absent(),
    this.deliveryLocation = const Value.absent(),
    this.deliveryLat = const Value.absent(),
    this.deliveryLng = const Value.absent(),
    this.preferredDeliveryDate = const Value.absent(),
    this.requiredVehicleType = const Value.absent(),
    this.specialRequirements = const Value.absent(),
    this.budget = const Value.absent(),
    this.auctionEnabled = const Value.absent(),
    this.status = const Value.absent(),
    this.shipperId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FreightPostsCompanion.insert({
    required String id,
    required String title,
    this.description = const Value.absent(),
    required String cargoType,
    required double weight,
    this.dimensions = const Value.absent(),
    required String pickupLocation,
    this.pickupLat = const Value.absent(),
    this.pickupLng = const Value.absent(),
    required DateTime pickupDate,
    required String deliveryLocation,
    this.deliveryLat = const Value.absent(),
    this.deliveryLng = const Value.absent(),
    this.preferredDeliveryDate = const Value.absent(),
    this.requiredVehicleType = const Value.absent(),
    this.specialRequirements = const Value.absent(),
    this.budget = const Value.absent(),
    this.auctionEnabled = const Value.absent(),
    this.status = const Value.absent(),
    required String shipperId,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.isSynced = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       cargoType = Value(cargoType),
       weight = Value(weight),
       pickupLocation = Value(pickupLocation),
       pickupDate = Value(pickupDate),
       deliveryLocation = Value(deliveryLocation),
       shipperId = Value(shipperId),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<FreightPost> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? cargoType,
    Expression<double>? weight,
    Expression<String>? dimensions,
    Expression<String>? pickupLocation,
    Expression<double>? pickupLat,
    Expression<double>? pickupLng,
    Expression<DateTime>? pickupDate,
    Expression<String>? deliveryLocation,
    Expression<double>? deliveryLat,
    Expression<double>? deliveryLng,
    Expression<DateTime>? preferredDeliveryDate,
    Expression<String>? requiredVehicleType,
    Expression<String>? specialRequirements,
    Expression<double>? budget,
    Expression<bool>? auctionEnabled,
    Expression<String>? status,
    Expression<String>? shipperId,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? isSynced,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (cargoType != null) 'cargo_type': cargoType,
      if (weight != null) 'weight': weight,
      if (dimensions != null) 'dimensions': dimensions,
      if (pickupLocation != null) 'pickup_location': pickupLocation,
      if (pickupLat != null) 'pickup_lat': pickupLat,
      if (pickupLng != null) 'pickup_lng': pickupLng,
      if (pickupDate != null) 'pickup_date': pickupDate,
      if (deliveryLocation != null) 'delivery_location': deliveryLocation,
      if (deliveryLat != null) 'delivery_lat': deliveryLat,
      if (deliveryLng != null) 'delivery_lng': deliveryLng,
      if (preferredDeliveryDate != null)
        'preferred_delivery_date': preferredDeliveryDate,
      if (requiredVehicleType != null)
        'required_vehicle_type': requiredVehicleType,
      if (specialRequirements != null)
        'special_requirements': specialRequirements,
      if (budget != null) 'budget': budget,
      if (auctionEnabled != null) 'auction_enabled': auctionEnabled,
      if (status != null) 'status': status,
      if (shipperId != null) 'shipper_id': shipperId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isSynced != null) 'is_synced': isSynced,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FreightPostsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String?>? description,
    Value<String>? cargoType,
    Value<double>? weight,
    Value<String?>? dimensions,
    Value<String>? pickupLocation,
    Value<double?>? pickupLat,
    Value<double?>? pickupLng,
    Value<DateTime>? pickupDate,
    Value<String>? deliveryLocation,
    Value<double?>? deliveryLat,
    Value<double?>? deliveryLng,
    Value<DateTime?>? preferredDeliveryDate,
    Value<String?>? requiredVehicleType,
    Value<String?>? specialRequirements,
    Value<double?>? budget,
    Value<bool>? auctionEnabled,
    Value<String>? status,
    Value<String>? shipperId,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<bool>? isSynced,
    Value<bool>? isDeleted,
    Value<int>? rowid,
  }) {
    return FreightPostsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      cargoType: cargoType ?? this.cargoType,
      weight: weight ?? this.weight,
      dimensions: dimensions ?? this.dimensions,
      pickupLocation: pickupLocation ?? this.pickupLocation,
      pickupLat: pickupLat ?? this.pickupLat,
      pickupLng: pickupLng ?? this.pickupLng,
      pickupDate: pickupDate ?? this.pickupDate,
      deliveryLocation: deliveryLocation ?? this.deliveryLocation,
      deliveryLat: deliveryLat ?? this.deliveryLat,
      deliveryLng: deliveryLng ?? this.deliveryLng,
      preferredDeliveryDate:
          preferredDeliveryDate ?? this.preferredDeliveryDate,
      requiredVehicleType: requiredVehicleType ?? this.requiredVehicleType,
      specialRequirements: specialRequirements ?? this.specialRequirements,
      budget: budget ?? this.budget,
      auctionEnabled: auctionEnabled ?? this.auctionEnabled,
      status: status ?? this.status,
      shipperId: shipperId ?? this.shipperId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isSynced: isSynced ?? this.isSynced,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (cargoType.present) {
      map['cargo_type'] = Variable<String>(cargoType.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (dimensions.present) {
      map['dimensions'] = Variable<String>(dimensions.value);
    }
    if (pickupLocation.present) {
      map['pickup_location'] = Variable<String>(pickupLocation.value);
    }
    if (pickupLat.present) {
      map['pickup_lat'] = Variable<double>(pickupLat.value);
    }
    if (pickupLng.present) {
      map['pickup_lng'] = Variable<double>(pickupLng.value);
    }
    if (pickupDate.present) {
      map['pickup_date'] = Variable<DateTime>(pickupDate.value);
    }
    if (deliveryLocation.present) {
      map['delivery_location'] = Variable<String>(deliveryLocation.value);
    }
    if (deliveryLat.present) {
      map['delivery_lat'] = Variable<double>(deliveryLat.value);
    }
    if (deliveryLng.present) {
      map['delivery_lng'] = Variable<double>(deliveryLng.value);
    }
    if (preferredDeliveryDate.present) {
      map['preferred_delivery_date'] = Variable<DateTime>(
        preferredDeliveryDate.value,
      );
    }
    if (requiredVehicleType.present) {
      map['required_vehicle_type'] = Variable<String>(
        requiredVehicleType.value,
      );
    }
    if (specialRequirements.present) {
      map['special_requirements'] = Variable<String>(specialRequirements.value);
    }
    if (budget.present) {
      map['budget'] = Variable<double>(budget.value);
    }
    if (auctionEnabled.present) {
      map['auction_enabled'] = Variable<bool>(auctionEnabled.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (shipperId.present) {
      map['shipper_id'] = Variable<String>(shipperId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FreightPostsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('cargoType: $cargoType, ')
          ..write('weight: $weight, ')
          ..write('dimensions: $dimensions, ')
          ..write('pickupLocation: $pickupLocation, ')
          ..write('pickupLat: $pickupLat, ')
          ..write('pickupLng: $pickupLng, ')
          ..write('pickupDate: $pickupDate, ')
          ..write('deliveryLocation: $deliveryLocation, ')
          ..write('deliveryLat: $deliveryLat, ')
          ..write('deliveryLng: $deliveryLng, ')
          ..write('preferredDeliveryDate: $preferredDeliveryDate, ')
          ..write('requiredVehicleType: $requiredVehicleType, ')
          ..write('specialRequirements: $specialRequirements, ')
          ..write('budget: $budget, ')
          ..write('auctionEnabled: $auctionEnabled, ')
          ..write('status: $status, ')
          ..write('shipperId: $shipperId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isSynced: $isSynced, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BidsTable extends Bids with TableInfo<$BidsTable, Bid> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BidsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _freightPostIdMeta = const VerificationMeta(
    'freightPostId',
  );
  @override
  late final GeneratedColumn<String> freightPostId = GeneratedColumn<String>(
    'freight_post_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _driverIdMeta = const VerificationMeta(
    'driverId',
  );
  @override
  late final GeneratedColumn<String> driverId = GeneratedColumn<String>(
    'driver_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('ETB'),
  );
  static const VerificationMeta _estimatedPickupDateMeta =
      const VerificationMeta('estimatedPickupDate');
  @override
  late final GeneratedColumn<DateTime> estimatedPickupDate =
      GeneratedColumn<DateTime>(
        'estimated_pickup_date',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _estimatedDeliveryDateMeta =
      const VerificationMeta('estimatedDeliveryDate');
  @override
  late final GeneratedColumn<DateTime> estimatedDeliveryDate =
      GeneratedColumn<DateTime>(
        'estimated_delivery_date',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _messageMeta = const VerificationMeta(
    'message',
  );
  @override
  late final GeneratedColumn<String> message = GeneratedColumn<String>(
    'message',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('PENDING'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isSyncedMeta = const VerificationMeta(
    'isSynced',
  );
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
    'is_synced',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_synced" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    freightPostId,
    driverId,
    amount,
    currency,
    estimatedPickupDate,
    estimatedDeliveryDate,
    message,
    status,
    createdAt,
    updatedAt,
    isSynced,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bids';
  @override
  VerificationContext validateIntegrity(
    Insertable<Bid> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('freight_post_id')) {
      context.handle(
        _freightPostIdMeta,
        freightPostId.isAcceptableOrUnknown(
          data['freight_post_id']!,
          _freightPostIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_freightPostIdMeta);
    }
    if (data.containsKey('driver_id')) {
      context.handle(
        _driverIdMeta,
        driverId.isAcceptableOrUnknown(data['driver_id']!, _driverIdMeta),
      );
    } else if (isInserting) {
      context.missing(_driverIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    }
    if (data.containsKey('estimated_pickup_date')) {
      context.handle(
        _estimatedPickupDateMeta,
        estimatedPickupDate.isAcceptableOrUnknown(
          data['estimated_pickup_date']!,
          _estimatedPickupDateMeta,
        ),
      );
    }
    if (data.containsKey('estimated_delivery_date')) {
      context.handle(
        _estimatedDeliveryDateMeta,
        estimatedDeliveryDate.isAcceptableOrUnknown(
          data['estimated_delivery_date']!,
          _estimatedDeliveryDateMeta,
        ),
      );
    }
    if (data.containsKey('message')) {
      context.handle(
        _messageMeta,
        message.isAcceptableOrUnknown(data['message']!, _messageMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_synced')) {
      context.handle(
        _isSyncedMeta,
        isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Bid map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Bid(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      freightPostId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}freight_post_id'],
      )!,
      driverId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}driver_id'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      estimatedPickupDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}estimated_pickup_date'],
      ),
      estimatedDeliveryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}estimated_delivery_date'],
      ),
      message: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}message'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      isSynced: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_synced'],
      )!,
    );
  }

  @override
  $BidsTable createAlias(String alias) {
    return $BidsTable(attachedDatabase, alias);
  }
}

class Bid extends DataClass implements Insertable<Bid> {
  final String id;
  final String freightPostId;
  final String driverId;
  final double amount;
  final String currency;
  final DateTime? estimatedPickupDate;
  final DateTime? estimatedDeliveryDate;
  final String? message;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isSynced;
  const Bid({
    required this.id,
    required this.freightPostId,
    required this.driverId,
    required this.amount,
    required this.currency,
    this.estimatedPickupDate,
    this.estimatedDeliveryDate,
    this.message,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.isSynced,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['freight_post_id'] = Variable<String>(freightPostId);
    map['driver_id'] = Variable<String>(driverId);
    map['amount'] = Variable<double>(amount);
    map['currency'] = Variable<String>(currency);
    if (!nullToAbsent || estimatedPickupDate != null) {
      map['estimated_pickup_date'] = Variable<DateTime>(estimatedPickupDate);
    }
    if (!nullToAbsent || estimatedDeliveryDate != null) {
      map['estimated_delivery_date'] = Variable<DateTime>(
        estimatedDeliveryDate,
      );
    }
    if (!nullToAbsent || message != null) {
      map['message'] = Variable<String>(message);
    }
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['is_synced'] = Variable<bool>(isSynced);
    return map;
  }

  BidsCompanion toCompanion(bool nullToAbsent) {
    return BidsCompanion(
      id: Value(id),
      freightPostId: Value(freightPostId),
      driverId: Value(driverId),
      amount: Value(amount),
      currency: Value(currency),
      estimatedPickupDate: estimatedPickupDate == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedPickupDate),
      estimatedDeliveryDate: estimatedDeliveryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedDeliveryDate),
      message: message == null && nullToAbsent
          ? const Value.absent()
          : Value(message),
      status: Value(status),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isSynced: Value(isSynced),
    );
  }

  factory Bid.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Bid(
      id: serializer.fromJson<String>(json['id']),
      freightPostId: serializer.fromJson<String>(json['freightPostId']),
      driverId: serializer.fromJson<String>(json['driverId']),
      amount: serializer.fromJson<double>(json['amount']),
      currency: serializer.fromJson<String>(json['currency']),
      estimatedPickupDate: serializer.fromJson<DateTime?>(
        json['estimatedPickupDate'],
      ),
      estimatedDeliveryDate: serializer.fromJson<DateTime?>(
        json['estimatedDeliveryDate'],
      ),
      message: serializer.fromJson<String?>(json['message']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'freightPostId': serializer.toJson<String>(freightPostId),
      'driverId': serializer.toJson<String>(driverId),
      'amount': serializer.toJson<double>(amount),
      'currency': serializer.toJson<String>(currency),
      'estimatedPickupDate': serializer.toJson<DateTime?>(estimatedPickupDate),
      'estimatedDeliveryDate': serializer.toJson<DateTime?>(
        estimatedDeliveryDate,
      ),
      'message': serializer.toJson<String?>(message),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'isSynced': serializer.toJson<bool>(isSynced),
    };
  }

  Bid copyWith({
    String? id,
    String? freightPostId,
    String? driverId,
    double? amount,
    String? currency,
    Value<DateTime?> estimatedPickupDate = const Value.absent(),
    Value<DateTime?> estimatedDeliveryDate = const Value.absent(),
    Value<String?> message = const Value.absent(),
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isSynced,
  }) => Bid(
    id: id ?? this.id,
    freightPostId: freightPostId ?? this.freightPostId,
    driverId: driverId ?? this.driverId,
    amount: amount ?? this.amount,
    currency: currency ?? this.currency,
    estimatedPickupDate: estimatedPickupDate.present
        ? estimatedPickupDate.value
        : this.estimatedPickupDate,
    estimatedDeliveryDate: estimatedDeliveryDate.present
        ? estimatedDeliveryDate.value
        : this.estimatedDeliveryDate,
    message: message.present ? message.value : this.message,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    isSynced: isSynced ?? this.isSynced,
  );
  Bid copyWithCompanion(BidsCompanion data) {
    return Bid(
      id: data.id.present ? data.id.value : this.id,
      freightPostId: data.freightPostId.present
          ? data.freightPostId.value
          : this.freightPostId,
      driverId: data.driverId.present ? data.driverId.value : this.driverId,
      amount: data.amount.present ? data.amount.value : this.amount,
      currency: data.currency.present ? data.currency.value : this.currency,
      estimatedPickupDate: data.estimatedPickupDate.present
          ? data.estimatedPickupDate.value
          : this.estimatedPickupDate,
      estimatedDeliveryDate: data.estimatedDeliveryDate.present
          ? data.estimatedDeliveryDate.value
          : this.estimatedDeliveryDate,
      message: data.message.present ? data.message.value : this.message,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isSynced: data.isSynced.present ? data.isSynced.value : this.isSynced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Bid(')
          ..write('id: $id, ')
          ..write('freightPostId: $freightPostId, ')
          ..write('driverId: $driverId, ')
          ..write('amount: $amount, ')
          ..write('currency: $currency, ')
          ..write('estimatedPickupDate: $estimatedPickupDate, ')
          ..write('estimatedDeliveryDate: $estimatedDeliveryDate, ')
          ..write('message: $message, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isSynced: $isSynced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    freightPostId,
    driverId,
    amount,
    currency,
    estimatedPickupDate,
    estimatedDeliveryDate,
    message,
    status,
    createdAt,
    updatedAt,
    isSynced,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bid &&
          other.id == this.id &&
          other.freightPostId == this.freightPostId &&
          other.driverId == this.driverId &&
          other.amount == this.amount &&
          other.currency == this.currency &&
          other.estimatedPickupDate == this.estimatedPickupDate &&
          other.estimatedDeliveryDate == this.estimatedDeliveryDate &&
          other.message == this.message &&
          other.status == this.status &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isSynced == this.isSynced);
}

class BidsCompanion extends UpdateCompanion<Bid> {
  final Value<String> id;
  final Value<String> freightPostId;
  final Value<String> driverId;
  final Value<double> amount;
  final Value<String> currency;
  final Value<DateTime?> estimatedPickupDate;
  final Value<DateTime?> estimatedDeliveryDate;
  final Value<String?> message;
  final Value<String> status;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> isSynced;
  final Value<int> rowid;
  const BidsCompanion({
    this.id = const Value.absent(),
    this.freightPostId = const Value.absent(),
    this.driverId = const Value.absent(),
    this.amount = const Value.absent(),
    this.currency = const Value.absent(),
    this.estimatedPickupDate = const Value.absent(),
    this.estimatedDeliveryDate = const Value.absent(),
    this.message = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BidsCompanion.insert({
    required String id,
    required String freightPostId,
    required String driverId,
    required double amount,
    this.currency = const Value.absent(),
    this.estimatedPickupDate = const Value.absent(),
    this.estimatedDeliveryDate = const Value.absent(),
    this.message = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.isSynced = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       freightPostId = Value(freightPostId),
       driverId = Value(driverId),
       amount = Value(amount),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Bid> custom({
    Expression<String>? id,
    Expression<String>? freightPostId,
    Expression<String>? driverId,
    Expression<double>? amount,
    Expression<String>? currency,
    Expression<DateTime>? estimatedPickupDate,
    Expression<DateTime>? estimatedDeliveryDate,
    Expression<String>? message,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? isSynced,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (freightPostId != null) 'freight_post_id': freightPostId,
      if (driverId != null) 'driver_id': driverId,
      if (amount != null) 'amount': amount,
      if (currency != null) 'currency': currency,
      if (estimatedPickupDate != null)
        'estimated_pickup_date': estimatedPickupDate,
      if (estimatedDeliveryDate != null)
        'estimated_delivery_date': estimatedDeliveryDate,
      if (message != null) 'message': message,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isSynced != null) 'is_synced': isSynced,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BidsCompanion copyWith({
    Value<String>? id,
    Value<String>? freightPostId,
    Value<String>? driverId,
    Value<double>? amount,
    Value<String>? currency,
    Value<DateTime?>? estimatedPickupDate,
    Value<DateTime?>? estimatedDeliveryDate,
    Value<String?>? message,
    Value<String>? status,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<bool>? isSynced,
    Value<int>? rowid,
  }) {
    return BidsCompanion(
      id: id ?? this.id,
      freightPostId: freightPostId ?? this.freightPostId,
      driverId: driverId ?? this.driverId,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      estimatedPickupDate: estimatedPickupDate ?? this.estimatedPickupDate,
      estimatedDeliveryDate:
          estimatedDeliveryDate ?? this.estimatedDeliveryDate,
      message: message ?? this.message,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isSynced: isSynced ?? this.isSynced,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (freightPostId.present) {
      map['freight_post_id'] = Variable<String>(freightPostId.value);
    }
    if (driverId.present) {
      map['driver_id'] = Variable<String>(driverId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (estimatedPickupDate.present) {
      map['estimated_pickup_date'] = Variable<DateTime>(
        estimatedPickupDate.value,
      );
    }
    if (estimatedDeliveryDate.present) {
      map['estimated_delivery_date'] = Variable<DateTime>(
        estimatedDeliveryDate.value,
      );
    }
    if (message.present) {
      map['message'] = Variable<String>(message.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BidsCompanion(')
          ..write('id: $id, ')
          ..write('freightPostId: $freightPostId, ')
          ..write('driverId: $driverId, ')
          ..write('amount: $amount, ')
          ..write('currency: $currency, ')
          ..write('estimatedPickupDate: $estimatedPickupDate, ')
          ..write('estimatedDeliveryDate: $estimatedDeliveryDate, ')
          ..write('message: $message, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isSynced: $isSynced, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncQueueTable extends SyncQueue
    with TableInfo<$SyncQueueTable, SyncQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _operationMeta = const VerificationMeta(
    'operation',
  );
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
    'operation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityTypeMeta = const VerificationMeta(
    'entityType',
  );
  @override
  late final GeneratedColumn<String> entityType = GeneratedColumn<String>(
    'entity_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _entityIdMeta = const VerificationMeta(
    'entityId',
  );
  @override
  late final GeneratedColumn<String> entityId = GeneratedColumn<String>(
    'entity_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _retryCountMeta = const VerificationMeta(
    'retryCount',
  );
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
    'retry_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('PENDING'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    operation,
    entityType,
    entityId,
    payload,
    createdAt,
    retryCount,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncQueueData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('operation')) {
      context.handle(
        _operationMeta,
        operation.isAcceptableOrUnknown(data['operation']!, _operationMeta),
      );
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    if (data.containsKey('entity_type')) {
      context.handle(
        _entityTypeMeta,
        entityType.isAcceptableOrUnknown(data['entity_type']!, _entityTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_entityTypeMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(
        _entityIdMeta,
        entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta),
      );
    } else if (isInserting) {
      context.missing(_entityIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('retry_count')) {
      context.handle(
        _retryCountMeta,
        retryCount.isAcceptableOrUnknown(data['retry_count']!, _retryCountMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      operation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}operation'],
      )!,
      entityType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entity_type'],
      )!,
      entityId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entity_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      retryCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}retry_count'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $SyncQueueTable createAlias(String alias) {
    return $SyncQueueTable(attachedDatabase, alias);
  }
}

class SyncQueueData extends DataClass implements Insertable<SyncQueueData> {
  final int id;
  final String operation;
  final String entityType;
  final String entityId;
  final String payload;
  final DateTime createdAt;
  final int retryCount;
  final String status;
  const SyncQueueData({
    required this.id,
    required this.operation,
    required this.entityType,
    required this.entityId,
    required this.payload,
    required this.createdAt,
    required this.retryCount,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['operation'] = Variable<String>(operation);
    map['entity_type'] = Variable<String>(entityType);
    map['entity_id'] = Variable<String>(entityId);
    map['payload'] = Variable<String>(payload);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['retry_count'] = Variable<int>(retryCount);
    map['status'] = Variable<String>(status);
    return map;
  }

  SyncQueueCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueCompanion(
      id: Value(id),
      operation: Value(operation),
      entityType: Value(entityType),
      entityId: Value(entityId),
      payload: Value(payload),
      createdAt: Value(createdAt),
      retryCount: Value(retryCount),
      status: Value(status),
    );
  }

  factory SyncQueueData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueData(
      id: serializer.fromJson<int>(json['id']),
      operation: serializer.fromJson<String>(json['operation']),
      entityType: serializer.fromJson<String>(json['entityType']),
      entityId: serializer.fromJson<String>(json['entityId']),
      payload: serializer.fromJson<String>(json['payload']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      retryCount: serializer.fromJson<int>(json['retryCount']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'operation': serializer.toJson<String>(operation),
      'entityType': serializer.toJson<String>(entityType),
      'entityId': serializer.toJson<String>(entityId),
      'payload': serializer.toJson<String>(payload),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'retryCount': serializer.toJson<int>(retryCount),
      'status': serializer.toJson<String>(status),
    };
  }

  SyncQueueData copyWith({
    int? id,
    String? operation,
    String? entityType,
    String? entityId,
    String? payload,
    DateTime? createdAt,
    int? retryCount,
    String? status,
  }) => SyncQueueData(
    id: id ?? this.id,
    operation: operation ?? this.operation,
    entityType: entityType ?? this.entityType,
    entityId: entityId ?? this.entityId,
    payload: payload ?? this.payload,
    createdAt: createdAt ?? this.createdAt,
    retryCount: retryCount ?? this.retryCount,
    status: status ?? this.status,
  );
  SyncQueueData copyWithCompanion(SyncQueueCompanion data) {
    return SyncQueueData(
      id: data.id.present ? data.id.value : this.id,
      operation: data.operation.present ? data.operation.value : this.operation,
      entityType: data.entityType.present
          ? data.entityType.value
          : this.entityType,
      entityId: data.entityId.present ? data.entityId.value : this.entityId,
      payload: data.payload.present ? data.payload.value : this.payload,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      retryCount: data.retryCount.present
          ? data.retryCount.value
          : this.retryCount,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueData(')
          ..write('id: $id, ')
          ..write('operation: $operation, ')
          ..write('entityType: $entityType, ')
          ..write('entityId: $entityId, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('retryCount: $retryCount, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    operation,
    entityType,
    entityId,
    payload,
    createdAt,
    retryCount,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueData &&
          other.id == this.id &&
          other.operation == this.operation &&
          other.entityType == this.entityType &&
          other.entityId == this.entityId &&
          other.payload == this.payload &&
          other.createdAt == this.createdAt &&
          other.retryCount == this.retryCount &&
          other.status == this.status);
}

class SyncQueueCompanion extends UpdateCompanion<SyncQueueData> {
  final Value<int> id;
  final Value<String> operation;
  final Value<String> entityType;
  final Value<String> entityId;
  final Value<String> payload;
  final Value<DateTime> createdAt;
  final Value<int> retryCount;
  final Value<String> status;
  const SyncQueueCompanion({
    this.id = const Value.absent(),
    this.operation = const Value.absent(),
    this.entityType = const Value.absent(),
    this.entityId = const Value.absent(),
    this.payload = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.status = const Value.absent(),
  });
  SyncQueueCompanion.insert({
    this.id = const Value.absent(),
    required String operation,
    required String entityType,
    required String entityId,
    required String payload,
    this.createdAt = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.status = const Value.absent(),
  }) : operation = Value(operation),
       entityType = Value(entityType),
       entityId = Value(entityId),
       payload = Value(payload);
  static Insertable<SyncQueueData> custom({
    Expression<int>? id,
    Expression<String>? operation,
    Expression<String>? entityType,
    Expression<String>? entityId,
    Expression<String>? payload,
    Expression<DateTime>? createdAt,
    Expression<int>? retryCount,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (operation != null) 'operation': operation,
      if (entityType != null) 'entity_type': entityType,
      if (entityId != null) 'entity_id': entityId,
      if (payload != null) 'payload': payload,
      if (createdAt != null) 'created_at': createdAt,
      if (retryCount != null) 'retry_count': retryCount,
      if (status != null) 'status': status,
    });
  }

  SyncQueueCompanion copyWith({
    Value<int>? id,
    Value<String>? operation,
    Value<String>? entityType,
    Value<String>? entityId,
    Value<String>? payload,
    Value<DateTime>? createdAt,
    Value<int>? retryCount,
    Value<String>? status,
  }) {
    return SyncQueueCompanion(
      id: id ?? this.id,
      operation: operation ?? this.operation,
      entityType: entityType ?? this.entityType,
      entityId: entityId ?? this.entityId,
      payload: payload ?? this.payload,
      createdAt: createdAt ?? this.createdAt,
      retryCount: retryCount ?? this.retryCount,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (entityType.present) {
      map['entity_type'] = Variable<String>(entityType.value);
    }
    if (entityId.present) {
      map['entity_id'] = Variable<String>(entityId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (retryCount.present) {
      map['retry_count'] = Variable<int>(retryCount.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueCompanion(')
          ..write('id: $id, ')
          ..write('operation: $operation, ')
          ..write('entityType: $entityType, ')
          ..write('entityId: $entityId, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('retryCount: $retryCount, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastNameMeta = const VerificationMeta(
    'lastName',
  );
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
    'last_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<String> avatar = GeneratedColumn<String>(
    'avatar',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isPhoneVerifiedMeta = const VerificationMeta(
    'isPhoneVerified',
  );
  @override
  late final GeneratedColumn<bool> isPhoneVerified = GeneratedColumn<bool>(
    'is_phone_verified',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_phone_verified" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isFaydaVerifiedMeta = const VerificationMeta(
    'isFaydaVerified',
  );
  @override
  late final GeneratedColumn<bool> isFaydaVerified = GeneratedColumn<bool>(
    'is_fayda_verified',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_fayda_verified" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _faydaIdMeta = const VerificationMeta(
    'faydaId',
  );
  @override
  late final GeneratedColumn<String> faydaId = GeneratedColumn<String>(
    'fayda_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastUpdatedMeta = const VerificationMeta(
    'lastUpdated',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
    'last_updated',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    phone,
    role,
    firstName,
    lastName,
    email,
    avatar,
    isPhoneVerified,
    isFaydaVerified,
    faydaId,
    lastUpdated,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(
    Insertable<User> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    }
    if (data.containsKey('last_name')) {
      context.handle(
        _lastNameMeta,
        lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('avatar')) {
      context.handle(
        _avatarMeta,
        avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta),
      );
    }
    if (data.containsKey('is_phone_verified')) {
      context.handle(
        _isPhoneVerifiedMeta,
        isPhoneVerified.isAcceptableOrUnknown(
          data['is_phone_verified']!,
          _isPhoneVerifiedMeta,
        ),
      );
    }
    if (data.containsKey('is_fayda_verified')) {
      context.handle(
        _isFaydaVerifiedMeta,
        isFaydaVerified.isAcceptableOrUnknown(
          data['is_fayda_verified']!,
          _isFaydaVerifiedMeta,
        ),
      );
    }
    if (data.containsKey('fayda_id')) {
      context.handle(
        _faydaIdMeta,
        faydaId.isAcceptableOrUnknown(data['fayda_id']!, _faydaIdMeta),
      );
    }
    if (data.containsKey('last_updated')) {
      context.handle(
        _lastUpdatedMeta,
        lastUpdated.isAcceptableOrUnknown(
          data['last_updated']!,
          _lastUpdatedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      ),
      lastName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_name'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      avatar: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar'],
      ),
      isPhoneVerified: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_phone_verified'],
      )!,
      isFaydaVerified: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_fayda_verified'],
      )!,
      faydaId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fayda_id'],
      ),
      lastUpdated: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated'],
      )!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final String phone;
  final String role;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? avatar;
  final bool isPhoneVerified;
  final bool isFaydaVerified;
  final String? faydaId;
  final DateTime lastUpdated;
  const User({
    required this.id,
    required this.phone,
    required this.role,
    this.firstName,
    this.lastName,
    this.email,
    this.avatar,
    required this.isPhoneVerified,
    required this.isFaydaVerified,
    this.faydaId,
    required this.lastUpdated,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['phone'] = Variable<String>(phone);
    map['role'] = Variable<String>(role);
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || avatar != null) {
      map['avatar'] = Variable<String>(avatar);
    }
    map['is_phone_verified'] = Variable<bool>(isPhoneVerified);
    map['is_fayda_verified'] = Variable<bool>(isFaydaVerified);
    if (!nullToAbsent || faydaId != null) {
      map['fayda_id'] = Variable<String>(faydaId);
    }
    map['last_updated'] = Variable<DateTime>(lastUpdated);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      phone: Value(phone),
      role: Value(role),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      avatar: avatar == null && nullToAbsent
          ? const Value.absent()
          : Value(avatar),
      isPhoneVerified: Value(isPhoneVerified),
      isFaydaVerified: Value(isFaydaVerified),
      faydaId: faydaId == null && nullToAbsent
          ? const Value.absent()
          : Value(faydaId),
      lastUpdated: Value(lastUpdated),
    );
  }

  factory User.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      phone: serializer.fromJson<String>(json['phone']),
      role: serializer.fromJson<String>(json['role']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      email: serializer.fromJson<String?>(json['email']),
      avatar: serializer.fromJson<String?>(json['avatar']),
      isPhoneVerified: serializer.fromJson<bool>(json['isPhoneVerified']),
      isFaydaVerified: serializer.fromJson<bool>(json['isFaydaVerified']),
      faydaId: serializer.fromJson<String?>(json['faydaId']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'phone': serializer.toJson<String>(phone),
      'role': serializer.toJson<String>(role),
      'firstName': serializer.toJson<String?>(firstName),
      'lastName': serializer.toJson<String?>(lastName),
      'email': serializer.toJson<String?>(email),
      'avatar': serializer.toJson<String?>(avatar),
      'isPhoneVerified': serializer.toJson<bool>(isPhoneVerified),
      'isFaydaVerified': serializer.toJson<bool>(isFaydaVerified),
      'faydaId': serializer.toJson<String?>(faydaId),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
    };
  }

  User copyWith({
    String? id,
    String? phone,
    String? role,
    Value<String?> firstName = const Value.absent(),
    Value<String?> lastName = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> avatar = const Value.absent(),
    bool? isPhoneVerified,
    bool? isFaydaVerified,
    Value<String?> faydaId = const Value.absent(),
    DateTime? lastUpdated,
  }) => User(
    id: id ?? this.id,
    phone: phone ?? this.phone,
    role: role ?? this.role,
    firstName: firstName.present ? firstName.value : this.firstName,
    lastName: lastName.present ? lastName.value : this.lastName,
    email: email.present ? email.value : this.email,
    avatar: avatar.present ? avatar.value : this.avatar,
    isPhoneVerified: isPhoneVerified ?? this.isPhoneVerified,
    isFaydaVerified: isFaydaVerified ?? this.isFaydaVerified,
    faydaId: faydaId.present ? faydaId.value : this.faydaId,
    lastUpdated: lastUpdated ?? this.lastUpdated,
  );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      phone: data.phone.present ? data.phone.value : this.phone,
      role: data.role.present ? data.role.value : this.role,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      email: data.email.present ? data.email.value : this.email,
      avatar: data.avatar.present ? data.avatar.value : this.avatar,
      isPhoneVerified: data.isPhoneVerified.present
          ? data.isPhoneVerified.value
          : this.isPhoneVerified,
      isFaydaVerified: data.isFaydaVerified.present
          ? data.isFaydaVerified.value
          : this.isFaydaVerified,
      faydaId: data.faydaId.present ? data.faydaId.value : this.faydaId,
      lastUpdated: data.lastUpdated.present
          ? data.lastUpdated.value
          : this.lastUpdated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('phone: $phone, ')
          ..write('role: $role, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('avatar: $avatar, ')
          ..write('isPhoneVerified: $isPhoneVerified, ')
          ..write('isFaydaVerified: $isFaydaVerified, ')
          ..write('faydaId: $faydaId, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    phone,
    role,
    firstName,
    lastName,
    email,
    avatar,
    isPhoneVerified,
    isFaydaVerified,
    faydaId,
    lastUpdated,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.phone == this.phone &&
          other.role == this.role &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.avatar == this.avatar &&
          other.isPhoneVerified == this.isPhoneVerified &&
          other.isFaydaVerified == this.isFaydaVerified &&
          other.faydaId == this.faydaId &&
          other.lastUpdated == this.lastUpdated);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> phone;
  final Value<String> role;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<String?> email;
  final Value<String?> avatar;
  final Value<bool> isPhoneVerified;
  final Value<bool> isFaydaVerified;
  final Value<String?> faydaId;
  final Value<DateTime> lastUpdated;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.phone = const Value.absent(),
    this.role = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.avatar = const Value.absent(),
    this.isPhoneVerified = const Value.absent(),
    this.isFaydaVerified = const Value.absent(),
    this.faydaId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    required String phone,
    required String role,
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.avatar = const Value.absent(),
    this.isPhoneVerified = const Value.absent(),
    this.isFaydaVerified = const Value.absent(),
    this.faydaId = const Value.absent(),
    required DateTime lastUpdated,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       phone = Value(phone),
       role = Value(role),
       lastUpdated = Value(lastUpdated);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? phone,
    Expression<String>? role,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? email,
    Expression<String>? avatar,
    Expression<bool>? isPhoneVerified,
    Expression<bool>? isFaydaVerified,
    Expression<String>? faydaId,
    Expression<DateTime>? lastUpdated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (phone != null) 'phone': phone,
      if (role != null) 'role': role,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (avatar != null) 'avatar': avatar,
      if (isPhoneVerified != null) 'is_phone_verified': isPhoneVerified,
      if (isFaydaVerified != null) 'is_fayda_verified': isFaydaVerified,
      if (faydaId != null) 'fayda_id': faydaId,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith({
    Value<String>? id,
    Value<String>? phone,
    Value<String>? role,
    Value<String?>? firstName,
    Value<String?>? lastName,
    Value<String?>? email,
    Value<String?>? avatar,
    Value<bool>? isPhoneVerified,
    Value<bool>? isFaydaVerified,
    Value<String?>? faydaId,
    Value<DateTime>? lastUpdated,
    Value<int>? rowid,
  }) {
    return UsersCompanion(
      id: id ?? this.id,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      avatar: avatar ?? this.avatar,
      isPhoneVerified: isPhoneVerified ?? this.isPhoneVerified,
      isFaydaVerified: isFaydaVerified ?? this.isFaydaVerified,
      faydaId: faydaId ?? this.faydaId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (isPhoneVerified.present) {
      map['is_phone_verified'] = Variable<bool>(isPhoneVerified.value);
    }
    if (isFaydaVerified.present) {
      map['is_fayda_verified'] = Variable<bool>(isFaydaVerified.value);
    }
    if (faydaId.present) {
      map['fayda_id'] = Variable<String>(faydaId.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('phone: $phone, ')
          ..write('role: $role, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('avatar: $avatar, ')
          ..write('isPhoneVerified: $isPhoneVerified, ')
          ..write('isFaydaVerified: $isFaydaVerified, ')
          ..write('faydaId: $faydaId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $FreightPostsTable freightPosts = $FreightPostsTable(this);
  late final $BidsTable bids = $BidsTable(this);
  late final $SyncQueueTable syncQueue = $SyncQueueTable(this);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    freightPosts,
    bids,
    syncQueue,
    users,
  ];
}

typedef $$FreightPostsTableCreateCompanionBuilder =
    FreightPostsCompanion Function({
      required String id,
      required String title,
      Value<String?> description,
      required String cargoType,
      required double weight,
      Value<String?> dimensions,
      required String pickupLocation,
      Value<double?> pickupLat,
      Value<double?> pickupLng,
      required DateTime pickupDate,
      required String deliveryLocation,
      Value<double?> deliveryLat,
      Value<double?> deliveryLng,
      Value<DateTime?> preferredDeliveryDate,
      Value<String?> requiredVehicleType,
      Value<String?> specialRequirements,
      Value<double?> budget,
      Value<bool> auctionEnabled,
      Value<String> status,
      required String shipperId,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<bool> isSynced,
      Value<bool> isDeleted,
      Value<int> rowid,
    });
typedef $$FreightPostsTableUpdateCompanionBuilder =
    FreightPostsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String?> description,
      Value<String> cargoType,
      Value<double> weight,
      Value<String?> dimensions,
      Value<String> pickupLocation,
      Value<double?> pickupLat,
      Value<double?> pickupLng,
      Value<DateTime> pickupDate,
      Value<String> deliveryLocation,
      Value<double?> deliveryLat,
      Value<double?> deliveryLng,
      Value<DateTime?> preferredDeliveryDate,
      Value<String?> requiredVehicleType,
      Value<String?> specialRequirements,
      Value<double?> budget,
      Value<bool> auctionEnabled,
      Value<String> status,
      Value<String> shipperId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> isSynced,
      Value<bool> isDeleted,
      Value<int> rowid,
    });

class $$FreightPostsTableFilterComposer
    extends Composer<_$AppDatabase, $FreightPostsTable> {
  $$FreightPostsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cargoType => $composableBuilder(
    column: $table.cargoType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dimensions => $composableBuilder(
    column: $table.dimensions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pickupLocation => $composableBuilder(
    column: $table.pickupLocation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pickupLat => $composableBuilder(
    column: $table.pickupLat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pickupLng => $composableBuilder(
    column: $table.pickupLng,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get pickupDate => $composableBuilder(
    column: $table.pickupDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deliveryLocation => $composableBuilder(
    column: $table.deliveryLocation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get deliveryLat => $composableBuilder(
    column: $table.deliveryLat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get deliveryLng => $composableBuilder(
    column: $table.deliveryLng,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get preferredDeliveryDate => $composableBuilder(
    column: $table.preferredDeliveryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get requiredVehicleType => $composableBuilder(
    column: $table.requiredVehicleType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get specialRequirements => $composableBuilder(
    column: $table.specialRequirements,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get budget => $composableBuilder(
    column: $table.budget,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get auctionEnabled => $composableBuilder(
    column: $table.auctionEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shipperId => $composableBuilder(
    column: $table.shipperId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FreightPostsTableOrderingComposer
    extends Composer<_$AppDatabase, $FreightPostsTable> {
  $$FreightPostsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cargoType => $composableBuilder(
    column: $table.cargoType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dimensions => $composableBuilder(
    column: $table.dimensions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pickupLocation => $composableBuilder(
    column: $table.pickupLocation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pickupLat => $composableBuilder(
    column: $table.pickupLat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pickupLng => $composableBuilder(
    column: $table.pickupLng,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get pickupDate => $composableBuilder(
    column: $table.pickupDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deliveryLocation => $composableBuilder(
    column: $table.deliveryLocation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get deliveryLat => $composableBuilder(
    column: $table.deliveryLat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get deliveryLng => $composableBuilder(
    column: $table.deliveryLng,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get preferredDeliveryDate => $composableBuilder(
    column: $table.preferredDeliveryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get requiredVehicleType => $composableBuilder(
    column: $table.requiredVehicleType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get specialRequirements => $composableBuilder(
    column: $table.specialRequirements,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get budget => $composableBuilder(
    column: $table.budget,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get auctionEnabled => $composableBuilder(
    column: $table.auctionEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shipperId => $composableBuilder(
    column: $table.shipperId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FreightPostsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FreightPostsTable> {
  $$FreightPostsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cargoType =>
      $composableBuilder(column: $table.cargoType, builder: (column) => column);

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<String> get dimensions => $composableBuilder(
    column: $table.dimensions,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pickupLocation => $composableBuilder(
    column: $table.pickupLocation,
    builder: (column) => column,
  );

  GeneratedColumn<double> get pickupLat =>
      $composableBuilder(column: $table.pickupLat, builder: (column) => column);

  GeneratedColumn<double> get pickupLng =>
      $composableBuilder(column: $table.pickupLng, builder: (column) => column);

  GeneratedColumn<DateTime> get pickupDate => $composableBuilder(
    column: $table.pickupDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get deliveryLocation => $composableBuilder(
    column: $table.deliveryLocation,
    builder: (column) => column,
  );

  GeneratedColumn<double> get deliveryLat => $composableBuilder(
    column: $table.deliveryLat,
    builder: (column) => column,
  );

  GeneratedColumn<double> get deliveryLng => $composableBuilder(
    column: $table.deliveryLng,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get preferredDeliveryDate => $composableBuilder(
    column: $table.preferredDeliveryDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get requiredVehicleType => $composableBuilder(
    column: $table.requiredVehicleType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get specialRequirements => $composableBuilder(
    column: $table.specialRequirements,
    builder: (column) => column,
  );

  GeneratedColumn<double> get budget =>
      $composableBuilder(column: $table.budget, builder: (column) => column);

  GeneratedColumn<bool> get auctionEnabled => $composableBuilder(
    column: $table.auctionEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get shipperId =>
      $composableBuilder(column: $table.shipperId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isSynced =>
      $composableBuilder(column: $table.isSynced, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);
}

class $$FreightPostsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FreightPostsTable,
          FreightPost,
          $$FreightPostsTableFilterComposer,
          $$FreightPostsTableOrderingComposer,
          $$FreightPostsTableAnnotationComposer,
          $$FreightPostsTableCreateCompanionBuilder,
          $$FreightPostsTableUpdateCompanionBuilder,
          (
            FreightPost,
            BaseReferences<_$AppDatabase, $FreightPostsTable, FreightPost>,
          ),
          FreightPost,
          PrefetchHooks Function()
        > {
  $$FreightPostsTableTableManager(_$AppDatabase db, $FreightPostsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FreightPostsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FreightPostsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FreightPostsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String> cargoType = const Value.absent(),
                Value<double> weight = const Value.absent(),
                Value<String?> dimensions = const Value.absent(),
                Value<String> pickupLocation = const Value.absent(),
                Value<double?> pickupLat = const Value.absent(),
                Value<double?> pickupLng = const Value.absent(),
                Value<DateTime> pickupDate = const Value.absent(),
                Value<String> deliveryLocation = const Value.absent(),
                Value<double?> deliveryLat = const Value.absent(),
                Value<double?> deliveryLng = const Value.absent(),
                Value<DateTime?> preferredDeliveryDate = const Value.absent(),
                Value<String?> requiredVehicleType = const Value.absent(),
                Value<String?> specialRequirements = const Value.absent(),
                Value<double?> budget = const Value.absent(),
                Value<bool> auctionEnabled = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> shipperId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> isSynced = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FreightPostsCompanion(
                id: id,
                title: title,
                description: description,
                cargoType: cargoType,
                weight: weight,
                dimensions: dimensions,
                pickupLocation: pickupLocation,
                pickupLat: pickupLat,
                pickupLng: pickupLng,
                pickupDate: pickupDate,
                deliveryLocation: deliveryLocation,
                deliveryLat: deliveryLat,
                deliveryLng: deliveryLng,
                preferredDeliveryDate: preferredDeliveryDate,
                requiredVehicleType: requiredVehicleType,
                specialRequirements: specialRequirements,
                budget: budget,
                auctionEnabled: auctionEnabled,
                status: status,
                shipperId: shipperId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isSynced: isSynced,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                Value<String?> description = const Value.absent(),
                required String cargoType,
                required double weight,
                Value<String?> dimensions = const Value.absent(),
                required String pickupLocation,
                Value<double?> pickupLat = const Value.absent(),
                Value<double?> pickupLng = const Value.absent(),
                required DateTime pickupDate,
                required String deliveryLocation,
                Value<double?> deliveryLat = const Value.absent(),
                Value<double?> deliveryLng = const Value.absent(),
                Value<DateTime?> preferredDeliveryDate = const Value.absent(),
                Value<String?> requiredVehicleType = const Value.absent(),
                Value<String?> specialRequirements = const Value.absent(),
                Value<double?> budget = const Value.absent(),
                Value<bool> auctionEnabled = const Value.absent(),
                Value<String> status = const Value.absent(),
                required String shipperId,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<bool> isSynced = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FreightPostsCompanion.insert(
                id: id,
                title: title,
                description: description,
                cargoType: cargoType,
                weight: weight,
                dimensions: dimensions,
                pickupLocation: pickupLocation,
                pickupLat: pickupLat,
                pickupLng: pickupLng,
                pickupDate: pickupDate,
                deliveryLocation: deliveryLocation,
                deliveryLat: deliveryLat,
                deliveryLng: deliveryLng,
                preferredDeliveryDate: preferredDeliveryDate,
                requiredVehicleType: requiredVehicleType,
                specialRequirements: specialRequirements,
                budget: budget,
                auctionEnabled: auctionEnabled,
                status: status,
                shipperId: shipperId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isSynced: isSynced,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FreightPostsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FreightPostsTable,
      FreightPost,
      $$FreightPostsTableFilterComposer,
      $$FreightPostsTableOrderingComposer,
      $$FreightPostsTableAnnotationComposer,
      $$FreightPostsTableCreateCompanionBuilder,
      $$FreightPostsTableUpdateCompanionBuilder,
      (
        FreightPost,
        BaseReferences<_$AppDatabase, $FreightPostsTable, FreightPost>,
      ),
      FreightPost,
      PrefetchHooks Function()
    >;
typedef $$BidsTableCreateCompanionBuilder =
    BidsCompanion Function({
      required String id,
      required String freightPostId,
      required String driverId,
      required double amount,
      Value<String> currency,
      Value<DateTime?> estimatedPickupDate,
      Value<DateTime?> estimatedDeliveryDate,
      Value<String?> message,
      Value<String> status,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<bool> isSynced,
      Value<int> rowid,
    });
typedef $$BidsTableUpdateCompanionBuilder =
    BidsCompanion Function({
      Value<String> id,
      Value<String> freightPostId,
      Value<String> driverId,
      Value<double> amount,
      Value<String> currency,
      Value<DateTime?> estimatedPickupDate,
      Value<DateTime?> estimatedDeliveryDate,
      Value<String?> message,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> isSynced,
      Value<int> rowid,
    });

class $$BidsTableFilterComposer extends Composer<_$AppDatabase, $BidsTable> {
  $$BidsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get freightPostId => $composableBuilder(
    column: $table.freightPostId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get driverId => $composableBuilder(
    column: $table.driverId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get estimatedPickupDate => $composableBuilder(
    column: $table.estimatedPickupDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get estimatedDeliveryDate => $composableBuilder(
    column: $table.estimatedDeliveryDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get message => $composableBuilder(
    column: $table.message,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BidsTableOrderingComposer extends Composer<_$AppDatabase, $BidsTable> {
  $$BidsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get freightPostId => $composableBuilder(
    column: $table.freightPostId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get driverId => $composableBuilder(
    column: $table.driverId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get estimatedPickupDate => $composableBuilder(
    column: $table.estimatedPickupDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get estimatedDeliveryDate => $composableBuilder(
    column: $table.estimatedDeliveryDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get message => $composableBuilder(
    column: $table.message,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSynced => $composableBuilder(
    column: $table.isSynced,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BidsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BidsTable> {
  $$BidsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get freightPostId => $composableBuilder(
    column: $table.freightPostId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get driverId =>
      $composableBuilder(column: $table.driverId, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<DateTime> get estimatedPickupDate => $composableBuilder(
    column: $table.estimatedPickupDate,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get estimatedDeliveryDate => $composableBuilder(
    column: $table.estimatedDeliveryDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get message =>
      $composableBuilder(column: $table.message, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isSynced =>
      $composableBuilder(column: $table.isSynced, builder: (column) => column);
}

class $$BidsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BidsTable,
          Bid,
          $$BidsTableFilterComposer,
          $$BidsTableOrderingComposer,
          $$BidsTableAnnotationComposer,
          $$BidsTableCreateCompanionBuilder,
          $$BidsTableUpdateCompanionBuilder,
          (Bid, BaseReferences<_$AppDatabase, $BidsTable, Bid>),
          Bid,
          PrefetchHooks Function()
        > {
  $$BidsTableTableManager(_$AppDatabase db, $BidsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BidsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BidsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BidsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> freightPostId = const Value.absent(),
                Value<String> driverId = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<DateTime?> estimatedPickupDate = const Value.absent(),
                Value<DateTime?> estimatedDeliveryDate = const Value.absent(),
                Value<String?> message = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> isSynced = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BidsCompanion(
                id: id,
                freightPostId: freightPostId,
                driverId: driverId,
                amount: amount,
                currency: currency,
                estimatedPickupDate: estimatedPickupDate,
                estimatedDeliveryDate: estimatedDeliveryDate,
                message: message,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isSynced: isSynced,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String freightPostId,
                required String driverId,
                required double amount,
                Value<String> currency = const Value.absent(),
                Value<DateTime?> estimatedPickupDate = const Value.absent(),
                Value<DateTime?> estimatedDeliveryDate = const Value.absent(),
                Value<String?> message = const Value.absent(),
                Value<String> status = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<bool> isSynced = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BidsCompanion.insert(
                id: id,
                freightPostId: freightPostId,
                driverId: driverId,
                amount: amount,
                currency: currency,
                estimatedPickupDate: estimatedPickupDate,
                estimatedDeliveryDate: estimatedDeliveryDate,
                message: message,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isSynced: isSynced,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BidsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BidsTable,
      Bid,
      $$BidsTableFilterComposer,
      $$BidsTableOrderingComposer,
      $$BidsTableAnnotationComposer,
      $$BidsTableCreateCompanionBuilder,
      $$BidsTableUpdateCompanionBuilder,
      (Bid, BaseReferences<_$AppDatabase, $BidsTable, Bid>),
      Bid,
      PrefetchHooks Function()
    >;
typedef $$SyncQueueTableCreateCompanionBuilder =
    SyncQueueCompanion Function({
      Value<int> id,
      required String operation,
      required String entityType,
      required String entityId,
      required String payload,
      Value<DateTime> createdAt,
      Value<int> retryCount,
      Value<String> status,
    });
typedef $$SyncQueueTableUpdateCompanionBuilder =
    SyncQueueCompanion Function({
      Value<int> id,
      Value<String> operation,
      Value<String> entityType,
      Value<String> entityId,
      Value<String> payload,
      Value<DateTime> createdAt,
      Value<int> retryCount,
      Value<String> status,
    });

class $$SyncQueueTableFilterComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entityId => $composableBuilder(
    column: $table.entityId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get operation =>
      $composableBuilder(column: $table.operation, builder: (column) => column);

  GeneratedColumn<String> get entityType => $composableBuilder(
    column: $table.entityType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get entityId =>
      $composableBuilder(column: $table.entityId, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$SyncQueueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncQueueTable,
          SyncQueueData,
          $$SyncQueueTableFilterComposer,
          $$SyncQueueTableOrderingComposer,
          $$SyncQueueTableAnnotationComposer,
          $$SyncQueueTableCreateCompanionBuilder,
          $$SyncQueueTableUpdateCompanionBuilder,
          (
            SyncQueueData,
            BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueData>,
          ),
          SyncQueueData,
          PrefetchHooks Function()
        > {
  $$SyncQueueTableTableManager(_$AppDatabase db, $SyncQueueTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> operation = const Value.absent(),
                Value<String> entityType = const Value.absent(),
                Value<String> entityId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
                Value<String> status = const Value.absent(),
              }) => SyncQueueCompanion(
                id: id,
                operation: operation,
                entityType: entityType,
                entityId: entityId,
                payload: payload,
                createdAt: createdAt,
                retryCount: retryCount,
                status: status,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String operation,
                required String entityType,
                required String entityId,
                required String payload,
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
                Value<String> status = const Value.absent(),
              }) => SyncQueueCompanion.insert(
                id: id,
                operation: operation,
                entityType: entityType,
                entityId: entityId,
                payload: payload,
                createdAt: createdAt,
                retryCount: retryCount,
                status: status,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncQueueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncQueueTable,
      SyncQueueData,
      $$SyncQueueTableFilterComposer,
      $$SyncQueueTableOrderingComposer,
      $$SyncQueueTableAnnotationComposer,
      $$SyncQueueTableCreateCompanionBuilder,
      $$SyncQueueTableUpdateCompanionBuilder,
      (
        SyncQueueData,
        BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueData>,
      ),
      SyncQueueData,
      PrefetchHooks Function()
    >;
typedef $$UsersTableCreateCompanionBuilder =
    UsersCompanion Function({
      required String id,
      required String phone,
      required String role,
      Value<String?> firstName,
      Value<String?> lastName,
      Value<String?> email,
      Value<String?> avatar,
      Value<bool> isPhoneVerified,
      Value<bool> isFaydaVerified,
      Value<String?> faydaId,
      required DateTime lastUpdated,
      Value<int> rowid,
    });
typedef $$UsersTableUpdateCompanionBuilder =
    UsersCompanion Function({
      Value<String> id,
      Value<String> phone,
      Value<String> role,
      Value<String?> firstName,
      Value<String?> lastName,
      Value<String?> email,
      Value<String?> avatar,
      Value<bool> isPhoneVerified,
      Value<bool> isFaydaVerified,
      Value<String?> faydaId,
      Value<DateTime> lastUpdated,
      Value<int> rowid,
    });

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatar => $composableBuilder(
    column: $table.avatar,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPhoneVerified => $composableBuilder(
    column: $table.isPhoneVerified,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFaydaVerified => $composableBuilder(
    column: $table.isFaydaVerified,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get faydaId => $composableBuilder(
    column: $table.faydaId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastName => $composableBuilder(
    column: $table.lastName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatar => $composableBuilder(
    column: $table.avatar,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPhoneVerified => $composableBuilder(
    column: $table.isPhoneVerified,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFaydaVerified => $composableBuilder(
    column: $table.isFaydaVerified,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get faydaId => $composableBuilder(
    column: $table.faydaId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get avatar =>
      $composableBuilder(column: $table.avatar, builder: (column) => column);

  GeneratedColumn<bool> get isPhoneVerified => $composableBuilder(
    column: $table.isPhoneVerified,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isFaydaVerified => $composableBuilder(
    column: $table.isFaydaVerified,
    builder: (column) => column,
  );

  GeneratedColumn<String> get faydaId =>
      $composableBuilder(column: $table.faydaId, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => column,
  );
}

class $$UsersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UsersTable,
          User,
          $$UsersTableFilterComposer,
          $$UsersTableOrderingComposer,
          $$UsersTableAnnotationComposer,
          $$UsersTableCreateCompanionBuilder,
          $$UsersTableUpdateCompanionBuilder,
          (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
          User,
          PrefetchHooks Function()
        > {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<String?> firstName = const Value.absent(),
                Value<String?> lastName = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> avatar = const Value.absent(),
                Value<bool> isPhoneVerified = const Value.absent(),
                Value<bool> isFaydaVerified = const Value.absent(),
                Value<String?> faydaId = const Value.absent(),
                Value<DateTime> lastUpdated = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion(
                id: id,
                phone: phone,
                role: role,
                firstName: firstName,
                lastName: lastName,
                email: email,
                avatar: avatar,
                isPhoneVerified: isPhoneVerified,
                isFaydaVerified: isFaydaVerified,
                faydaId: faydaId,
                lastUpdated: lastUpdated,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String phone,
                required String role,
                Value<String?> firstName = const Value.absent(),
                Value<String?> lastName = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> avatar = const Value.absent(),
                Value<bool> isPhoneVerified = const Value.absent(),
                Value<bool> isFaydaVerified = const Value.absent(),
                Value<String?> faydaId = const Value.absent(),
                required DateTime lastUpdated,
                Value<int> rowid = const Value.absent(),
              }) => UsersCompanion.insert(
                id: id,
                phone: phone,
                role: role,
                firstName: firstName,
                lastName: lastName,
                email: email,
                avatar: avatar,
                isPhoneVerified: isPhoneVerified,
                isFaydaVerified: isFaydaVerified,
                faydaId: faydaId,
                lastUpdated: lastUpdated,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UsersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UsersTable,
      User,
      $$UsersTableFilterComposer,
      $$UsersTableOrderingComposer,
      $$UsersTableAnnotationComposer,
      $$UsersTableCreateCompanionBuilder,
      $$UsersTableUpdateCompanionBuilder,
      (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
      User,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$FreightPostsTableTableManager get freightPosts =>
      $$FreightPostsTableTableManager(_db, _db.freightPosts);
  $$BidsTableTableManager get bids => $$BidsTableTableManager(_db, _db.bids);
  $$SyncQueueTableTableManager get syncQueue =>
      $$SyncQueueTableTableManager(_db, _db.syncQueue);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
}
