// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreightPostModel {

 String get id; String get title; String? get description; String get cargoType; double get weight; String? get dimensions; String get pickupLocation; double? get pickupLat; double? get pickupLng; DateTime get pickupDate; String get deliveryLocation; double? get deliveryLat; double? get deliveryLng; DateTime? get preferredDeliveryDate; String? get requiredVehicleType; String? get specialRequirements; double? get budget; bool get auctionEnabled; DateTime? get auctionStartTime; DateTime? get auctionEndTime; double? get startingBid; String get status; DateTime? get createdAt; DateTime? get updatedAt; String? get shipperId; ShipperInfoModel? get shipper; List<BidModel>? get bids; FreightJobModel? get job; AuctionModel? get auction;
/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreightPostModelCopyWith<FreightPostModel> get copyWith => _$FreightPostModelCopyWithImpl<FreightPostModel>(this as FreightPostModel, _$identity);

  /// Serializes this FreightPostModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreightPostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.pickupLat, pickupLat) || other.pickupLat == pickupLat)&&(identical(other.pickupLng, pickupLng) || other.pickupLng == pickupLng)&&(identical(other.pickupDate, pickupDate) || other.pickupDate == pickupDate)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.deliveryLat, deliveryLat) || other.deliveryLat == deliveryLat)&&(identical(other.deliveryLng, deliveryLng) || other.deliveryLng == deliveryLng)&&(identical(other.preferredDeliveryDate, preferredDeliveryDate) || other.preferredDeliveryDate == preferredDeliveryDate)&&(identical(other.requiredVehicleType, requiredVehicleType) || other.requiredVehicleType == requiredVehicleType)&&(identical(other.specialRequirements, specialRequirements) || other.specialRequirements == specialRequirements)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.auctionEnabled, auctionEnabled) || other.auctionEnabled == auctionEnabled)&&(identical(other.auctionStartTime, auctionStartTime) || other.auctionStartTime == auctionStartTime)&&(identical(other.auctionEndTime, auctionEndTime) || other.auctionEndTime == auctionEndTime)&&(identical(other.startingBid, startingBid) || other.startingBid == startingBid)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.shipperId, shipperId) || other.shipperId == shipperId)&&(identical(other.shipper, shipper) || other.shipper == shipper)&&const DeepCollectionEquality().equals(other.bids, bids)&&(identical(other.job, job) || other.job == job)&&(identical(other.auction, auction) || other.auction == auction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,cargoType,weight,dimensions,pickupLocation,pickupLat,pickupLng,pickupDate,deliveryLocation,deliveryLat,deliveryLng,preferredDeliveryDate,requiredVehicleType,specialRequirements,budget,auctionEnabled,auctionStartTime,auctionEndTime,startingBid,status,createdAt,updatedAt,shipperId,shipper,const DeepCollectionEquality().hash(bids),job,auction]);

@override
String toString() {
  return 'FreightPostModel(id: $id, title: $title, description: $description, cargoType: $cargoType, weight: $weight, dimensions: $dimensions, pickupLocation: $pickupLocation, pickupLat: $pickupLat, pickupLng: $pickupLng, pickupDate: $pickupDate, deliveryLocation: $deliveryLocation, deliveryLat: $deliveryLat, deliveryLng: $deliveryLng, preferredDeliveryDate: $preferredDeliveryDate, requiredVehicleType: $requiredVehicleType, specialRequirements: $specialRequirements, budget: $budget, auctionEnabled: $auctionEnabled, auctionStartTime: $auctionStartTime, auctionEndTime: $auctionEndTime, startingBid: $startingBid, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, shipperId: $shipperId, shipper: $shipper, bids: $bids, job: $job, auction: $auction)';
}


}

/// @nodoc
abstract mixin class $FreightPostModelCopyWith<$Res>  {
  factory $FreightPostModelCopyWith(FreightPostModel value, $Res Function(FreightPostModel) _then) = _$FreightPostModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description, String cargoType, double weight, String? dimensions, String pickupLocation, double? pickupLat, double? pickupLng, DateTime pickupDate, String deliveryLocation, double? deliveryLat, double? deliveryLng, DateTime? preferredDeliveryDate, String? requiredVehicleType, String? specialRequirements, double? budget, bool auctionEnabled, DateTime? auctionStartTime, DateTime? auctionEndTime, double? startingBid, String status, DateTime? createdAt, DateTime? updatedAt, String? shipperId, ShipperInfoModel? shipper, List<BidModel>? bids, FreightJobModel? job, AuctionModel? auction
});


$ShipperInfoModelCopyWith<$Res>? get shipper;$FreightJobModelCopyWith<$Res>? get job;$AuctionModelCopyWith<$Res>? get auction;

}
/// @nodoc
class _$FreightPostModelCopyWithImpl<$Res>
    implements $FreightPostModelCopyWith<$Res> {
  _$FreightPostModelCopyWithImpl(this._self, this._then);

  final FreightPostModel _self;
  final $Res Function(FreightPostModel) _then;

/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? cargoType = null,Object? weight = null,Object? dimensions = freezed,Object? pickupLocation = null,Object? pickupLat = freezed,Object? pickupLng = freezed,Object? pickupDate = null,Object? deliveryLocation = null,Object? deliveryLat = freezed,Object? deliveryLng = freezed,Object? preferredDeliveryDate = freezed,Object? requiredVehicleType = freezed,Object? specialRequirements = freezed,Object? budget = freezed,Object? auctionEnabled = null,Object? auctionStartTime = freezed,Object? auctionEndTime = freezed,Object? startingBid = freezed,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? shipperId = freezed,Object? shipper = freezed,Object? bids = freezed,Object? job = freezed,Object? auction = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,cargoType: null == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String,pickupLat: freezed == pickupLat ? _self.pickupLat : pickupLat // ignore: cast_nullable_to_non_nullable
as double?,pickupLng: freezed == pickupLng ? _self.pickupLng : pickupLng // ignore: cast_nullable_to_non_nullable
as double?,pickupDate: null == pickupDate ? _self.pickupDate : pickupDate // ignore: cast_nullable_to_non_nullable
as DateTime,deliveryLocation: null == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as String,deliveryLat: freezed == deliveryLat ? _self.deliveryLat : deliveryLat // ignore: cast_nullable_to_non_nullable
as double?,deliveryLng: freezed == deliveryLng ? _self.deliveryLng : deliveryLng // ignore: cast_nullable_to_non_nullable
as double?,preferredDeliveryDate: freezed == preferredDeliveryDate ? _self.preferredDeliveryDate : preferredDeliveryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,requiredVehicleType: freezed == requiredVehicleType ? _self.requiredVehicleType : requiredVehicleType // ignore: cast_nullable_to_non_nullable
as String?,specialRequirements: freezed == specialRequirements ? _self.specialRequirements : specialRequirements // ignore: cast_nullable_to_non_nullable
as String?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as double?,auctionEnabled: null == auctionEnabled ? _self.auctionEnabled : auctionEnabled // ignore: cast_nullable_to_non_nullable
as bool,auctionStartTime: freezed == auctionStartTime ? _self.auctionStartTime : auctionStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,auctionEndTime: freezed == auctionEndTime ? _self.auctionEndTime : auctionEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,startingBid: freezed == startingBid ? _self.startingBid : startingBid // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,shipperId: freezed == shipperId ? _self.shipperId : shipperId // ignore: cast_nullable_to_non_nullable
as String?,shipper: freezed == shipper ? _self.shipper : shipper // ignore: cast_nullable_to_non_nullable
as ShipperInfoModel?,bids: freezed == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as List<BidModel>?,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as FreightJobModel?,auction: freezed == auction ? _self.auction : auction // ignore: cast_nullable_to_non_nullable
as AuctionModel?,
  ));
}
/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShipperInfoModelCopyWith<$Res>? get shipper {
    if (_self.shipper == null) {
    return null;
  }

  return $ShipperInfoModelCopyWith<$Res>(_self.shipper!, (value) {
    return _then(_self.copyWith(shipper: value));
  });
}/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightJobModelCopyWith<$Res>? get job {
    if (_self.job == null) {
    return null;
  }

  return $FreightJobModelCopyWith<$Res>(_self.job!, (value) {
    return _then(_self.copyWith(job: value));
  });
}/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionModelCopyWith<$Res>? get auction {
    if (_self.auction == null) {
    return null;
  }

  return $AuctionModelCopyWith<$Res>(_self.auction!, (value) {
    return _then(_self.copyWith(auction: value));
  });
}
}


/// Adds pattern-matching-related methods to [FreightPostModel].
extension FreightPostModelPatterns on FreightPostModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FreightPostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FreightPostModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FreightPostModel value)  $default,){
final _that = this;
switch (_that) {
case _FreightPostModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FreightPostModel value)?  $default,){
final _that = this;
switch (_that) {
case _FreightPostModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  String cargoType,  double weight,  String? dimensions,  String pickupLocation,  double? pickupLat,  double? pickupLng,  DateTime pickupDate,  String deliveryLocation,  double? deliveryLat,  double? deliveryLng,  DateTime? preferredDeliveryDate,  String? requiredVehicleType,  String? specialRequirements,  double? budget,  bool auctionEnabled,  DateTime? auctionStartTime,  DateTime? auctionEndTime,  double? startingBid,  String status,  DateTime? createdAt,  DateTime? updatedAt,  String? shipperId,  ShipperInfoModel? shipper,  List<BidModel>? bids,  FreightJobModel? job,  AuctionModel? auction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FreightPostModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.cargoType,_that.weight,_that.dimensions,_that.pickupLocation,_that.pickupLat,_that.pickupLng,_that.pickupDate,_that.deliveryLocation,_that.deliveryLat,_that.deliveryLng,_that.preferredDeliveryDate,_that.requiredVehicleType,_that.specialRequirements,_that.budget,_that.auctionEnabled,_that.auctionStartTime,_that.auctionEndTime,_that.startingBid,_that.status,_that.createdAt,_that.updatedAt,_that.shipperId,_that.shipper,_that.bids,_that.job,_that.auction);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  String cargoType,  double weight,  String? dimensions,  String pickupLocation,  double? pickupLat,  double? pickupLng,  DateTime pickupDate,  String deliveryLocation,  double? deliveryLat,  double? deliveryLng,  DateTime? preferredDeliveryDate,  String? requiredVehicleType,  String? specialRequirements,  double? budget,  bool auctionEnabled,  DateTime? auctionStartTime,  DateTime? auctionEndTime,  double? startingBid,  String status,  DateTime? createdAt,  DateTime? updatedAt,  String? shipperId,  ShipperInfoModel? shipper,  List<BidModel>? bids,  FreightJobModel? job,  AuctionModel? auction)  $default,) {final _that = this;
switch (_that) {
case _FreightPostModel():
return $default(_that.id,_that.title,_that.description,_that.cargoType,_that.weight,_that.dimensions,_that.pickupLocation,_that.pickupLat,_that.pickupLng,_that.pickupDate,_that.deliveryLocation,_that.deliveryLat,_that.deliveryLng,_that.preferredDeliveryDate,_that.requiredVehicleType,_that.specialRequirements,_that.budget,_that.auctionEnabled,_that.auctionStartTime,_that.auctionEndTime,_that.startingBid,_that.status,_that.createdAt,_that.updatedAt,_that.shipperId,_that.shipper,_that.bids,_that.job,_that.auction);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? description,  String cargoType,  double weight,  String? dimensions,  String pickupLocation,  double? pickupLat,  double? pickupLng,  DateTime pickupDate,  String deliveryLocation,  double? deliveryLat,  double? deliveryLng,  DateTime? preferredDeliveryDate,  String? requiredVehicleType,  String? specialRequirements,  double? budget,  bool auctionEnabled,  DateTime? auctionStartTime,  DateTime? auctionEndTime,  double? startingBid,  String status,  DateTime? createdAt,  DateTime? updatedAt,  String? shipperId,  ShipperInfoModel? shipper,  List<BidModel>? bids,  FreightJobModel? job,  AuctionModel? auction)?  $default,) {final _that = this;
switch (_that) {
case _FreightPostModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.cargoType,_that.weight,_that.dimensions,_that.pickupLocation,_that.pickupLat,_that.pickupLng,_that.pickupDate,_that.deliveryLocation,_that.deliveryLat,_that.deliveryLng,_that.preferredDeliveryDate,_that.requiredVehicleType,_that.specialRequirements,_that.budget,_that.auctionEnabled,_that.auctionStartTime,_that.auctionEndTime,_that.startingBid,_that.status,_that.createdAt,_that.updatedAt,_that.shipperId,_that.shipper,_that.bids,_that.job,_that.auction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FreightPostModel implements FreightPostModel {
  const _FreightPostModel({required this.id, required this.title, this.description, required this.cargoType, required this.weight, this.dimensions, required this.pickupLocation, this.pickupLat, this.pickupLng, required this.pickupDate, required this.deliveryLocation, this.deliveryLat, this.deliveryLng, this.preferredDeliveryDate, this.requiredVehicleType, this.specialRequirements, this.budget, this.auctionEnabled = true, this.auctionStartTime, this.auctionEndTime, this.startingBid, this.status = 'POSTED', this.createdAt, this.updatedAt, this.shipperId, this.shipper, final  List<BidModel>? bids, this.job, this.auction}): _bids = bids;
  factory _FreightPostModel.fromJson(Map<String, dynamic> json) => _$FreightPostModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
@override final  String cargoType;
@override final  double weight;
@override final  String? dimensions;
@override final  String pickupLocation;
@override final  double? pickupLat;
@override final  double? pickupLng;
@override final  DateTime pickupDate;
@override final  String deliveryLocation;
@override final  double? deliveryLat;
@override final  double? deliveryLng;
@override final  DateTime? preferredDeliveryDate;
@override final  String? requiredVehicleType;
@override final  String? specialRequirements;
@override final  double? budget;
@override@JsonKey() final  bool auctionEnabled;
@override final  DateTime? auctionStartTime;
@override final  DateTime? auctionEndTime;
@override final  double? startingBid;
@override@JsonKey() final  String status;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? shipperId;
@override final  ShipperInfoModel? shipper;
 final  List<BidModel>? _bids;
@override List<BidModel>? get bids {
  final value = _bids;
  if (value == null) return null;
  if (_bids is EqualUnmodifiableListView) return _bids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FreightJobModel? job;
@override final  AuctionModel? auction;

/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreightPostModelCopyWith<_FreightPostModel> get copyWith => __$FreightPostModelCopyWithImpl<_FreightPostModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FreightPostModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreightPostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.cargoType, cargoType) || other.cargoType == cargoType)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.pickupLat, pickupLat) || other.pickupLat == pickupLat)&&(identical(other.pickupLng, pickupLng) || other.pickupLng == pickupLng)&&(identical(other.pickupDate, pickupDate) || other.pickupDate == pickupDate)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.deliveryLat, deliveryLat) || other.deliveryLat == deliveryLat)&&(identical(other.deliveryLng, deliveryLng) || other.deliveryLng == deliveryLng)&&(identical(other.preferredDeliveryDate, preferredDeliveryDate) || other.preferredDeliveryDate == preferredDeliveryDate)&&(identical(other.requiredVehicleType, requiredVehicleType) || other.requiredVehicleType == requiredVehicleType)&&(identical(other.specialRequirements, specialRequirements) || other.specialRequirements == specialRequirements)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.auctionEnabled, auctionEnabled) || other.auctionEnabled == auctionEnabled)&&(identical(other.auctionStartTime, auctionStartTime) || other.auctionStartTime == auctionStartTime)&&(identical(other.auctionEndTime, auctionEndTime) || other.auctionEndTime == auctionEndTime)&&(identical(other.startingBid, startingBid) || other.startingBid == startingBid)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.shipperId, shipperId) || other.shipperId == shipperId)&&(identical(other.shipper, shipper) || other.shipper == shipper)&&const DeepCollectionEquality().equals(other._bids, _bids)&&(identical(other.job, job) || other.job == job)&&(identical(other.auction, auction) || other.auction == auction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,cargoType,weight,dimensions,pickupLocation,pickupLat,pickupLng,pickupDate,deliveryLocation,deliveryLat,deliveryLng,preferredDeliveryDate,requiredVehicleType,specialRequirements,budget,auctionEnabled,auctionStartTime,auctionEndTime,startingBid,status,createdAt,updatedAt,shipperId,shipper,const DeepCollectionEquality().hash(_bids),job,auction]);

@override
String toString() {
  return 'FreightPostModel(id: $id, title: $title, description: $description, cargoType: $cargoType, weight: $weight, dimensions: $dimensions, pickupLocation: $pickupLocation, pickupLat: $pickupLat, pickupLng: $pickupLng, pickupDate: $pickupDate, deliveryLocation: $deliveryLocation, deliveryLat: $deliveryLat, deliveryLng: $deliveryLng, preferredDeliveryDate: $preferredDeliveryDate, requiredVehicleType: $requiredVehicleType, specialRequirements: $specialRequirements, budget: $budget, auctionEnabled: $auctionEnabled, auctionStartTime: $auctionStartTime, auctionEndTime: $auctionEndTime, startingBid: $startingBid, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, shipperId: $shipperId, shipper: $shipper, bids: $bids, job: $job, auction: $auction)';
}


}

/// @nodoc
abstract mixin class _$FreightPostModelCopyWith<$Res> implements $FreightPostModelCopyWith<$Res> {
  factory _$FreightPostModelCopyWith(_FreightPostModel value, $Res Function(_FreightPostModel) _then) = __$FreightPostModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, String cargoType, double weight, String? dimensions, String pickupLocation, double? pickupLat, double? pickupLng, DateTime pickupDate, String deliveryLocation, double? deliveryLat, double? deliveryLng, DateTime? preferredDeliveryDate, String? requiredVehicleType, String? specialRequirements, double? budget, bool auctionEnabled, DateTime? auctionStartTime, DateTime? auctionEndTime, double? startingBid, String status, DateTime? createdAt, DateTime? updatedAt, String? shipperId, ShipperInfoModel? shipper, List<BidModel>? bids, FreightJobModel? job, AuctionModel? auction
});


@override $ShipperInfoModelCopyWith<$Res>? get shipper;@override $FreightJobModelCopyWith<$Res>? get job;@override $AuctionModelCopyWith<$Res>? get auction;

}
/// @nodoc
class __$FreightPostModelCopyWithImpl<$Res>
    implements _$FreightPostModelCopyWith<$Res> {
  __$FreightPostModelCopyWithImpl(this._self, this._then);

  final _FreightPostModel _self;
  final $Res Function(_FreightPostModel) _then;

/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? cargoType = null,Object? weight = null,Object? dimensions = freezed,Object? pickupLocation = null,Object? pickupLat = freezed,Object? pickupLng = freezed,Object? pickupDate = null,Object? deliveryLocation = null,Object? deliveryLat = freezed,Object? deliveryLng = freezed,Object? preferredDeliveryDate = freezed,Object? requiredVehicleType = freezed,Object? specialRequirements = freezed,Object? budget = freezed,Object? auctionEnabled = null,Object? auctionStartTime = freezed,Object? auctionEndTime = freezed,Object? startingBid = freezed,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? shipperId = freezed,Object? shipper = freezed,Object? bids = freezed,Object? job = freezed,Object? auction = freezed,}) {
  return _then(_FreightPostModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,cargoType: null == cargoType ? _self.cargoType : cargoType // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String,pickupLat: freezed == pickupLat ? _self.pickupLat : pickupLat // ignore: cast_nullable_to_non_nullable
as double?,pickupLng: freezed == pickupLng ? _self.pickupLng : pickupLng // ignore: cast_nullable_to_non_nullable
as double?,pickupDate: null == pickupDate ? _self.pickupDate : pickupDate // ignore: cast_nullable_to_non_nullable
as DateTime,deliveryLocation: null == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as String,deliveryLat: freezed == deliveryLat ? _self.deliveryLat : deliveryLat // ignore: cast_nullable_to_non_nullable
as double?,deliveryLng: freezed == deliveryLng ? _self.deliveryLng : deliveryLng // ignore: cast_nullable_to_non_nullable
as double?,preferredDeliveryDate: freezed == preferredDeliveryDate ? _self.preferredDeliveryDate : preferredDeliveryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,requiredVehicleType: freezed == requiredVehicleType ? _self.requiredVehicleType : requiredVehicleType // ignore: cast_nullable_to_non_nullable
as String?,specialRequirements: freezed == specialRequirements ? _self.specialRequirements : specialRequirements // ignore: cast_nullable_to_non_nullable
as String?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as double?,auctionEnabled: null == auctionEnabled ? _self.auctionEnabled : auctionEnabled // ignore: cast_nullable_to_non_nullable
as bool,auctionStartTime: freezed == auctionStartTime ? _self.auctionStartTime : auctionStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,auctionEndTime: freezed == auctionEndTime ? _self.auctionEndTime : auctionEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,startingBid: freezed == startingBid ? _self.startingBid : startingBid // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,shipperId: freezed == shipperId ? _self.shipperId : shipperId // ignore: cast_nullable_to_non_nullable
as String?,shipper: freezed == shipper ? _self.shipper : shipper // ignore: cast_nullable_to_non_nullable
as ShipperInfoModel?,bids: freezed == bids ? _self._bids : bids // ignore: cast_nullable_to_non_nullable
as List<BidModel>?,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as FreightJobModel?,auction: freezed == auction ? _self.auction : auction // ignore: cast_nullable_to_non_nullable
as AuctionModel?,
  ));
}

/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShipperInfoModelCopyWith<$Res>? get shipper {
    if (_self.shipper == null) {
    return null;
  }

  return $ShipperInfoModelCopyWith<$Res>(_self.shipper!, (value) {
    return _then(_self.copyWith(shipper: value));
  });
}/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightJobModelCopyWith<$Res>? get job {
    if (_self.job == null) {
    return null;
  }

  return $FreightJobModelCopyWith<$Res>(_self.job!, (value) {
    return _then(_self.copyWith(job: value));
  });
}/// Create a copy of FreightPostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionModelCopyWith<$Res>? get auction {
    if (_self.auction == null) {
    return null;
  }

  return $AuctionModelCopyWith<$Res>(_self.auction!, (value) {
    return _then(_self.copyWith(auction: value));
  });
}
}


/// @nodoc
mixin _$ShipperInfoModel {

 String get id; UserInfoModel? get user;
/// Create a copy of ShipperInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShipperInfoModelCopyWith<ShipperInfoModel> get copyWith => _$ShipperInfoModelCopyWithImpl<ShipperInfoModel>(this as ShipperInfoModel, _$identity);

  /// Serializes this ShipperInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShipperInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user);

@override
String toString() {
  return 'ShipperInfoModel(id: $id, user: $user)';
}


}

/// @nodoc
abstract mixin class $ShipperInfoModelCopyWith<$Res>  {
  factory $ShipperInfoModelCopyWith(ShipperInfoModel value, $Res Function(ShipperInfoModel) _then) = _$ShipperInfoModelCopyWithImpl;
@useResult
$Res call({
 String id, UserInfoModel? user
});


$UserInfoModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$ShipperInfoModelCopyWithImpl<$Res>
    implements $ShipperInfoModelCopyWith<$Res> {
  _$ShipperInfoModelCopyWithImpl(this._self, this._then);

  final ShipperInfoModel _self;
  final $Res Function(ShipperInfoModel) _then;

/// Create a copy of ShipperInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInfoModel?,
  ));
}
/// Create a copy of ShipperInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserInfoModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShipperInfoModel].
extension ShipperInfoModelPatterns on ShipperInfoModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShipperInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShipperInfoModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShipperInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _ShipperInfoModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShipperInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShipperInfoModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  UserInfoModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShipperInfoModel() when $default != null:
return $default(_that.id,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  UserInfoModel? user)  $default,) {final _that = this;
switch (_that) {
case _ShipperInfoModel():
return $default(_that.id,_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  UserInfoModel? user)?  $default,) {final _that = this;
switch (_that) {
case _ShipperInfoModel() when $default != null:
return $default(_that.id,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShipperInfoModel implements ShipperInfoModel {
  const _ShipperInfoModel({required this.id, this.user});
  factory _ShipperInfoModel.fromJson(Map<String, dynamic> json) => _$ShipperInfoModelFromJson(json);

@override final  String id;
@override final  UserInfoModel? user;

/// Create a copy of ShipperInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShipperInfoModelCopyWith<_ShipperInfoModel> get copyWith => __$ShipperInfoModelCopyWithImpl<_ShipperInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShipperInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShipperInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user);

@override
String toString() {
  return 'ShipperInfoModel(id: $id, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ShipperInfoModelCopyWith<$Res> implements $ShipperInfoModelCopyWith<$Res> {
  factory _$ShipperInfoModelCopyWith(_ShipperInfoModel value, $Res Function(_ShipperInfoModel) _then) = __$ShipperInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String id, UserInfoModel? user
});


@override $UserInfoModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$ShipperInfoModelCopyWithImpl<$Res>
    implements _$ShipperInfoModelCopyWith<$Res> {
  __$ShipperInfoModelCopyWithImpl(this._self, this._then);

  final _ShipperInfoModel _self;
  final $Res Function(_ShipperInfoModel) _then;

/// Create a copy of ShipperInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = freezed,}) {
  return _then(_ShipperInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInfoModel?,
  ));
}

/// Create a copy of ShipperInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserInfoModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserInfoModel {

 String? get firstName; String? get lastName; double? get rating; bool? get isFaydaVerified;
/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<UserInfoModel> get copyWith => _$UserInfoModelCopyWithImpl<UserInfoModel>(this as UserInfoModel, _$identity);

  /// Serializes this UserInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.isFaydaVerified, isFaydaVerified) || other.isFaydaVerified == isFaydaVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,rating,isFaydaVerified);

@override
String toString() {
  return 'UserInfoModel(firstName: $firstName, lastName: $lastName, rating: $rating, isFaydaVerified: $isFaydaVerified)';
}


}

/// @nodoc
abstract mixin class $UserInfoModelCopyWith<$Res>  {
  factory $UserInfoModelCopyWith(UserInfoModel value, $Res Function(UserInfoModel) _then) = _$UserInfoModelCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName, double? rating, bool? isFaydaVerified
});




}
/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._self, this._then);

  final UserInfoModel _self;
  final $Res Function(UserInfoModel) _then;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? rating = freezed,Object? isFaydaVerified = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,isFaydaVerified: freezed == isFaydaVerified ? _self.isFaydaVerified : isFaydaVerified // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoModel].
extension UserInfoModelPatterns on UserInfoModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  double? rating,  bool? isFaydaVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.rating,_that.isFaydaVerified);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  double? rating,  bool? isFaydaVerified)  $default,) {final _that = this;
switch (_that) {
case _UserInfoModel():
return $default(_that.firstName,_that.lastName,_that.rating,_that.isFaydaVerified);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? lastName,  double? rating,  bool? isFaydaVerified)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.rating,_that.isFaydaVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoModel implements UserInfoModel {
  const _UserInfoModel({this.firstName, this.lastName, this.rating, this.isFaydaVerified});
  factory _UserInfoModel.fromJson(Map<String, dynamic> json) => _$UserInfoModelFromJson(json);

@override final  String? firstName;
@override final  String? lastName;
@override final  double? rating;
@override final  bool? isFaydaVerified;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoModelCopyWith<_UserInfoModel> get copyWith => __$UserInfoModelCopyWithImpl<_UserInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.isFaydaVerified, isFaydaVerified) || other.isFaydaVerified == isFaydaVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,rating,isFaydaVerified);

@override
String toString() {
  return 'UserInfoModel(firstName: $firstName, lastName: $lastName, rating: $rating, isFaydaVerified: $isFaydaVerified)';
}


}

/// @nodoc
abstract mixin class _$UserInfoModelCopyWith<$Res> implements $UserInfoModelCopyWith<$Res> {
  factory _$UserInfoModelCopyWith(_UserInfoModel value, $Res Function(_UserInfoModel) _then) = __$UserInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? lastName, double? rating, bool? isFaydaVerified
});




}
/// @nodoc
class __$UserInfoModelCopyWithImpl<$Res>
    implements _$UserInfoModelCopyWith<$Res> {
  __$UserInfoModelCopyWithImpl(this._self, this._then);

  final _UserInfoModel _self;
  final $Res Function(_UserInfoModel) _then;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? rating = freezed,Object? isFaydaVerified = freezed,}) {
  return _then(_UserInfoModel(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,isFaydaVerified: freezed == isFaydaVerified ? _self.isFaydaVerified : isFaydaVerified // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$BidModel {

 String get id; String get freightPostId; String get driverId; double get amount; String get currency; DateTime? get estimatedPickupDate; DateTime? get estimatedDeliveryDate; String? get message; String get status; DateTime? get createdAt; DateTime? get updatedAt; DriverInfoModel? get driver;
/// Create a copy of BidModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BidModelCopyWith<BidModel> get copyWith => _$BidModelCopyWithImpl<BidModel>(this as BidModel, _$identity);

  /// Serializes this BidModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BidModel&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.estimatedPickupDate, estimatedPickupDate) || other.estimatedPickupDate == estimatedPickupDate)&&(identical(other.estimatedDeliveryDate, estimatedDeliveryDate) || other.estimatedDeliveryDate == estimatedDeliveryDate)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freightPostId,driverId,amount,currency,estimatedPickupDate,estimatedDeliveryDate,message,status,createdAt,updatedAt,driver);

@override
String toString() {
  return 'BidModel(id: $id, freightPostId: $freightPostId, driverId: $driverId, amount: $amount, currency: $currency, estimatedPickupDate: $estimatedPickupDate, estimatedDeliveryDate: $estimatedDeliveryDate, message: $message, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, driver: $driver)';
}


}

/// @nodoc
abstract mixin class $BidModelCopyWith<$Res>  {
  factory $BidModelCopyWith(BidModel value, $Res Function(BidModel) _then) = _$BidModelCopyWithImpl;
@useResult
$Res call({
 String id, String freightPostId, String driverId, double amount, String currency, DateTime? estimatedPickupDate, DateTime? estimatedDeliveryDate, String? message, String status, DateTime? createdAt, DateTime? updatedAt, DriverInfoModel? driver
});


$DriverInfoModelCopyWith<$Res>? get driver;

}
/// @nodoc
class _$BidModelCopyWithImpl<$Res>
    implements $BidModelCopyWith<$Res> {
  _$BidModelCopyWithImpl(this._self, this._then);

  final BidModel _self;
  final $Res Function(BidModel) _then;

/// Create a copy of BidModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? freightPostId = null,Object? driverId = null,Object? amount = null,Object? currency = null,Object? estimatedPickupDate = freezed,Object? estimatedDeliveryDate = freezed,Object? message = freezed,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? driver = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,estimatedPickupDate: freezed == estimatedPickupDate ? _self.estimatedPickupDate : estimatedPickupDate // ignore: cast_nullable_to_non_nullable
as DateTime?,estimatedDeliveryDate: freezed == estimatedDeliveryDate ? _self.estimatedDeliveryDate : estimatedDeliveryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as DriverInfoModel?,
  ));
}
/// Create a copy of BidModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverInfoModelCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $DriverInfoModelCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// Adds pattern-matching-related methods to [BidModel].
extension BidModelPatterns on BidModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BidModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BidModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BidModel value)  $default,){
final _that = this;
switch (_that) {
case _BidModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BidModel value)?  $default,){
final _that = this;
switch (_that) {
case _BidModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String freightPostId,  String driverId,  double amount,  String currency,  DateTime? estimatedPickupDate,  DateTime? estimatedDeliveryDate,  String? message,  String status,  DateTime? createdAt,  DateTime? updatedAt,  DriverInfoModel? driver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BidModel() when $default != null:
return $default(_that.id,_that.freightPostId,_that.driverId,_that.amount,_that.currency,_that.estimatedPickupDate,_that.estimatedDeliveryDate,_that.message,_that.status,_that.createdAt,_that.updatedAt,_that.driver);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String freightPostId,  String driverId,  double amount,  String currency,  DateTime? estimatedPickupDate,  DateTime? estimatedDeliveryDate,  String? message,  String status,  DateTime? createdAt,  DateTime? updatedAt,  DriverInfoModel? driver)  $default,) {final _that = this;
switch (_that) {
case _BidModel():
return $default(_that.id,_that.freightPostId,_that.driverId,_that.amount,_that.currency,_that.estimatedPickupDate,_that.estimatedDeliveryDate,_that.message,_that.status,_that.createdAt,_that.updatedAt,_that.driver);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String freightPostId,  String driverId,  double amount,  String currency,  DateTime? estimatedPickupDate,  DateTime? estimatedDeliveryDate,  String? message,  String status,  DateTime? createdAt,  DateTime? updatedAt,  DriverInfoModel? driver)?  $default,) {final _that = this;
switch (_that) {
case _BidModel() when $default != null:
return $default(_that.id,_that.freightPostId,_that.driverId,_that.amount,_that.currency,_that.estimatedPickupDate,_that.estimatedDeliveryDate,_that.message,_that.status,_that.createdAt,_that.updatedAt,_that.driver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BidModel implements BidModel {
  const _BidModel({required this.id, required this.freightPostId, required this.driverId, required this.amount, this.currency = 'ETB', this.estimatedPickupDate, this.estimatedDeliveryDate, this.message, this.status = 'PENDING', this.createdAt, this.updatedAt, this.driver});
  factory _BidModel.fromJson(Map<String, dynamic> json) => _$BidModelFromJson(json);

@override final  String id;
@override final  String freightPostId;
@override final  String driverId;
@override final  double amount;
@override@JsonKey() final  String currency;
@override final  DateTime? estimatedPickupDate;
@override final  DateTime? estimatedDeliveryDate;
@override final  String? message;
@override@JsonKey() final  String status;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  DriverInfoModel? driver;

/// Create a copy of BidModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BidModelCopyWith<_BidModel> get copyWith => __$BidModelCopyWithImpl<_BidModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BidModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BidModel&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.estimatedPickupDate, estimatedPickupDate) || other.estimatedPickupDate == estimatedPickupDate)&&(identical(other.estimatedDeliveryDate, estimatedDeliveryDate) || other.estimatedDeliveryDate == estimatedDeliveryDate)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freightPostId,driverId,amount,currency,estimatedPickupDate,estimatedDeliveryDate,message,status,createdAt,updatedAt,driver);

@override
String toString() {
  return 'BidModel(id: $id, freightPostId: $freightPostId, driverId: $driverId, amount: $amount, currency: $currency, estimatedPickupDate: $estimatedPickupDate, estimatedDeliveryDate: $estimatedDeliveryDate, message: $message, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, driver: $driver)';
}


}

/// @nodoc
abstract mixin class _$BidModelCopyWith<$Res> implements $BidModelCopyWith<$Res> {
  factory _$BidModelCopyWith(_BidModel value, $Res Function(_BidModel) _then) = __$BidModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String freightPostId, String driverId, double amount, String currency, DateTime? estimatedPickupDate, DateTime? estimatedDeliveryDate, String? message, String status, DateTime? createdAt, DateTime? updatedAt, DriverInfoModel? driver
});


@override $DriverInfoModelCopyWith<$Res>? get driver;

}
/// @nodoc
class __$BidModelCopyWithImpl<$Res>
    implements _$BidModelCopyWith<$Res> {
  __$BidModelCopyWithImpl(this._self, this._then);

  final _BidModel _self;
  final $Res Function(_BidModel) _then;

/// Create a copy of BidModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? freightPostId = null,Object? driverId = null,Object? amount = null,Object? currency = null,Object? estimatedPickupDate = freezed,Object? estimatedDeliveryDate = freezed,Object? message = freezed,Object? status = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? driver = freezed,}) {
  return _then(_BidModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,estimatedPickupDate: freezed == estimatedPickupDate ? _self.estimatedPickupDate : estimatedPickupDate // ignore: cast_nullable_to_non_nullable
as DateTime?,estimatedDeliveryDate: freezed == estimatedDeliveryDate ? _self.estimatedDeliveryDate : estimatedDeliveryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as DriverInfoModel?,
  ));
}

/// Create a copy of BidModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverInfoModelCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $DriverInfoModelCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// @nodoc
mixin _$DriverInfoModel {

 String get id; UserInfoModel? get user; String? get vehicleType; double? get rating;
/// Create a copy of DriverInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverInfoModelCopyWith<DriverInfoModel> get copyWith => _$DriverInfoModelCopyWithImpl<DriverInfoModel>(this as DriverInfoModel, _$identity);

  /// Serializes this DriverInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,vehicleType,rating);

@override
String toString() {
  return 'DriverInfoModel(id: $id, user: $user, vehicleType: $vehicleType, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $DriverInfoModelCopyWith<$Res>  {
  factory $DriverInfoModelCopyWith(DriverInfoModel value, $Res Function(DriverInfoModel) _then) = _$DriverInfoModelCopyWithImpl;
@useResult
$Res call({
 String id, UserInfoModel? user, String? vehicleType, double? rating
});


$UserInfoModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$DriverInfoModelCopyWithImpl<$Res>
    implements $DriverInfoModelCopyWith<$Res> {
  _$DriverInfoModelCopyWithImpl(this._self, this._then);

  final DriverInfoModel _self;
  final $Res Function(DriverInfoModel) _then;

/// Create a copy of DriverInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = freezed,Object? vehicleType = freezed,Object? rating = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInfoModel?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of DriverInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserInfoModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [DriverInfoModel].
extension DriverInfoModelPatterns on DriverInfoModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverInfoModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _DriverInfoModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _DriverInfoModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  UserInfoModel? user,  String? vehicleType,  double? rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverInfoModel() when $default != null:
return $default(_that.id,_that.user,_that.vehicleType,_that.rating);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  UserInfoModel? user,  String? vehicleType,  double? rating)  $default,) {final _that = this;
switch (_that) {
case _DriverInfoModel():
return $default(_that.id,_that.user,_that.vehicleType,_that.rating);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  UserInfoModel? user,  String? vehicleType,  double? rating)?  $default,) {final _that = this;
switch (_that) {
case _DriverInfoModel() when $default != null:
return $default(_that.id,_that.user,_that.vehicleType,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverInfoModel implements DriverInfoModel {
  const _DriverInfoModel({required this.id, this.user, this.vehicleType, this.rating});
  factory _DriverInfoModel.fromJson(Map<String, dynamic> json) => _$DriverInfoModelFromJson(json);

@override final  String id;
@override final  UserInfoModel? user;
@override final  String? vehicleType;
@override final  double? rating;

/// Create a copy of DriverInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverInfoModelCopyWith<_DriverInfoModel> get copyWith => __$DriverInfoModelCopyWithImpl<_DriverInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,vehicleType,rating);

@override
String toString() {
  return 'DriverInfoModel(id: $id, user: $user, vehicleType: $vehicleType, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$DriverInfoModelCopyWith<$Res> implements $DriverInfoModelCopyWith<$Res> {
  factory _$DriverInfoModelCopyWith(_DriverInfoModel value, $Res Function(_DriverInfoModel) _then) = __$DriverInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String id, UserInfoModel? user, String? vehicleType, double? rating
});


@override $UserInfoModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$DriverInfoModelCopyWithImpl<$Res>
    implements _$DriverInfoModelCopyWith<$Res> {
  __$DriverInfoModelCopyWithImpl(this._self, this._then);

  final _DriverInfoModel _self;
  final $Res Function(_DriverInfoModel) _then;

/// Create a copy of DriverInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = freezed,Object? vehicleType = freezed,Object? rating = freezed,}) {
  return _then(_DriverInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInfoModel?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of DriverInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserInfoModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$FreightJobModel {

 String get id; String get freightPostId; String get bidId; String get driverId; String get status; DateTime? get pickupTime; DateTime? get deliveryTime; double? get currentLat; double? get currentLng; DateTime? get lastLocationUpdate; bool get pickupConfirmed; bool get deliveryConfirmed; String? get recipientName; String? get notes; String get paymentStatus; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of FreightJobModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreightJobModelCopyWith<FreightJobModel> get copyWith => _$FreightJobModelCopyWithImpl<FreightJobModel>(this as FreightJobModel, _$identity);

  /// Serializes this FreightJobModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreightJobModel&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.bidId, bidId) || other.bidId == bidId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.status, status) || other.status == status)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.currentLat, currentLat) || other.currentLat == currentLat)&&(identical(other.currentLng, currentLng) || other.currentLng == currentLng)&&(identical(other.lastLocationUpdate, lastLocationUpdate) || other.lastLocationUpdate == lastLocationUpdate)&&(identical(other.pickupConfirmed, pickupConfirmed) || other.pickupConfirmed == pickupConfirmed)&&(identical(other.deliveryConfirmed, deliveryConfirmed) || other.deliveryConfirmed == deliveryConfirmed)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freightPostId,bidId,driverId,status,pickupTime,deliveryTime,currentLat,currentLng,lastLocationUpdate,pickupConfirmed,deliveryConfirmed,recipientName,notes,paymentStatus,createdAt,updatedAt);

@override
String toString() {
  return 'FreightJobModel(id: $id, freightPostId: $freightPostId, bidId: $bidId, driverId: $driverId, status: $status, pickupTime: $pickupTime, deliveryTime: $deliveryTime, currentLat: $currentLat, currentLng: $currentLng, lastLocationUpdate: $lastLocationUpdate, pickupConfirmed: $pickupConfirmed, deliveryConfirmed: $deliveryConfirmed, recipientName: $recipientName, notes: $notes, paymentStatus: $paymentStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $FreightJobModelCopyWith<$Res>  {
  factory $FreightJobModelCopyWith(FreightJobModel value, $Res Function(FreightJobModel) _then) = _$FreightJobModelCopyWithImpl;
@useResult
$Res call({
 String id, String freightPostId, String bidId, String driverId, String status, DateTime? pickupTime, DateTime? deliveryTime, double? currentLat, double? currentLng, DateTime? lastLocationUpdate, bool pickupConfirmed, bool deliveryConfirmed, String? recipientName, String? notes, String paymentStatus, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$FreightJobModelCopyWithImpl<$Res>
    implements $FreightJobModelCopyWith<$Res> {
  _$FreightJobModelCopyWithImpl(this._self, this._then);

  final FreightJobModel _self;
  final $Res Function(FreightJobModel) _then;

/// Create a copy of FreightJobModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? freightPostId = null,Object? bidId = null,Object? driverId = null,Object? status = null,Object? pickupTime = freezed,Object? deliveryTime = freezed,Object? currentLat = freezed,Object? currentLng = freezed,Object? lastLocationUpdate = freezed,Object? pickupConfirmed = null,Object? deliveryConfirmed = null,Object? recipientName = freezed,Object? notes = freezed,Object? paymentStatus = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,bidId: null == bidId ? _self.bidId : bidId // ignore: cast_nullable_to_non_nullable
as String,driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as DateTime?,currentLat: freezed == currentLat ? _self.currentLat : currentLat // ignore: cast_nullable_to_non_nullable
as double?,currentLng: freezed == currentLng ? _self.currentLng : currentLng // ignore: cast_nullable_to_non_nullable
as double?,lastLocationUpdate: freezed == lastLocationUpdate ? _self.lastLocationUpdate : lastLocationUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,pickupConfirmed: null == pickupConfirmed ? _self.pickupConfirmed : pickupConfirmed // ignore: cast_nullable_to_non_nullable
as bool,deliveryConfirmed: null == deliveryConfirmed ? _self.deliveryConfirmed : deliveryConfirmed // ignore: cast_nullable_to_non_nullable
as bool,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FreightJobModel].
extension FreightJobModelPatterns on FreightJobModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FreightJobModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FreightJobModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FreightJobModel value)  $default,){
final _that = this;
switch (_that) {
case _FreightJobModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FreightJobModel value)?  $default,){
final _that = this;
switch (_that) {
case _FreightJobModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String freightPostId,  String bidId,  String driverId,  String status,  DateTime? pickupTime,  DateTime? deliveryTime,  double? currentLat,  double? currentLng,  DateTime? lastLocationUpdate,  bool pickupConfirmed,  bool deliveryConfirmed,  String? recipientName,  String? notes,  String paymentStatus,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FreightJobModel() when $default != null:
return $default(_that.id,_that.freightPostId,_that.bidId,_that.driverId,_that.status,_that.pickupTime,_that.deliveryTime,_that.currentLat,_that.currentLng,_that.lastLocationUpdate,_that.pickupConfirmed,_that.deliveryConfirmed,_that.recipientName,_that.notes,_that.paymentStatus,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String freightPostId,  String bidId,  String driverId,  String status,  DateTime? pickupTime,  DateTime? deliveryTime,  double? currentLat,  double? currentLng,  DateTime? lastLocationUpdate,  bool pickupConfirmed,  bool deliveryConfirmed,  String? recipientName,  String? notes,  String paymentStatus,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _FreightJobModel():
return $default(_that.id,_that.freightPostId,_that.bidId,_that.driverId,_that.status,_that.pickupTime,_that.deliveryTime,_that.currentLat,_that.currentLng,_that.lastLocationUpdate,_that.pickupConfirmed,_that.deliveryConfirmed,_that.recipientName,_that.notes,_that.paymentStatus,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String freightPostId,  String bidId,  String driverId,  String status,  DateTime? pickupTime,  DateTime? deliveryTime,  double? currentLat,  double? currentLng,  DateTime? lastLocationUpdate,  bool pickupConfirmed,  bool deliveryConfirmed,  String? recipientName,  String? notes,  String paymentStatus,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FreightJobModel() when $default != null:
return $default(_that.id,_that.freightPostId,_that.bidId,_that.driverId,_that.status,_that.pickupTime,_that.deliveryTime,_that.currentLat,_that.currentLng,_that.lastLocationUpdate,_that.pickupConfirmed,_that.deliveryConfirmed,_that.recipientName,_that.notes,_that.paymentStatus,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FreightJobModel implements FreightJobModel {
  const _FreightJobModel({required this.id, required this.freightPostId, required this.bidId, required this.driverId, this.status = 'ASSIGNED', this.pickupTime, this.deliveryTime, this.currentLat, this.currentLng, this.lastLocationUpdate, this.pickupConfirmed = false, this.deliveryConfirmed = false, this.recipientName, this.notes, this.paymentStatus = 'PENDING', this.createdAt, this.updatedAt});
  factory _FreightJobModel.fromJson(Map<String, dynamic> json) => _$FreightJobModelFromJson(json);

@override final  String id;
@override final  String freightPostId;
@override final  String bidId;
@override final  String driverId;
@override@JsonKey() final  String status;
@override final  DateTime? pickupTime;
@override final  DateTime? deliveryTime;
@override final  double? currentLat;
@override final  double? currentLng;
@override final  DateTime? lastLocationUpdate;
@override@JsonKey() final  bool pickupConfirmed;
@override@JsonKey() final  bool deliveryConfirmed;
@override final  String? recipientName;
@override final  String? notes;
@override@JsonKey() final  String paymentStatus;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of FreightJobModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreightJobModelCopyWith<_FreightJobModel> get copyWith => __$FreightJobModelCopyWithImpl<_FreightJobModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FreightJobModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreightJobModel&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.bidId, bidId) || other.bidId == bidId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.status, status) || other.status == status)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime)&&(identical(other.currentLat, currentLat) || other.currentLat == currentLat)&&(identical(other.currentLng, currentLng) || other.currentLng == currentLng)&&(identical(other.lastLocationUpdate, lastLocationUpdate) || other.lastLocationUpdate == lastLocationUpdate)&&(identical(other.pickupConfirmed, pickupConfirmed) || other.pickupConfirmed == pickupConfirmed)&&(identical(other.deliveryConfirmed, deliveryConfirmed) || other.deliveryConfirmed == deliveryConfirmed)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freightPostId,bidId,driverId,status,pickupTime,deliveryTime,currentLat,currentLng,lastLocationUpdate,pickupConfirmed,deliveryConfirmed,recipientName,notes,paymentStatus,createdAt,updatedAt);

@override
String toString() {
  return 'FreightJobModel(id: $id, freightPostId: $freightPostId, bidId: $bidId, driverId: $driverId, status: $status, pickupTime: $pickupTime, deliveryTime: $deliveryTime, currentLat: $currentLat, currentLng: $currentLng, lastLocationUpdate: $lastLocationUpdate, pickupConfirmed: $pickupConfirmed, deliveryConfirmed: $deliveryConfirmed, recipientName: $recipientName, notes: $notes, paymentStatus: $paymentStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FreightJobModelCopyWith<$Res> implements $FreightJobModelCopyWith<$Res> {
  factory _$FreightJobModelCopyWith(_FreightJobModel value, $Res Function(_FreightJobModel) _then) = __$FreightJobModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String freightPostId, String bidId, String driverId, String status, DateTime? pickupTime, DateTime? deliveryTime, double? currentLat, double? currentLng, DateTime? lastLocationUpdate, bool pickupConfirmed, bool deliveryConfirmed, String? recipientName, String? notes, String paymentStatus, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$FreightJobModelCopyWithImpl<$Res>
    implements _$FreightJobModelCopyWith<$Res> {
  __$FreightJobModelCopyWithImpl(this._self, this._then);

  final _FreightJobModel _self;
  final $Res Function(_FreightJobModel) _then;

/// Create a copy of FreightJobModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? freightPostId = null,Object? bidId = null,Object? driverId = null,Object? status = null,Object? pickupTime = freezed,Object? deliveryTime = freezed,Object? currentLat = freezed,Object? currentLng = freezed,Object? lastLocationUpdate = freezed,Object? pickupConfirmed = null,Object? deliveryConfirmed = null,Object? recipientName = freezed,Object? notes = freezed,Object? paymentStatus = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_FreightJobModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,bidId: null == bidId ? _self.bidId : bidId // ignore: cast_nullable_to_non_nullable
as String,driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,deliveryTime: freezed == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as DateTime?,currentLat: freezed == currentLat ? _self.currentLat : currentLat // ignore: cast_nullable_to_non_nullable
as double?,currentLng: freezed == currentLng ? _self.currentLng : currentLng // ignore: cast_nullable_to_non_nullable
as double?,lastLocationUpdate: freezed == lastLocationUpdate ? _self.lastLocationUpdate : lastLocationUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,pickupConfirmed: null == pickupConfirmed ? _self.pickupConfirmed : pickupConfirmed // ignore: cast_nullable_to_non_nullable
as bool,deliveryConfirmed: null == deliveryConfirmed ? _self.deliveryConfirmed : deliveryConfirmed // ignore: cast_nullable_to_non_nullable
as bool,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$AuctionModel {

 String get id; String get freightPostId; DateTime get startTime; DateTime get endTime; double get startingBid; double? get currentBid; int get bidCount; String get status; String? get winnerId; double? get winningBid; DateTime? get createdAt; DateTime? get updatedAt; FreightPostModel? get freightPost; List<AuctionBidModel>? get bids;
/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionModelCopyWith<AuctionModel> get copyWith => _$AuctionModelCopyWithImpl<AuctionModel>(this as AuctionModel, _$identity);

  /// Serializes this AuctionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.startingBid, startingBid) || other.startingBid == startingBid)&&(identical(other.currentBid, currentBid) || other.currentBid == currentBid)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.winnerId, winnerId) || other.winnerId == winnerId)&&(identical(other.winningBid, winningBid) || other.winningBid == winningBid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.freightPost, freightPost) || other.freightPost == freightPost)&&const DeepCollectionEquality().equals(other.bids, bids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freightPostId,startTime,endTime,startingBid,currentBid,bidCount,status,winnerId,winningBid,createdAt,updatedAt,freightPost,const DeepCollectionEquality().hash(bids));

@override
String toString() {
  return 'AuctionModel(id: $id, freightPostId: $freightPostId, startTime: $startTime, endTime: $endTime, startingBid: $startingBid, currentBid: $currentBid, bidCount: $bidCount, status: $status, winnerId: $winnerId, winningBid: $winningBid, createdAt: $createdAt, updatedAt: $updatedAt, freightPost: $freightPost, bids: $bids)';
}


}

/// @nodoc
abstract mixin class $AuctionModelCopyWith<$Res>  {
  factory $AuctionModelCopyWith(AuctionModel value, $Res Function(AuctionModel) _then) = _$AuctionModelCopyWithImpl;
@useResult
$Res call({
 String id, String freightPostId, DateTime startTime, DateTime endTime, double startingBid, double? currentBid, int bidCount, String status, String? winnerId, double? winningBid, DateTime? createdAt, DateTime? updatedAt, FreightPostModel? freightPost, List<AuctionBidModel>? bids
});


$FreightPostModelCopyWith<$Res>? get freightPost;

}
/// @nodoc
class _$AuctionModelCopyWithImpl<$Res>
    implements $AuctionModelCopyWith<$Res> {
  _$AuctionModelCopyWithImpl(this._self, this._then);

  final AuctionModel _self;
  final $Res Function(AuctionModel) _then;

/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? freightPostId = null,Object? startTime = null,Object? endTime = null,Object? startingBid = null,Object? currentBid = freezed,Object? bidCount = null,Object? status = null,Object? winnerId = freezed,Object? winningBid = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? freightPost = freezed,Object? bids = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,startingBid: null == startingBid ? _self.startingBid : startingBid // ignore: cast_nullable_to_non_nullable
as double,currentBid: freezed == currentBid ? _self.currentBid : currentBid // ignore: cast_nullable_to_non_nullable
as double?,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,winnerId: freezed == winnerId ? _self.winnerId : winnerId // ignore: cast_nullable_to_non_nullable
as String?,winningBid: freezed == winningBid ? _self.winningBid : winningBid // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,freightPost: freezed == freightPost ? _self.freightPost : freightPost // ignore: cast_nullable_to_non_nullable
as FreightPostModel?,bids: freezed == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as List<AuctionBidModel>?,
  ));
}
/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightPostModelCopyWith<$Res>? get freightPost {
    if (_self.freightPost == null) {
    return null;
  }

  return $FreightPostModelCopyWith<$Res>(_self.freightPost!, (value) {
    return _then(_self.copyWith(freightPost: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionModel].
extension AuctionModelPatterns on AuctionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String freightPostId,  DateTime startTime,  DateTime endTime,  double startingBid,  double? currentBid,  int bidCount,  String status,  String? winnerId,  double? winningBid,  DateTime? createdAt,  DateTime? updatedAt,  FreightPostModel? freightPost,  List<AuctionBidModel>? bids)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
return $default(_that.id,_that.freightPostId,_that.startTime,_that.endTime,_that.startingBid,_that.currentBid,_that.bidCount,_that.status,_that.winnerId,_that.winningBid,_that.createdAt,_that.updatedAt,_that.freightPost,_that.bids);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String freightPostId,  DateTime startTime,  DateTime endTime,  double startingBid,  double? currentBid,  int bidCount,  String status,  String? winnerId,  double? winningBid,  DateTime? createdAt,  DateTime? updatedAt,  FreightPostModel? freightPost,  List<AuctionBidModel>? bids)  $default,) {final _that = this;
switch (_that) {
case _AuctionModel():
return $default(_that.id,_that.freightPostId,_that.startTime,_that.endTime,_that.startingBid,_that.currentBid,_that.bidCount,_that.status,_that.winnerId,_that.winningBid,_that.createdAt,_that.updatedAt,_that.freightPost,_that.bids);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String freightPostId,  DateTime startTime,  DateTime endTime,  double startingBid,  double? currentBid,  int bidCount,  String status,  String? winnerId,  double? winningBid,  DateTime? createdAt,  DateTime? updatedAt,  FreightPostModel? freightPost,  List<AuctionBidModel>? bids)?  $default,) {final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
return $default(_that.id,_that.freightPostId,_that.startTime,_that.endTime,_that.startingBid,_that.currentBid,_that.bidCount,_that.status,_that.winnerId,_that.winningBid,_that.createdAt,_that.updatedAt,_that.freightPost,_that.bids);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionModel implements AuctionModel {
  const _AuctionModel({required this.id, required this.freightPostId, required this.startTime, required this.endTime, required this.startingBid, this.currentBid, this.bidCount = 0, this.status = 'ACTIVE', this.winnerId, this.winningBid, this.createdAt, this.updatedAt, this.freightPost, final  List<AuctionBidModel>? bids}): _bids = bids;
  factory _AuctionModel.fromJson(Map<String, dynamic> json) => _$AuctionModelFromJson(json);

@override final  String id;
@override final  String freightPostId;
@override final  DateTime startTime;
@override final  DateTime endTime;
@override final  double startingBid;
@override final  double? currentBid;
@override@JsonKey() final  int bidCount;
@override@JsonKey() final  String status;
@override final  String? winnerId;
@override final  double? winningBid;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  FreightPostModel? freightPost;
 final  List<AuctionBidModel>? _bids;
@override List<AuctionBidModel>? get bids {
  final value = _bids;
  if (value == null) return null;
  if (_bids is EqualUnmodifiableListView) return _bids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionModelCopyWith<_AuctionModel> get copyWith => __$AuctionModelCopyWithImpl<_AuctionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.startingBid, startingBid) || other.startingBid == startingBid)&&(identical(other.currentBid, currentBid) || other.currentBid == currentBid)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.winnerId, winnerId) || other.winnerId == winnerId)&&(identical(other.winningBid, winningBid) || other.winningBid == winningBid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.freightPost, freightPost) || other.freightPost == freightPost)&&const DeepCollectionEquality().equals(other._bids, _bids));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freightPostId,startTime,endTime,startingBid,currentBid,bidCount,status,winnerId,winningBid,createdAt,updatedAt,freightPost,const DeepCollectionEquality().hash(_bids));

@override
String toString() {
  return 'AuctionModel(id: $id, freightPostId: $freightPostId, startTime: $startTime, endTime: $endTime, startingBid: $startingBid, currentBid: $currentBid, bidCount: $bidCount, status: $status, winnerId: $winnerId, winningBid: $winningBid, createdAt: $createdAt, updatedAt: $updatedAt, freightPost: $freightPost, bids: $bids)';
}


}

/// @nodoc
abstract mixin class _$AuctionModelCopyWith<$Res> implements $AuctionModelCopyWith<$Res> {
  factory _$AuctionModelCopyWith(_AuctionModel value, $Res Function(_AuctionModel) _then) = __$AuctionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String freightPostId, DateTime startTime, DateTime endTime, double startingBid, double? currentBid, int bidCount, String status, String? winnerId, double? winningBid, DateTime? createdAt, DateTime? updatedAt, FreightPostModel? freightPost, List<AuctionBidModel>? bids
});


@override $FreightPostModelCopyWith<$Res>? get freightPost;

}
/// @nodoc
class __$AuctionModelCopyWithImpl<$Res>
    implements _$AuctionModelCopyWith<$Res> {
  __$AuctionModelCopyWithImpl(this._self, this._then);

  final _AuctionModel _self;
  final $Res Function(_AuctionModel) _then;

/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? freightPostId = null,Object? startTime = null,Object? endTime = null,Object? startingBid = null,Object? currentBid = freezed,Object? bidCount = null,Object? status = null,Object? winnerId = freezed,Object? winningBid = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? freightPost = freezed,Object? bids = freezed,}) {
  return _then(_AuctionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,startingBid: null == startingBid ? _self.startingBid : startingBid // ignore: cast_nullable_to_non_nullable
as double,currentBid: freezed == currentBid ? _self.currentBid : currentBid // ignore: cast_nullable_to_non_nullable
as double?,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,winnerId: freezed == winnerId ? _self.winnerId : winnerId // ignore: cast_nullable_to_non_nullable
as String?,winningBid: freezed == winningBid ? _self.winningBid : winningBid // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,freightPost: freezed == freightPost ? _self.freightPost : freightPost // ignore: cast_nullable_to_non_nullable
as FreightPostModel?,bids: freezed == bids ? _self._bids : bids // ignore: cast_nullable_to_non_nullable
as List<AuctionBidModel>?,
  ));
}

/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightPostModelCopyWith<$Res>? get freightPost {
    if (_self.freightPost == null) {
    return null;
  }

  return $FreightPostModelCopyWith<$Res>(_self.freightPost!, (value) {
    return _then(_self.copyWith(freightPost: value));
  });
}
}


/// @nodoc
mixin _$AuctionBidModel {

 String get id; String get auctionId; String get driverId; double get amount; DateTime? get createdAt; DriverInfoModel? get driver;
/// Create a copy of AuctionBidModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionBidModelCopyWith<AuctionBidModel> get copyWith => _$AuctionBidModelCopyWithImpl<AuctionBidModel>(this as AuctionBidModel, _$identity);

  /// Serializes this AuctionBidModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionBidModel&&(identical(other.id, id) || other.id == id)&&(identical(other.auctionId, auctionId) || other.auctionId == auctionId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,auctionId,driverId,amount,createdAt,driver);

@override
String toString() {
  return 'AuctionBidModel(id: $id, auctionId: $auctionId, driverId: $driverId, amount: $amount, createdAt: $createdAt, driver: $driver)';
}


}

/// @nodoc
abstract mixin class $AuctionBidModelCopyWith<$Res>  {
  factory $AuctionBidModelCopyWith(AuctionBidModel value, $Res Function(AuctionBidModel) _then) = _$AuctionBidModelCopyWithImpl;
@useResult
$Res call({
 String id, String auctionId, String driverId, double amount, DateTime? createdAt, DriverInfoModel? driver
});


$DriverInfoModelCopyWith<$Res>? get driver;

}
/// @nodoc
class _$AuctionBidModelCopyWithImpl<$Res>
    implements $AuctionBidModelCopyWith<$Res> {
  _$AuctionBidModelCopyWithImpl(this._self, this._then);

  final AuctionBidModel _self;
  final $Res Function(AuctionBidModel) _then;

/// Create a copy of AuctionBidModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? auctionId = null,Object? driverId = null,Object? amount = null,Object? createdAt = freezed,Object? driver = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as DriverInfoModel?,
  ));
}
/// Create a copy of AuctionBidModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverInfoModelCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $DriverInfoModelCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionBidModel].
extension AuctionBidModelPatterns on AuctionBidModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionBidModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionBidModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionBidModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionBidModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionBidModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionBidModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String auctionId,  String driverId,  double amount,  DateTime? createdAt,  DriverInfoModel? driver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionBidModel() when $default != null:
return $default(_that.id,_that.auctionId,_that.driverId,_that.amount,_that.createdAt,_that.driver);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String auctionId,  String driverId,  double amount,  DateTime? createdAt,  DriverInfoModel? driver)  $default,) {final _that = this;
switch (_that) {
case _AuctionBidModel():
return $default(_that.id,_that.auctionId,_that.driverId,_that.amount,_that.createdAt,_that.driver);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String auctionId,  String driverId,  double amount,  DateTime? createdAt,  DriverInfoModel? driver)?  $default,) {final _that = this;
switch (_that) {
case _AuctionBidModel() when $default != null:
return $default(_that.id,_that.auctionId,_that.driverId,_that.amount,_that.createdAt,_that.driver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionBidModel implements AuctionBidModel {
  const _AuctionBidModel({required this.id, required this.auctionId, required this.driverId, required this.amount, this.createdAt, this.driver});
  factory _AuctionBidModel.fromJson(Map<String, dynamic> json) => _$AuctionBidModelFromJson(json);

@override final  String id;
@override final  String auctionId;
@override final  String driverId;
@override final  double amount;
@override final  DateTime? createdAt;
@override final  DriverInfoModel? driver;

/// Create a copy of AuctionBidModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionBidModelCopyWith<_AuctionBidModel> get copyWith => __$AuctionBidModelCopyWithImpl<_AuctionBidModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionBidModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionBidModel&&(identical(other.id, id) || other.id == id)&&(identical(other.auctionId, auctionId) || other.auctionId == auctionId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,auctionId,driverId,amount,createdAt,driver);

@override
String toString() {
  return 'AuctionBidModel(id: $id, auctionId: $auctionId, driverId: $driverId, amount: $amount, createdAt: $createdAt, driver: $driver)';
}


}

/// @nodoc
abstract mixin class _$AuctionBidModelCopyWith<$Res> implements $AuctionBidModelCopyWith<$Res> {
  factory _$AuctionBidModelCopyWith(_AuctionBidModel value, $Res Function(_AuctionBidModel) _then) = __$AuctionBidModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String auctionId, String driverId, double amount, DateTime? createdAt, DriverInfoModel? driver
});


@override $DriverInfoModelCopyWith<$Res>? get driver;

}
/// @nodoc
class __$AuctionBidModelCopyWithImpl<$Res>
    implements _$AuctionBidModelCopyWith<$Res> {
  __$AuctionBidModelCopyWithImpl(this._self, this._then);

  final _AuctionBidModel _self;
  final $Res Function(_AuctionBidModel) _then;

/// Create a copy of AuctionBidModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? auctionId = null,Object? driverId = null,Object? amount = null,Object? createdAt = freezed,Object? driver = freezed,}) {
  return _then(_AuctionBidModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as DriverInfoModel?,
  ));
}

/// Create a copy of AuctionBidModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverInfoModelCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $DriverInfoModelCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}

// dart format on
