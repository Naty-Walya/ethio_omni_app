// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DemandPredictionModel {

 String get id; String get route; double get demandScore;// 0.0 to 1.0
 int get predictedLoads; double get averagePrice; String get timeRange; DateTime? get predictedAt; List<RouteSegmentModel> get segments;
/// Create a copy of DemandPredictionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DemandPredictionModelCopyWith<DemandPredictionModel> get copyWith => _$DemandPredictionModelCopyWithImpl<DemandPredictionModel>(this as DemandPredictionModel, _$identity);

  /// Serializes this DemandPredictionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DemandPredictionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.demandScore, demandScore) || other.demandScore == demandScore)&&(identical(other.predictedLoads, predictedLoads) || other.predictedLoads == predictedLoads)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.timeRange, timeRange) || other.timeRange == timeRange)&&(identical(other.predictedAt, predictedAt) || other.predictedAt == predictedAt)&&const DeepCollectionEquality().equals(other.segments, segments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,route,demandScore,predictedLoads,averagePrice,timeRange,predictedAt,const DeepCollectionEquality().hash(segments));

@override
String toString() {
  return 'DemandPredictionModel(id: $id, route: $route, demandScore: $demandScore, predictedLoads: $predictedLoads, averagePrice: $averagePrice, timeRange: $timeRange, predictedAt: $predictedAt, segments: $segments)';
}


}

/// @nodoc
abstract mixin class $DemandPredictionModelCopyWith<$Res>  {
  factory $DemandPredictionModelCopyWith(DemandPredictionModel value, $Res Function(DemandPredictionModel) _then) = _$DemandPredictionModelCopyWithImpl;
@useResult
$Res call({
 String id, String route, double demandScore, int predictedLoads, double averagePrice, String timeRange, DateTime? predictedAt, List<RouteSegmentModel> segments
});




}
/// @nodoc
class _$DemandPredictionModelCopyWithImpl<$Res>
    implements $DemandPredictionModelCopyWith<$Res> {
  _$DemandPredictionModelCopyWithImpl(this._self, this._then);

  final DemandPredictionModel _self;
  final $Res Function(DemandPredictionModel) _then;

/// Create a copy of DemandPredictionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? route = null,Object? demandScore = null,Object? predictedLoads = null,Object? averagePrice = null,Object? timeRange = null,Object? predictedAt = freezed,Object? segments = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,demandScore: null == demandScore ? _self.demandScore : demandScore // ignore: cast_nullable_to_non_nullable
as double,predictedLoads: null == predictedLoads ? _self.predictedLoads : predictedLoads // ignore: cast_nullable_to_non_nullable
as int,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,timeRange: null == timeRange ? _self.timeRange : timeRange // ignore: cast_nullable_to_non_nullable
as String,predictedAt: freezed == predictedAt ? _self.predictedAt : predictedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,segments: null == segments ? _self.segments : segments // ignore: cast_nullable_to_non_nullable
as List<RouteSegmentModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DemandPredictionModel].
extension DemandPredictionModelPatterns on DemandPredictionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DemandPredictionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DemandPredictionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DemandPredictionModel value)  $default,){
final _that = this;
switch (_that) {
case _DemandPredictionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DemandPredictionModel value)?  $default,){
final _that = this;
switch (_that) {
case _DemandPredictionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String route,  double demandScore,  int predictedLoads,  double averagePrice,  String timeRange,  DateTime? predictedAt,  List<RouteSegmentModel> segments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DemandPredictionModel() when $default != null:
return $default(_that.id,_that.route,_that.demandScore,_that.predictedLoads,_that.averagePrice,_that.timeRange,_that.predictedAt,_that.segments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String route,  double demandScore,  int predictedLoads,  double averagePrice,  String timeRange,  DateTime? predictedAt,  List<RouteSegmentModel> segments)  $default,) {final _that = this;
switch (_that) {
case _DemandPredictionModel():
return $default(_that.id,_that.route,_that.demandScore,_that.predictedLoads,_that.averagePrice,_that.timeRange,_that.predictedAt,_that.segments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String route,  double demandScore,  int predictedLoads,  double averagePrice,  String timeRange,  DateTime? predictedAt,  List<RouteSegmentModel> segments)?  $default,) {final _that = this;
switch (_that) {
case _DemandPredictionModel() when $default != null:
return $default(_that.id,_that.route,_that.demandScore,_that.predictedLoads,_that.averagePrice,_that.timeRange,_that.predictedAt,_that.segments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DemandPredictionModel implements DemandPredictionModel {
  const _DemandPredictionModel({required this.id, required this.route, required this.demandScore, required this.predictedLoads, required this.averagePrice, required this.timeRange, this.predictedAt, final  List<RouteSegmentModel> segments = const []}): _segments = segments;
  factory _DemandPredictionModel.fromJson(Map<String, dynamic> json) => _$DemandPredictionModelFromJson(json);

@override final  String id;
@override final  String route;
@override final  double demandScore;
// 0.0 to 1.0
@override final  int predictedLoads;
@override final  double averagePrice;
@override final  String timeRange;
@override final  DateTime? predictedAt;
 final  List<RouteSegmentModel> _segments;
@override@JsonKey() List<RouteSegmentModel> get segments {
  if (_segments is EqualUnmodifiableListView) return _segments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_segments);
}


/// Create a copy of DemandPredictionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DemandPredictionModelCopyWith<_DemandPredictionModel> get copyWith => __$DemandPredictionModelCopyWithImpl<_DemandPredictionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DemandPredictionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DemandPredictionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.route, route) || other.route == route)&&(identical(other.demandScore, demandScore) || other.demandScore == demandScore)&&(identical(other.predictedLoads, predictedLoads) || other.predictedLoads == predictedLoads)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.timeRange, timeRange) || other.timeRange == timeRange)&&(identical(other.predictedAt, predictedAt) || other.predictedAt == predictedAt)&&const DeepCollectionEquality().equals(other._segments, _segments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,route,demandScore,predictedLoads,averagePrice,timeRange,predictedAt,const DeepCollectionEquality().hash(_segments));

@override
String toString() {
  return 'DemandPredictionModel(id: $id, route: $route, demandScore: $demandScore, predictedLoads: $predictedLoads, averagePrice: $averagePrice, timeRange: $timeRange, predictedAt: $predictedAt, segments: $segments)';
}


}

/// @nodoc
abstract mixin class _$DemandPredictionModelCopyWith<$Res> implements $DemandPredictionModelCopyWith<$Res> {
  factory _$DemandPredictionModelCopyWith(_DemandPredictionModel value, $Res Function(_DemandPredictionModel) _then) = __$DemandPredictionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String route, double demandScore, int predictedLoads, double averagePrice, String timeRange, DateTime? predictedAt, List<RouteSegmentModel> segments
});




}
/// @nodoc
class __$DemandPredictionModelCopyWithImpl<$Res>
    implements _$DemandPredictionModelCopyWith<$Res> {
  __$DemandPredictionModelCopyWithImpl(this._self, this._then);

  final _DemandPredictionModel _self;
  final $Res Function(_DemandPredictionModel) _then;

/// Create a copy of DemandPredictionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? route = null,Object? demandScore = null,Object? predictedLoads = null,Object? averagePrice = null,Object? timeRange = null,Object? predictedAt = freezed,Object? segments = null,}) {
  return _then(_DemandPredictionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,demandScore: null == demandScore ? _self.demandScore : demandScore // ignore: cast_nullable_to_non_nullable
as double,predictedLoads: null == predictedLoads ? _self.predictedLoads : predictedLoads // ignore: cast_nullable_to_non_nullable
as int,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,timeRange: null == timeRange ? _self.timeRange : timeRange // ignore: cast_nullable_to_non_nullable
as String,predictedAt: freezed == predictedAt ? _self.predictedAt : predictedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,segments: null == segments ? _self._segments : segments // ignore: cast_nullable_to_non_nullable
as List<RouteSegmentModel>,
  ));
}


}


/// @nodoc
mixin _$RouteSegmentModel {

 String get origin; String get destination; double get demandFactor; double get priceEstimate; int get confidence;
/// Create a copy of RouteSegmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteSegmentModelCopyWith<RouteSegmentModel> get copyWith => _$RouteSegmentModelCopyWithImpl<RouteSegmentModel>(this as RouteSegmentModel, _$identity);

  /// Serializes this RouteSegmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteSegmentModel&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.demandFactor, demandFactor) || other.demandFactor == demandFactor)&&(identical(other.priceEstimate, priceEstimate) || other.priceEstimate == priceEstimate)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,origin,destination,demandFactor,priceEstimate,confidence);

@override
String toString() {
  return 'RouteSegmentModel(origin: $origin, destination: $destination, demandFactor: $demandFactor, priceEstimate: $priceEstimate, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $RouteSegmentModelCopyWith<$Res>  {
  factory $RouteSegmentModelCopyWith(RouteSegmentModel value, $Res Function(RouteSegmentModel) _then) = _$RouteSegmentModelCopyWithImpl;
@useResult
$Res call({
 String origin, String destination, double demandFactor, double priceEstimate, int confidence
});




}
/// @nodoc
class _$RouteSegmentModelCopyWithImpl<$Res>
    implements $RouteSegmentModelCopyWith<$Res> {
  _$RouteSegmentModelCopyWithImpl(this._self, this._then);

  final RouteSegmentModel _self;
  final $Res Function(RouteSegmentModel) _then;

/// Create a copy of RouteSegmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? origin = null,Object? destination = null,Object? demandFactor = null,Object? priceEstimate = null,Object? confidence = null,}) {
  return _then(_self.copyWith(
origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,demandFactor: null == demandFactor ? _self.demandFactor : demandFactor // ignore: cast_nullable_to_non_nullable
as double,priceEstimate: null == priceEstimate ? _self.priceEstimate : priceEstimate // ignore: cast_nullable_to_non_nullable
as double,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RouteSegmentModel].
extension RouteSegmentModelPatterns on RouteSegmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteSegmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteSegmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteSegmentModel value)  $default,){
final _that = this;
switch (_that) {
case _RouteSegmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteSegmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _RouteSegmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String origin,  String destination,  double demandFactor,  double priceEstimate,  int confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteSegmentModel() when $default != null:
return $default(_that.origin,_that.destination,_that.demandFactor,_that.priceEstimate,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String origin,  String destination,  double demandFactor,  double priceEstimate,  int confidence)  $default,) {final _that = this;
switch (_that) {
case _RouteSegmentModel():
return $default(_that.origin,_that.destination,_that.demandFactor,_that.priceEstimate,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String origin,  String destination,  double demandFactor,  double priceEstimate,  int confidence)?  $default,) {final _that = this;
switch (_that) {
case _RouteSegmentModel() when $default != null:
return $default(_that.origin,_that.destination,_that.demandFactor,_that.priceEstimate,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RouteSegmentModel implements RouteSegmentModel {
  const _RouteSegmentModel({required this.origin, required this.destination, required this.demandFactor, required this.priceEstimate, required this.confidence});
  factory _RouteSegmentModel.fromJson(Map<String, dynamic> json) => _$RouteSegmentModelFromJson(json);

@override final  String origin;
@override final  String destination;
@override final  double demandFactor;
@override final  double priceEstimate;
@override final  int confidence;

/// Create a copy of RouteSegmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteSegmentModelCopyWith<_RouteSegmentModel> get copyWith => __$RouteSegmentModelCopyWithImpl<_RouteSegmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteSegmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteSegmentModel&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.demandFactor, demandFactor) || other.demandFactor == demandFactor)&&(identical(other.priceEstimate, priceEstimate) || other.priceEstimate == priceEstimate)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,origin,destination,demandFactor,priceEstimate,confidence);

@override
String toString() {
  return 'RouteSegmentModel(origin: $origin, destination: $destination, demandFactor: $demandFactor, priceEstimate: $priceEstimate, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$RouteSegmentModelCopyWith<$Res> implements $RouteSegmentModelCopyWith<$Res> {
  factory _$RouteSegmentModelCopyWith(_RouteSegmentModel value, $Res Function(_RouteSegmentModel) _then) = __$RouteSegmentModelCopyWithImpl;
@override @useResult
$Res call({
 String origin, String destination, double demandFactor, double priceEstimate, int confidence
});




}
/// @nodoc
class __$RouteSegmentModelCopyWithImpl<$Res>
    implements _$RouteSegmentModelCopyWith<$Res> {
  __$RouteSegmentModelCopyWithImpl(this._self, this._then);

  final _RouteSegmentModel _self;
  final $Res Function(_RouteSegmentModel) _then;

/// Create a copy of RouteSegmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? origin = null,Object? destination = null,Object? demandFactor = null,Object? priceEstimate = null,Object? confidence = null,}) {
  return _then(_RouteSegmentModel(
origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,demandFactor: null == demandFactor ? _self.demandFactor : demandFactor // ignore: cast_nullable_to_non_nullable
as double,priceEstimate: null == priceEstimate ? _self.priceEstimate : priceEstimate // ignore: cast_nullable_to_non_nullable
as double,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PriceRecommendationModel {

 String get id; double get recommendedPrice; double get minPrice; double get maxPrice; double get marketAverage; String get reasoning; List<PriceFactorModel> get factors; DateTime? get generatedAt;
/// Create a copy of PriceRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceRecommendationModelCopyWith<PriceRecommendationModel> get copyWith => _$PriceRecommendationModelCopyWithImpl<PriceRecommendationModel>(this as PriceRecommendationModel, _$identity);

  /// Serializes this PriceRecommendationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceRecommendationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.recommendedPrice, recommendedPrice) || other.recommendedPrice == recommendedPrice)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.marketAverage, marketAverage) || other.marketAverage == marketAverage)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&const DeepCollectionEquality().equals(other.factors, factors)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recommendedPrice,minPrice,maxPrice,marketAverage,reasoning,const DeepCollectionEquality().hash(factors),generatedAt);

@override
String toString() {
  return 'PriceRecommendationModel(id: $id, recommendedPrice: $recommendedPrice, minPrice: $minPrice, maxPrice: $maxPrice, marketAverage: $marketAverage, reasoning: $reasoning, factors: $factors, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class $PriceRecommendationModelCopyWith<$Res>  {
  factory $PriceRecommendationModelCopyWith(PriceRecommendationModel value, $Res Function(PriceRecommendationModel) _then) = _$PriceRecommendationModelCopyWithImpl;
@useResult
$Res call({
 String id, double recommendedPrice, double minPrice, double maxPrice, double marketAverage, String reasoning, List<PriceFactorModel> factors, DateTime? generatedAt
});




}
/// @nodoc
class _$PriceRecommendationModelCopyWithImpl<$Res>
    implements $PriceRecommendationModelCopyWith<$Res> {
  _$PriceRecommendationModelCopyWithImpl(this._self, this._then);

  final PriceRecommendationModel _self;
  final $Res Function(PriceRecommendationModel) _then;

/// Create a copy of PriceRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recommendedPrice = null,Object? minPrice = null,Object? maxPrice = null,Object? marketAverage = null,Object? reasoning = null,Object? factors = null,Object? generatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recommendedPrice: null == recommendedPrice ? _self.recommendedPrice : recommendedPrice // ignore: cast_nullable_to_non_nullable
as double,minPrice: null == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double,maxPrice: null == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double,marketAverage: null == marketAverage ? _self.marketAverage : marketAverage // ignore: cast_nullable_to_non_nullable
as double,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,factors: null == factors ? _self.factors : factors // ignore: cast_nullable_to_non_nullable
as List<PriceFactorModel>,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceRecommendationModel].
extension PriceRecommendationModelPatterns on PriceRecommendationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceRecommendationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceRecommendationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceRecommendationModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceRecommendationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceRecommendationModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceRecommendationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double recommendedPrice,  double minPrice,  double maxPrice,  double marketAverage,  String reasoning,  List<PriceFactorModel> factors,  DateTime? generatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceRecommendationModel() when $default != null:
return $default(_that.id,_that.recommendedPrice,_that.minPrice,_that.maxPrice,_that.marketAverage,_that.reasoning,_that.factors,_that.generatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double recommendedPrice,  double minPrice,  double maxPrice,  double marketAverage,  String reasoning,  List<PriceFactorModel> factors,  DateTime? generatedAt)  $default,) {final _that = this;
switch (_that) {
case _PriceRecommendationModel():
return $default(_that.id,_that.recommendedPrice,_that.minPrice,_that.maxPrice,_that.marketAverage,_that.reasoning,_that.factors,_that.generatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double recommendedPrice,  double minPrice,  double maxPrice,  double marketAverage,  String reasoning,  List<PriceFactorModel> factors,  DateTime? generatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PriceRecommendationModel() when $default != null:
return $default(_that.id,_that.recommendedPrice,_that.minPrice,_that.maxPrice,_that.marketAverage,_that.reasoning,_that.factors,_that.generatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceRecommendationModel implements PriceRecommendationModel {
  const _PriceRecommendationModel({required this.id, required this.recommendedPrice, required this.minPrice, required this.maxPrice, required this.marketAverage, required this.reasoning, final  List<PriceFactorModel> factors = const [], this.generatedAt}): _factors = factors;
  factory _PriceRecommendationModel.fromJson(Map<String, dynamic> json) => _$PriceRecommendationModelFromJson(json);

@override final  String id;
@override final  double recommendedPrice;
@override final  double minPrice;
@override final  double maxPrice;
@override final  double marketAverage;
@override final  String reasoning;
 final  List<PriceFactorModel> _factors;
@override@JsonKey() List<PriceFactorModel> get factors {
  if (_factors is EqualUnmodifiableListView) return _factors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_factors);
}

@override final  DateTime? generatedAt;

/// Create a copy of PriceRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceRecommendationModelCopyWith<_PriceRecommendationModel> get copyWith => __$PriceRecommendationModelCopyWithImpl<_PriceRecommendationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceRecommendationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceRecommendationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.recommendedPrice, recommendedPrice) || other.recommendedPrice == recommendedPrice)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.marketAverage, marketAverage) || other.marketAverage == marketAverage)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&const DeepCollectionEquality().equals(other._factors, _factors)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recommendedPrice,minPrice,maxPrice,marketAverage,reasoning,const DeepCollectionEquality().hash(_factors),generatedAt);

@override
String toString() {
  return 'PriceRecommendationModel(id: $id, recommendedPrice: $recommendedPrice, minPrice: $minPrice, maxPrice: $maxPrice, marketAverage: $marketAverage, reasoning: $reasoning, factors: $factors, generatedAt: $generatedAt)';
}


}

/// @nodoc
abstract mixin class _$PriceRecommendationModelCopyWith<$Res> implements $PriceRecommendationModelCopyWith<$Res> {
  factory _$PriceRecommendationModelCopyWith(_PriceRecommendationModel value, $Res Function(_PriceRecommendationModel) _then) = __$PriceRecommendationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, double recommendedPrice, double minPrice, double maxPrice, double marketAverage, String reasoning, List<PriceFactorModel> factors, DateTime? generatedAt
});




}
/// @nodoc
class __$PriceRecommendationModelCopyWithImpl<$Res>
    implements _$PriceRecommendationModelCopyWith<$Res> {
  __$PriceRecommendationModelCopyWithImpl(this._self, this._then);

  final _PriceRecommendationModel _self;
  final $Res Function(_PriceRecommendationModel) _then;

/// Create a copy of PriceRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recommendedPrice = null,Object? minPrice = null,Object? maxPrice = null,Object? marketAverage = null,Object? reasoning = null,Object? factors = null,Object? generatedAt = freezed,}) {
  return _then(_PriceRecommendationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recommendedPrice: null == recommendedPrice ? _self.recommendedPrice : recommendedPrice // ignore: cast_nullable_to_non_nullable
as double,minPrice: null == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double,maxPrice: null == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double,marketAverage: null == marketAverage ? _self.marketAverage : marketAverage // ignore: cast_nullable_to_non_nullable
as double,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,factors: null == factors ? _self._factors : factors // ignore: cast_nullable_to_non_nullable
as List<PriceFactorModel>,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$PriceFactorModel {

 String get factor; double get impact;// -1.0 to 1.0
 String get description;
/// Create a copy of PriceFactorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceFactorModelCopyWith<PriceFactorModel> get copyWith => _$PriceFactorModelCopyWithImpl<PriceFactorModel>(this as PriceFactorModel, _$identity);

  /// Serializes this PriceFactorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceFactorModel&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.impact, impact) || other.impact == impact)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,factor,impact,description);

@override
String toString() {
  return 'PriceFactorModel(factor: $factor, impact: $impact, description: $description)';
}


}

/// @nodoc
abstract mixin class $PriceFactorModelCopyWith<$Res>  {
  factory $PriceFactorModelCopyWith(PriceFactorModel value, $Res Function(PriceFactorModel) _then) = _$PriceFactorModelCopyWithImpl;
@useResult
$Res call({
 String factor, double impact, String description
});




}
/// @nodoc
class _$PriceFactorModelCopyWithImpl<$Res>
    implements $PriceFactorModelCopyWith<$Res> {
  _$PriceFactorModelCopyWithImpl(this._self, this._then);

  final PriceFactorModel _self;
  final $Res Function(PriceFactorModel) _then;

/// Create a copy of PriceFactorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? factor = null,Object? impact = null,Object? description = null,}) {
  return _then(_self.copyWith(
factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as String,impact: null == impact ? _self.impact : impact // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceFactorModel].
extension PriceFactorModelPatterns on PriceFactorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceFactorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceFactorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceFactorModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceFactorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceFactorModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceFactorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String factor,  double impact,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceFactorModel() when $default != null:
return $default(_that.factor,_that.impact,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String factor,  double impact,  String description)  $default,) {final _that = this;
switch (_that) {
case _PriceFactorModel():
return $default(_that.factor,_that.impact,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String factor,  double impact,  String description)?  $default,) {final _that = this;
switch (_that) {
case _PriceFactorModel() when $default != null:
return $default(_that.factor,_that.impact,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceFactorModel implements PriceFactorModel {
  const _PriceFactorModel({required this.factor, required this.impact, required this.description});
  factory _PriceFactorModel.fromJson(Map<String, dynamic> json) => _$PriceFactorModelFromJson(json);

@override final  String factor;
@override final  double impact;
// -1.0 to 1.0
@override final  String description;

/// Create a copy of PriceFactorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceFactorModelCopyWith<_PriceFactorModel> get copyWith => __$PriceFactorModelCopyWithImpl<_PriceFactorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceFactorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceFactorModel&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.impact, impact) || other.impact == impact)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,factor,impact,description);

@override
String toString() {
  return 'PriceFactorModel(factor: $factor, impact: $impact, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PriceFactorModelCopyWith<$Res> implements $PriceFactorModelCopyWith<$Res> {
  factory _$PriceFactorModelCopyWith(_PriceFactorModel value, $Res Function(_PriceFactorModel) _then) = __$PriceFactorModelCopyWithImpl;
@override @useResult
$Res call({
 String factor, double impact, String description
});




}
/// @nodoc
class __$PriceFactorModelCopyWithImpl<$Res>
    implements _$PriceFactorModelCopyWith<$Res> {
  __$PriceFactorModelCopyWithImpl(this._self, this._then);

  final _PriceFactorModel _self;
  final $Res Function(_PriceFactorModel) _then;

/// Create a copy of PriceFactorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? factor = null,Object? impact = null,Object? description = null,}) {
  return _then(_PriceFactorModel(
factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as String,impact: null == impact ? _self.impact : impact // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FraudAlertModel {

 String get id; String get alertType; double get riskScore;// 0.0 to 1.0
 String get description; String get entityId; String get entityType; String? get actionTaken; DateTime? get detectedAt; DateTime? get resolvedAt;
/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FraudAlertModelCopyWith<FraudAlertModel> get copyWith => _$FraudAlertModelCopyWithImpl<FraudAlertModel>(this as FraudAlertModel, _$identity);

  /// Serializes this FraudAlertModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FraudAlertModel&&(identical(other.id, id) || other.id == id)&&(identical(other.alertType, alertType) || other.alertType == alertType)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.description, description) || other.description == description)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,alertType,riskScore,description,entityId,entityType,actionTaken,detectedAt,resolvedAt);

@override
String toString() {
  return 'FraudAlertModel(id: $id, alertType: $alertType, riskScore: $riskScore, description: $description, entityId: $entityId, entityType: $entityType, actionTaken: $actionTaken, detectedAt: $detectedAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class $FraudAlertModelCopyWith<$Res>  {
  factory $FraudAlertModelCopyWith(FraudAlertModel value, $Res Function(FraudAlertModel) _then) = _$FraudAlertModelCopyWithImpl;
@useResult
$Res call({
 String id, String alertType, double riskScore, String description, String entityId, String entityType, String? actionTaken, DateTime? detectedAt, DateTime? resolvedAt
});




}
/// @nodoc
class _$FraudAlertModelCopyWithImpl<$Res>
    implements $FraudAlertModelCopyWith<$Res> {
  _$FraudAlertModelCopyWithImpl(this._self, this._then);

  final FraudAlertModel _self;
  final $Res Function(FraudAlertModel) _then;

/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? alertType = null,Object? riskScore = null,Object? description = null,Object? entityId = null,Object? entityType = null,Object? actionTaken = freezed,Object? detectedAt = freezed,Object? resolvedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,alertType: null == alertType ? _self.alertType : alertType // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,detectedAt: freezed == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FraudAlertModel].
extension FraudAlertModelPatterns on FraudAlertModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FraudAlertModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FraudAlertModel value)  $default,){
final _that = this;
switch (_that) {
case _FraudAlertModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FraudAlertModel value)?  $default,){
final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String alertType,  double riskScore,  String description,  String entityId,  String entityType,  String? actionTaken,  DateTime? detectedAt,  DateTime? resolvedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
return $default(_that.id,_that.alertType,_that.riskScore,_that.description,_that.entityId,_that.entityType,_that.actionTaken,_that.detectedAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String alertType,  double riskScore,  String description,  String entityId,  String entityType,  String? actionTaken,  DateTime? detectedAt,  DateTime? resolvedAt)  $default,) {final _that = this;
switch (_that) {
case _FraudAlertModel():
return $default(_that.id,_that.alertType,_that.riskScore,_that.description,_that.entityId,_that.entityType,_that.actionTaken,_that.detectedAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String alertType,  double riskScore,  String description,  String entityId,  String entityType,  String? actionTaken,  DateTime? detectedAt,  DateTime? resolvedAt)?  $default,) {final _that = this;
switch (_that) {
case _FraudAlertModel() when $default != null:
return $default(_that.id,_that.alertType,_that.riskScore,_that.description,_that.entityId,_that.entityType,_that.actionTaken,_that.detectedAt,_that.resolvedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FraudAlertModel implements FraudAlertModel {
  const _FraudAlertModel({required this.id, required this.alertType, required this.riskScore, required this.description, required this.entityId, required this.entityType, this.actionTaken, this.detectedAt, this.resolvedAt});
  factory _FraudAlertModel.fromJson(Map<String, dynamic> json) => _$FraudAlertModelFromJson(json);

@override final  String id;
@override final  String alertType;
@override final  double riskScore;
// 0.0 to 1.0
@override final  String description;
@override final  String entityId;
@override final  String entityType;
@override final  String? actionTaken;
@override final  DateTime? detectedAt;
@override final  DateTime? resolvedAt;

/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FraudAlertModelCopyWith<_FraudAlertModel> get copyWith => __$FraudAlertModelCopyWithImpl<_FraudAlertModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FraudAlertModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FraudAlertModel&&(identical(other.id, id) || other.id == id)&&(identical(other.alertType, alertType) || other.alertType == alertType)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.description, description) || other.description == description)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.actionTaken, actionTaken) || other.actionTaken == actionTaken)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,alertType,riskScore,description,entityId,entityType,actionTaken,detectedAt,resolvedAt);

@override
String toString() {
  return 'FraudAlertModel(id: $id, alertType: $alertType, riskScore: $riskScore, description: $description, entityId: $entityId, entityType: $entityType, actionTaken: $actionTaken, detectedAt: $detectedAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class _$FraudAlertModelCopyWith<$Res> implements $FraudAlertModelCopyWith<$Res> {
  factory _$FraudAlertModelCopyWith(_FraudAlertModel value, $Res Function(_FraudAlertModel) _then) = __$FraudAlertModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String alertType, double riskScore, String description, String entityId, String entityType, String? actionTaken, DateTime? detectedAt, DateTime? resolvedAt
});




}
/// @nodoc
class __$FraudAlertModelCopyWithImpl<$Res>
    implements _$FraudAlertModelCopyWith<$Res> {
  __$FraudAlertModelCopyWithImpl(this._self, this._then);

  final _FraudAlertModel _self;
  final $Res Function(_FraudAlertModel) _then;

/// Create a copy of FraudAlertModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? alertType = null,Object? riskScore = null,Object? description = null,Object? entityId = null,Object? entityType = null,Object? actionTaken = freezed,Object? detectedAt = freezed,Object? resolvedAt = freezed,}) {
  return _then(_FraudAlertModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,alertType: null == alertType ? _self.alertType : alertType // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,actionTaken: freezed == actionTaken ? _self.actionTaken : actionTaken // ignore: cast_nullable_to_non_nullable
as String?,detectedAt: freezed == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$MatchScoreModel {

 String get driverId; String get freightPostId; double get score;// 0.0 to 1.0
 double get distanceScore; double get ratingScore; double get priceScore; double get reliabilityScore; String? get reasoning;
/// Create a copy of MatchScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchScoreModelCopyWith<MatchScoreModel> get copyWith => _$MatchScoreModelCopyWithImpl<MatchScoreModel>(this as MatchScoreModel, _$identity);

  /// Serializes this MatchScoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchScoreModel&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.score, score) || other.score == score)&&(identical(other.distanceScore, distanceScore) || other.distanceScore == distanceScore)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.priceScore, priceScore) || other.priceScore == priceScore)&&(identical(other.reliabilityScore, reliabilityScore) || other.reliabilityScore == reliabilityScore)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,driverId,freightPostId,score,distanceScore,ratingScore,priceScore,reliabilityScore,reasoning);

@override
String toString() {
  return 'MatchScoreModel(driverId: $driverId, freightPostId: $freightPostId, score: $score, distanceScore: $distanceScore, ratingScore: $ratingScore, priceScore: $priceScore, reliabilityScore: $reliabilityScore, reasoning: $reasoning)';
}


}

/// @nodoc
abstract mixin class $MatchScoreModelCopyWith<$Res>  {
  factory $MatchScoreModelCopyWith(MatchScoreModel value, $Res Function(MatchScoreModel) _then) = _$MatchScoreModelCopyWithImpl;
@useResult
$Res call({
 String driverId, String freightPostId, double score, double distanceScore, double ratingScore, double priceScore, double reliabilityScore, String? reasoning
});




}
/// @nodoc
class _$MatchScoreModelCopyWithImpl<$Res>
    implements $MatchScoreModelCopyWith<$Res> {
  _$MatchScoreModelCopyWithImpl(this._self, this._then);

  final MatchScoreModel _self;
  final $Res Function(MatchScoreModel) _then;

/// Create a copy of MatchScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? driverId = null,Object? freightPostId = null,Object? score = null,Object? distanceScore = null,Object? ratingScore = null,Object? priceScore = null,Object? reliabilityScore = null,Object? reasoning = freezed,}) {
  return _then(_self.copyWith(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,distanceScore: null == distanceScore ? _self.distanceScore : distanceScore // ignore: cast_nullable_to_non_nullable
as double,ratingScore: null == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double,priceScore: null == priceScore ? _self.priceScore : priceScore // ignore: cast_nullable_to_non_nullable
as double,reliabilityScore: null == reliabilityScore ? _self.reliabilityScore : reliabilityScore // ignore: cast_nullable_to_non_nullable
as double,reasoning: freezed == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchScoreModel].
extension MatchScoreModelPatterns on MatchScoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchScoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchScoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchScoreModel value)  $default,){
final _that = this;
switch (_that) {
case _MatchScoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchScoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _MatchScoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String driverId,  String freightPostId,  double score,  double distanceScore,  double ratingScore,  double priceScore,  double reliabilityScore,  String? reasoning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchScoreModel() when $default != null:
return $default(_that.driverId,_that.freightPostId,_that.score,_that.distanceScore,_that.ratingScore,_that.priceScore,_that.reliabilityScore,_that.reasoning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String driverId,  String freightPostId,  double score,  double distanceScore,  double ratingScore,  double priceScore,  double reliabilityScore,  String? reasoning)  $default,) {final _that = this;
switch (_that) {
case _MatchScoreModel():
return $default(_that.driverId,_that.freightPostId,_that.score,_that.distanceScore,_that.ratingScore,_that.priceScore,_that.reliabilityScore,_that.reasoning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String driverId,  String freightPostId,  double score,  double distanceScore,  double ratingScore,  double priceScore,  double reliabilityScore,  String? reasoning)?  $default,) {final _that = this;
switch (_that) {
case _MatchScoreModel() when $default != null:
return $default(_that.driverId,_that.freightPostId,_that.score,_that.distanceScore,_that.ratingScore,_that.priceScore,_that.reliabilityScore,_that.reasoning);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchScoreModel implements MatchScoreModel {
  const _MatchScoreModel({required this.driverId, required this.freightPostId, required this.score, required this.distanceScore, required this.ratingScore, required this.priceScore, required this.reliabilityScore, this.reasoning});
  factory _MatchScoreModel.fromJson(Map<String, dynamic> json) => _$MatchScoreModelFromJson(json);

@override final  String driverId;
@override final  String freightPostId;
@override final  double score;
// 0.0 to 1.0
@override final  double distanceScore;
@override final  double ratingScore;
@override final  double priceScore;
@override final  double reliabilityScore;
@override final  String? reasoning;

/// Create a copy of MatchScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchScoreModelCopyWith<_MatchScoreModel> get copyWith => __$MatchScoreModelCopyWithImpl<_MatchScoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchScoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchScoreModel&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.freightPostId, freightPostId) || other.freightPostId == freightPostId)&&(identical(other.score, score) || other.score == score)&&(identical(other.distanceScore, distanceScore) || other.distanceScore == distanceScore)&&(identical(other.ratingScore, ratingScore) || other.ratingScore == ratingScore)&&(identical(other.priceScore, priceScore) || other.priceScore == priceScore)&&(identical(other.reliabilityScore, reliabilityScore) || other.reliabilityScore == reliabilityScore)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,driverId,freightPostId,score,distanceScore,ratingScore,priceScore,reliabilityScore,reasoning);

@override
String toString() {
  return 'MatchScoreModel(driverId: $driverId, freightPostId: $freightPostId, score: $score, distanceScore: $distanceScore, ratingScore: $ratingScore, priceScore: $priceScore, reliabilityScore: $reliabilityScore, reasoning: $reasoning)';
}


}

/// @nodoc
abstract mixin class _$MatchScoreModelCopyWith<$Res> implements $MatchScoreModelCopyWith<$Res> {
  factory _$MatchScoreModelCopyWith(_MatchScoreModel value, $Res Function(_MatchScoreModel) _then) = __$MatchScoreModelCopyWithImpl;
@override @useResult
$Res call({
 String driverId, String freightPostId, double score, double distanceScore, double ratingScore, double priceScore, double reliabilityScore, String? reasoning
});




}
/// @nodoc
class __$MatchScoreModelCopyWithImpl<$Res>
    implements _$MatchScoreModelCopyWith<$Res> {
  __$MatchScoreModelCopyWithImpl(this._self, this._then);

  final _MatchScoreModel _self;
  final $Res Function(_MatchScoreModel) _then;

/// Create a copy of MatchScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? driverId = null,Object? freightPostId = null,Object? score = null,Object? distanceScore = null,Object? ratingScore = null,Object? priceScore = null,Object? reliabilityScore = null,Object? reasoning = freezed,}) {
  return _then(_MatchScoreModel(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,freightPostId: null == freightPostId ? _self.freightPostId : freightPostId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,distanceScore: null == distanceScore ? _self.distanceScore : distanceScore // ignore: cast_nullable_to_non_nullable
as double,ratingScore: null == ratingScore ? _self.ratingScore : ratingScore // ignore: cast_nullable_to_non_nullable
as double,priceScore: null == priceScore ? _self.priceScore : priceScore // ignore: cast_nullable_to_non_nullable
as double,reliabilityScore: null == reliabilityScore ? _self.reliabilityScore : reliabilityScore // ignore: cast_nullable_to_non_nullable
as double,reasoning: freezed == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
