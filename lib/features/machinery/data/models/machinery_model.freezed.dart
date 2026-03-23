// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'machinery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MachineryModel {

 String get id; String get name; String get type; String get description; double get hourlyRate; double get dailyRate; String get currency; String? get imageUrl; String? get ownerId; String? get ownerName; double? get ownerRating; String? get location; double? get latitude; double? get longitude; bool get isAvailable; int get totalRentals; DateTime? get createdAt; List<String>? get features; Map<String, dynamic>? get specifications;
/// Create a copy of MachineryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MachineryModelCopyWith<MachineryModel> get copyWith => _$MachineryModelCopyWithImpl<MachineryModel>(this as MachineryModel, _$identity);

  /// Serializes this MachineryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MachineryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.hourlyRate, hourlyRate) || other.hourlyRate == hourlyRate)&&(identical(other.dailyRate, dailyRate) || other.dailyRate == dailyRate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.ownerRating, ownerRating) || other.ownerRating == ownerRating)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.totalRentals, totalRentals) || other.totalRentals == totalRentals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.features, features)&&const DeepCollectionEquality().equals(other.specifications, specifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,description,hourlyRate,dailyRate,currency,imageUrl,ownerId,ownerName,ownerRating,location,latitude,longitude,isAvailable,totalRentals,createdAt,const DeepCollectionEquality().hash(features),const DeepCollectionEquality().hash(specifications)]);

@override
String toString() {
  return 'MachineryModel(id: $id, name: $name, type: $type, description: $description, hourlyRate: $hourlyRate, dailyRate: $dailyRate, currency: $currency, imageUrl: $imageUrl, ownerId: $ownerId, ownerName: $ownerName, ownerRating: $ownerRating, location: $location, latitude: $latitude, longitude: $longitude, isAvailable: $isAvailable, totalRentals: $totalRentals, createdAt: $createdAt, features: $features, specifications: $specifications)';
}


}

/// @nodoc
abstract mixin class $MachineryModelCopyWith<$Res>  {
  factory $MachineryModelCopyWith(MachineryModel value, $Res Function(MachineryModel) _then) = _$MachineryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String description, double hourlyRate, double dailyRate, String currency, String? imageUrl, String? ownerId, String? ownerName, double? ownerRating, String? location, double? latitude, double? longitude, bool isAvailable, int totalRentals, DateTime? createdAt, List<String>? features, Map<String, dynamic>? specifications
});




}
/// @nodoc
class _$MachineryModelCopyWithImpl<$Res>
    implements $MachineryModelCopyWith<$Res> {
  _$MachineryModelCopyWithImpl(this._self, this._then);

  final MachineryModel _self;
  final $Res Function(MachineryModel) _then;

/// Create a copy of MachineryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? description = null,Object? hourlyRate = null,Object? dailyRate = null,Object? currency = null,Object? imageUrl = freezed,Object? ownerId = freezed,Object? ownerName = freezed,Object? ownerRating = freezed,Object? location = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? isAvailable = null,Object? totalRentals = null,Object? createdAt = freezed,Object? features = freezed,Object? specifications = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,hourlyRate: null == hourlyRate ? _self.hourlyRate : hourlyRate // ignore: cast_nullable_to_non_nullable
as double,dailyRate: null == dailyRate ? _self.dailyRate : dailyRate // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,ownerRating: freezed == ownerRating ? _self.ownerRating : ownerRating // ignore: cast_nullable_to_non_nullable
as double?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,totalRentals: null == totalRentals ? _self.totalRentals : totalRentals // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,features: freezed == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>?,specifications: freezed == specifications ? _self.specifications : specifications // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MachineryModel].
extension MachineryModelPatterns on MachineryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MachineryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MachineryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MachineryModel value)  $default,){
final _that = this;
switch (_that) {
case _MachineryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MachineryModel value)?  $default,){
final _that = this;
switch (_that) {
case _MachineryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String description,  double hourlyRate,  double dailyRate,  String currency,  String? imageUrl,  String? ownerId,  String? ownerName,  double? ownerRating,  String? location,  double? latitude,  double? longitude,  bool isAvailable,  int totalRentals,  DateTime? createdAt,  List<String>? features,  Map<String, dynamic>? specifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MachineryModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.description,_that.hourlyRate,_that.dailyRate,_that.currency,_that.imageUrl,_that.ownerId,_that.ownerName,_that.ownerRating,_that.location,_that.latitude,_that.longitude,_that.isAvailable,_that.totalRentals,_that.createdAt,_that.features,_that.specifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String description,  double hourlyRate,  double dailyRate,  String currency,  String? imageUrl,  String? ownerId,  String? ownerName,  double? ownerRating,  String? location,  double? latitude,  double? longitude,  bool isAvailable,  int totalRentals,  DateTime? createdAt,  List<String>? features,  Map<String, dynamic>? specifications)  $default,) {final _that = this;
switch (_that) {
case _MachineryModel():
return $default(_that.id,_that.name,_that.type,_that.description,_that.hourlyRate,_that.dailyRate,_that.currency,_that.imageUrl,_that.ownerId,_that.ownerName,_that.ownerRating,_that.location,_that.latitude,_that.longitude,_that.isAvailable,_that.totalRentals,_that.createdAt,_that.features,_that.specifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String description,  double hourlyRate,  double dailyRate,  String currency,  String? imageUrl,  String? ownerId,  String? ownerName,  double? ownerRating,  String? location,  double? latitude,  double? longitude,  bool isAvailable,  int totalRentals,  DateTime? createdAt,  List<String>? features,  Map<String, dynamic>? specifications)?  $default,) {final _that = this;
switch (_that) {
case _MachineryModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.description,_that.hourlyRate,_that.dailyRate,_that.currency,_that.imageUrl,_that.ownerId,_that.ownerName,_that.ownerRating,_that.location,_that.latitude,_that.longitude,_that.isAvailable,_that.totalRentals,_that.createdAt,_that.features,_that.specifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MachineryModel implements MachineryModel {
  const _MachineryModel({required this.id, required this.name, required this.type, required this.description, required this.hourlyRate, required this.dailyRate, required this.currency, this.imageUrl, this.ownerId, this.ownerName, this.ownerRating, this.location, this.latitude, this.longitude, this.isAvailable = true, this.totalRentals = 0, this.createdAt, final  List<String>? features, final  Map<String, dynamic>? specifications}): _features = features,_specifications = specifications;
  factory _MachineryModel.fromJson(Map<String, dynamic> json) => _$MachineryModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String type;
@override final  String description;
@override final  double hourlyRate;
@override final  double dailyRate;
@override final  String currency;
@override final  String? imageUrl;
@override final  String? ownerId;
@override final  String? ownerName;
@override final  double? ownerRating;
@override final  String? location;
@override final  double? latitude;
@override final  double? longitude;
@override@JsonKey() final  bool isAvailable;
@override@JsonKey() final  int totalRentals;
@override final  DateTime? createdAt;
 final  List<String>? _features;
@override List<String>? get features {
  final value = _features;
  if (value == null) return null;
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _specifications;
@override Map<String, dynamic>? get specifications {
  final value = _specifications;
  if (value == null) return null;
  if (_specifications is EqualUnmodifiableMapView) return _specifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of MachineryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MachineryModelCopyWith<_MachineryModel> get copyWith => __$MachineryModelCopyWithImpl<_MachineryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MachineryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MachineryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.hourlyRate, hourlyRate) || other.hourlyRate == hourlyRate)&&(identical(other.dailyRate, dailyRate) || other.dailyRate == dailyRate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.ownerRating, ownerRating) || other.ownerRating == ownerRating)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.totalRentals, totalRentals) || other.totalRentals == totalRentals)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._features, _features)&&const DeepCollectionEquality().equals(other._specifications, _specifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,description,hourlyRate,dailyRate,currency,imageUrl,ownerId,ownerName,ownerRating,location,latitude,longitude,isAvailable,totalRentals,createdAt,const DeepCollectionEquality().hash(_features),const DeepCollectionEquality().hash(_specifications)]);

@override
String toString() {
  return 'MachineryModel(id: $id, name: $name, type: $type, description: $description, hourlyRate: $hourlyRate, dailyRate: $dailyRate, currency: $currency, imageUrl: $imageUrl, ownerId: $ownerId, ownerName: $ownerName, ownerRating: $ownerRating, location: $location, latitude: $latitude, longitude: $longitude, isAvailable: $isAvailable, totalRentals: $totalRentals, createdAt: $createdAt, features: $features, specifications: $specifications)';
}


}

/// @nodoc
abstract mixin class _$MachineryModelCopyWith<$Res> implements $MachineryModelCopyWith<$Res> {
  factory _$MachineryModelCopyWith(_MachineryModel value, $Res Function(_MachineryModel) _then) = __$MachineryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String description, double hourlyRate, double dailyRate, String currency, String? imageUrl, String? ownerId, String? ownerName, double? ownerRating, String? location, double? latitude, double? longitude, bool isAvailable, int totalRentals, DateTime? createdAt, List<String>? features, Map<String, dynamic>? specifications
});




}
/// @nodoc
class __$MachineryModelCopyWithImpl<$Res>
    implements _$MachineryModelCopyWith<$Res> {
  __$MachineryModelCopyWithImpl(this._self, this._then);

  final _MachineryModel _self;
  final $Res Function(_MachineryModel) _then;

/// Create a copy of MachineryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? description = null,Object? hourlyRate = null,Object? dailyRate = null,Object? currency = null,Object? imageUrl = freezed,Object? ownerId = freezed,Object? ownerName = freezed,Object? ownerRating = freezed,Object? location = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? isAvailable = null,Object? totalRentals = null,Object? createdAt = freezed,Object? features = freezed,Object? specifications = freezed,}) {
  return _then(_MachineryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,hourlyRate: null == hourlyRate ? _self.hourlyRate : hourlyRate // ignore: cast_nullable_to_non_nullable
as double,dailyRate: null == dailyRate ? _self.dailyRate : dailyRate // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,ownerId: freezed == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String?,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,ownerRating: freezed == ownerRating ? _self.ownerRating : ownerRating // ignore: cast_nullable_to_non_nullable
as double?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,totalRentals: null == totalRentals ? _self.totalRentals : totalRentals // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,features: freezed == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>?,specifications: freezed == specifications ? _self._specifications : specifications // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$RentalBookingModel {

 String get id; String get machineryId; String get machineryName; String get renterId; String get ownerId; DateTime get startDate; DateTime get endDate; double get totalAmount; String get currency; String get status; String? get deliveryLocation; double? get deliveryLatitude; double? get deliveryLongitude; String? get notes; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of RentalBookingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RentalBookingModelCopyWith<RentalBookingModel> get copyWith => _$RentalBookingModelCopyWithImpl<RentalBookingModel>(this as RentalBookingModel, _$identity);

  /// Serializes this RentalBookingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RentalBookingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.machineryId, machineryId) || other.machineryId == machineryId)&&(identical(other.machineryName, machineryName) || other.machineryName == machineryName)&&(identical(other.renterId, renterId) || other.renterId == renterId)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.deliveryLatitude, deliveryLatitude) || other.deliveryLatitude == deliveryLatitude)&&(identical(other.deliveryLongitude, deliveryLongitude) || other.deliveryLongitude == deliveryLongitude)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,machineryId,machineryName,renterId,ownerId,startDate,endDate,totalAmount,currency,status,deliveryLocation,deliveryLatitude,deliveryLongitude,notes,createdAt,updatedAt);

@override
String toString() {
  return 'RentalBookingModel(id: $id, machineryId: $machineryId, machineryName: $machineryName, renterId: $renterId, ownerId: $ownerId, startDate: $startDate, endDate: $endDate, totalAmount: $totalAmount, currency: $currency, status: $status, deliveryLocation: $deliveryLocation, deliveryLatitude: $deliveryLatitude, deliveryLongitude: $deliveryLongitude, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RentalBookingModelCopyWith<$Res>  {
  factory $RentalBookingModelCopyWith(RentalBookingModel value, $Res Function(RentalBookingModel) _then) = _$RentalBookingModelCopyWithImpl;
@useResult
$Res call({
 String id, String machineryId, String machineryName, String renterId, String ownerId, DateTime startDate, DateTime endDate, double totalAmount, String currency, String status, String? deliveryLocation, double? deliveryLatitude, double? deliveryLongitude, String? notes, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$RentalBookingModelCopyWithImpl<$Res>
    implements $RentalBookingModelCopyWith<$Res> {
  _$RentalBookingModelCopyWithImpl(this._self, this._then);

  final RentalBookingModel _self;
  final $Res Function(RentalBookingModel) _then;

/// Create a copy of RentalBookingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? machineryId = null,Object? machineryName = null,Object? renterId = null,Object? ownerId = null,Object? startDate = null,Object? endDate = null,Object? totalAmount = null,Object? currency = null,Object? status = null,Object? deliveryLocation = freezed,Object? deliveryLatitude = freezed,Object? deliveryLongitude = freezed,Object? notes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,machineryId: null == machineryId ? _self.machineryId : machineryId // ignore: cast_nullable_to_non_nullable
as String,machineryName: null == machineryName ? _self.machineryName : machineryName // ignore: cast_nullable_to_non_nullable
as String,renterId: null == renterId ? _self.renterId : renterId // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,deliveryLocation: freezed == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as String?,deliveryLatitude: freezed == deliveryLatitude ? _self.deliveryLatitude : deliveryLatitude // ignore: cast_nullable_to_non_nullable
as double?,deliveryLongitude: freezed == deliveryLongitude ? _self.deliveryLongitude : deliveryLongitude // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RentalBookingModel].
extension RentalBookingModelPatterns on RentalBookingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RentalBookingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RentalBookingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RentalBookingModel value)  $default,){
final _that = this;
switch (_that) {
case _RentalBookingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RentalBookingModel value)?  $default,){
final _that = this;
switch (_that) {
case _RentalBookingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String machineryId,  String machineryName,  String renterId,  String ownerId,  DateTime startDate,  DateTime endDate,  double totalAmount,  String currency,  String status,  String? deliveryLocation,  double? deliveryLatitude,  double? deliveryLongitude,  String? notes,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RentalBookingModel() when $default != null:
return $default(_that.id,_that.machineryId,_that.machineryName,_that.renterId,_that.ownerId,_that.startDate,_that.endDate,_that.totalAmount,_that.currency,_that.status,_that.deliveryLocation,_that.deliveryLatitude,_that.deliveryLongitude,_that.notes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String machineryId,  String machineryName,  String renterId,  String ownerId,  DateTime startDate,  DateTime endDate,  double totalAmount,  String currency,  String status,  String? deliveryLocation,  double? deliveryLatitude,  double? deliveryLongitude,  String? notes,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RentalBookingModel():
return $default(_that.id,_that.machineryId,_that.machineryName,_that.renterId,_that.ownerId,_that.startDate,_that.endDate,_that.totalAmount,_that.currency,_that.status,_that.deliveryLocation,_that.deliveryLatitude,_that.deliveryLongitude,_that.notes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String machineryId,  String machineryName,  String renterId,  String ownerId,  DateTime startDate,  DateTime endDate,  double totalAmount,  String currency,  String status,  String? deliveryLocation,  double? deliveryLatitude,  double? deliveryLongitude,  String? notes,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RentalBookingModel() when $default != null:
return $default(_that.id,_that.machineryId,_that.machineryName,_that.renterId,_that.ownerId,_that.startDate,_that.endDate,_that.totalAmount,_that.currency,_that.status,_that.deliveryLocation,_that.deliveryLatitude,_that.deliveryLongitude,_that.notes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RentalBookingModel implements RentalBookingModel {
  const _RentalBookingModel({required this.id, required this.machineryId, required this.machineryName, required this.renterId, required this.ownerId, required this.startDate, required this.endDate, required this.totalAmount, required this.currency, required this.status, this.deliveryLocation, this.deliveryLatitude, this.deliveryLongitude, this.notes, this.createdAt, this.updatedAt});
  factory _RentalBookingModel.fromJson(Map<String, dynamic> json) => _$RentalBookingModelFromJson(json);

@override final  String id;
@override final  String machineryId;
@override final  String machineryName;
@override final  String renterId;
@override final  String ownerId;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  double totalAmount;
@override final  String currency;
@override final  String status;
@override final  String? deliveryLocation;
@override final  double? deliveryLatitude;
@override final  double? deliveryLongitude;
@override final  String? notes;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of RentalBookingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RentalBookingModelCopyWith<_RentalBookingModel> get copyWith => __$RentalBookingModelCopyWithImpl<_RentalBookingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RentalBookingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RentalBookingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.machineryId, machineryId) || other.machineryId == machineryId)&&(identical(other.machineryName, machineryName) || other.machineryName == machineryName)&&(identical(other.renterId, renterId) || other.renterId == renterId)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.deliveryLatitude, deliveryLatitude) || other.deliveryLatitude == deliveryLatitude)&&(identical(other.deliveryLongitude, deliveryLongitude) || other.deliveryLongitude == deliveryLongitude)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,machineryId,machineryName,renterId,ownerId,startDate,endDate,totalAmount,currency,status,deliveryLocation,deliveryLatitude,deliveryLongitude,notes,createdAt,updatedAt);

@override
String toString() {
  return 'RentalBookingModel(id: $id, machineryId: $machineryId, machineryName: $machineryName, renterId: $renterId, ownerId: $ownerId, startDate: $startDate, endDate: $endDate, totalAmount: $totalAmount, currency: $currency, status: $status, deliveryLocation: $deliveryLocation, deliveryLatitude: $deliveryLatitude, deliveryLongitude: $deliveryLongitude, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RentalBookingModelCopyWith<$Res> implements $RentalBookingModelCopyWith<$Res> {
  factory _$RentalBookingModelCopyWith(_RentalBookingModel value, $Res Function(_RentalBookingModel) _then) = __$RentalBookingModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String machineryId, String machineryName, String renterId, String ownerId, DateTime startDate, DateTime endDate, double totalAmount, String currency, String status, String? deliveryLocation, double? deliveryLatitude, double? deliveryLongitude, String? notes, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$RentalBookingModelCopyWithImpl<$Res>
    implements _$RentalBookingModelCopyWith<$Res> {
  __$RentalBookingModelCopyWithImpl(this._self, this._then);

  final _RentalBookingModel _self;
  final $Res Function(_RentalBookingModel) _then;

/// Create a copy of RentalBookingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? machineryId = null,Object? machineryName = null,Object? renterId = null,Object? ownerId = null,Object? startDate = null,Object? endDate = null,Object? totalAmount = null,Object? currency = null,Object? status = null,Object? deliveryLocation = freezed,Object? deliveryLatitude = freezed,Object? deliveryLongitude = freezed,Object? notes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_RentalBookingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,machineryId: null == machineryId ? _self.machineryId : machineryId // ignore: cast_nullable_to_non_nullable
as String,machineryName: null == machineryName ? _self.machineryName : machineryName // ignore: cast_nullable_to_non_nullable
as String,renterId: null == renterId ? _self.renterId : renterId // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,deliveryLocation: freezed == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as String?,deliveryLatitude: freezed == deliveryLatitude ? _self.deliveryLatitude : deliveryLatitude // ignore: cast_nullable_to_non_nullable
as double?,deliveryLongitude: freezed == deliveryLongitude ? _self.deliveryLongitude : deliveryLongitude // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$CreateRentalRequest {

 String get machineryId; DateTime get startDate; DateTime get endDate; String? get deliveryLocation; double? get deliveryLatitude; double? get deliveryLongitude; String? get notes;
/// Create a copy of CreateRentalRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateRentalRequestCopyWith<CreateRentalRequest> get copyWith => _$CreateRentalRequestCopyWithImpl<CreateRentalRequest>(this as CreateRentalRequest, _$identity);

  /// Serializes this CreateRentalRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRentalRequest&&(identical(other.machineryId, machineryId) || other.machineryId == machineryId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.deliveryLatitude, deliveryLatitude) || other.deliveryLatitude == deliveryLatitude)&&(identical(other.deliveryLongitude, deliveryLongitude) || other.deliveryLongitude == deliveryLongitude)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,machineryId,startDate,endDate,deliveryLocation,deliveryLatitude,deliveryLongitude,notes);

@override
String toString() {
  return 'CreateRentalRequest(machineryId: $machineryId, startDate: $startDate, endDate: $endDate, deliveryLocation: $deliveryLocation, deliveryLatitude: $deliveryLatitude, deliveryLongitude: $deliveryLongitude, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $CreateRentalRequestCopyWith<$Res>  {
  factory $CreateRentalRequestCopyWith(CreateRentalRequest value, $Res Function(CreateRentalRequest) _then) = _$CreateRentalRequestCopyWithImpl;
@useResult
$Res call({
 String machineryId, DateTime startDate, DateTime endDate, String? deliveryLocation, double? deliveryLatitude, double? deliveryLongitude, String? notes
});




}
/// @nodoc
class _$CreateRentalRequestCopyWithImpl<$Res>
    implements $CreateRentalRequestCopyWith<$Res> {
  _$CreateRentalRequestCopyWithImpl(this._self, this._then);

  final CreateRentalRequest _self;
  final $Res Function(CreateRentalRequest) _then;

/// Create a copy of CreateRentalRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? machineryId = null,Object? startDate = null,Object? endDate = null,Object? deliveryLocation = freezed,Object? deliveryLatitude = freezed,Object? deliveryLongitude = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
machineryId: null == machineryId ? _self.machineryId : machineryId // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,deliveryLocation: freezed == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as String?,deliveryLatitude: freezed == deliveryLatitude ? _self.deliveryLatitude : deliveryLatitude // ignore: cast_nullable_to_non_nullable
as double?,deliveryLongitude: freezed == deliveryLongitude ? _self.deliveryLongitude : deliveryLongitude // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateRentalRequest].
extension CreateRentalRequestPatterns on CreateRentalRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateRentalRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateRentalRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateRentalRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateRentalRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateRentalRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateRentalRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String machineryId,  DateTime startDate,  DateTime endDate,  String? deliveryLocation,  double? deliveryLatitude,  double? deliveryLongitude,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateRentalRequest() when $default != null:
return $default(_that.machineryId,_that.startDate,_that.endDate,_that.deliveryLocation,_that.deliveryLatitude,_that.deliveryLongitude,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String machineryId,  DateTime startDate,  DateTime endDate,  String? deliveryLocation,  double? deliveryLatitude,  double? deliveryLongitude,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateRentalRequest():
return $default(_that.machineryId,_that.startDate,_that.endDate,_that.deliveryLocation,_that.deliveryLatitude,_that.deliveryLongitude,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String machineryId,  DateTime startDate,  DateTime endDate,  String? deliveryLocation,  double? deliveryLatitude,  double? deliveryLongitude,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateRentalRequest() when $default != null:
return $default(_that.machineryId,_that.startDate,_that.endDate,_that.deliveryLocation,_that.deliveryLatitude,_that.deliveryLongitude,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateRentalRequest implements CreateRentalRequest {
  const _CreateRentalRequest({required this.machineryId, required this.startDate, required this.endDate, this.deliveryLocation, this.deliveryLatitude, this.deliveryLongitude, this.notes});
  factory _CreateRentalRequest.fromJson(Map<String, dynamic> json) => _$CreateRentalRequestFromJson(json);

@override final  String machineryId;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  String? deliveryLocation;
@override final  double? deliveryLatitude;
@override final  double? deliveryLongitude;
@override final  String? notes;

/// Create a copy of CreateRentalRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateRentalRequestCopyWith<_CreateRentalRequest> get copyWith => __$CreateRentalRequestCopyWithImpl<_CreateRentalRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateRentalRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRentalRequest&&(identical(other.machineryId, machineryId) || other.machineryId == machineryId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.deliveryLocation, deliveryLocation) || other.deliveryLocation == deliveryLocation)&&(identical(other.deliveryLatitude, deliveryLatitude) || other.deliveryLatitude == deliveryLatitude)&&(identical(other.deliveryLongitude, deliveryLongitude) || other.deliveryLongitude == deliveryLongitude)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,machineryId,startDate,endDate,deliveryLocation,deliveryLatitude,deliveryLongitude,notes);

@override
String toString() {
  return 'CreateRentalRequest(machineryId: $machineryId, startDate: $startDate, endDate: $endDate, deliveryLocation: $deliveryLocation, deliveryLatitude: $deliveryLatitude, deliveryLongitude: $deliveryLongitude, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateRentalRequestCopyWith<$Res> implements $CreateRentalRequestCopyWith<$Res> {
  factory _$CreateRentalRequestCopyWith(_CreateRentalRequest value, $Res Function(_CreateRentalRequest) _then) = __$CreateRentalRequestCopyWithImpl;
@override @useResult
$Res call({
 String machineryId, DateTime startDate, DateTime endDate, String? deliveryLocation, double? deliveryLatitude, double? deliveryLongitude, String? notes
});




}
/// @nodoc
class __$CreateRentalRequestCopyWithImpl<$Res>
    implements _$CreateRentalRequestCopyWith<$Res> {
  __$CreateRentalRequestCopyWithImpl(this._self, this._then);

  final _CreateRentalRequest _self;
  final $Res Function(_CreateRentalRequest) _then;

/// Create a copy of CreateRentalRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? machineryId = null,Object? startDate = null,Object? endDate = null,Object? deliveryLocation = freezed,Object? deliveryLatitude = freezed,Object? deliveryLongitude = freezed,Object? notes = freezed,}) {
  return _then(_CreateRentalRequest(
machineryId: null == machineryId ? _self.machineryId : machineryId // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,deliveryLocation: freezed == deliveryLocation ? _self.deliveryLocation : deliveryLocation // ignore: cast_nullable_to_non_nullable
as String?,deliveryLatitude: freezed == deliveryLatitude ? _self.deliveryLatitude : deliveryLatitude // ignore: cast_nullable_to_non_nullable
as double?,deliveryLongitude: freezed == deliveryLongitude ? _self.deliveryLongitude : deliveryLongitude // ignore: cast_nullable_to_non_nullable
as double?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
