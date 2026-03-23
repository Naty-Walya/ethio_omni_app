// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {

 String get id; String get userId; String get title; String get body; NotificationType get type; NotificationPriority get priority; bool get isRead; String? get actionUrl; String? get imageUrl; Map<String, dynamic>? get data; DateTime? get createdAt; DateTime? get readAt;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.actionUrl, actionUrl) || other.actionUrl == actionUrl)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,body,type,priority,isRead,actionUrl,imageUrl,const DeepCollectionEquality().hash(data),createdAt,readAt);

@override
String toString() {
  return 'NotificationModel(id: $id, userId: $userId, title: $title, body: $body, type: $type, priority: $priority, isRead: $isRead, actionUrl: $actionUrl, imageUrl: $imageUrl, data: $data, createdAt: $createdAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String title, String body, NotificationType type, NotificationPriority priority, bool isRead, String? actionUrl, String? imageUrl, Map<String, dynamic>? data, DateTime? createdAt, DateTime? readAt
});




}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? body = null,Object? type = null,Object? priority = null,Object? isRead = null,Object? actionUrl = freezed,Object? imageUrl = freezed,Object? data = freezed,Object? createdAt = freezed,Object? readAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as NotificationPriority,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,actionUrl: freezed == actionUrl ? _self.actionUrl : actionUrl // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String title,  String body,  NotificationType type,  NotificationPriority priority,  bool isRead,  String? actionUrl,  String? imageUrl,  Map<String, dynamic>? data,  DateTime? createdAt,  DateTime? readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.body,_that.type,_that.priority,_that.isRead,_that.actionUrl,_that.imageUrl,_that.data,_that.createdAt,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String title,  String body,  NotificationType type,  NotificationPriority priority,  bool isRead,  String? actionUrl,  String? imageUrl,  Map<String, dynamic>? data,  DateTime? createdAt,  DateTime? readAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
return $default(_that.id,_that.userId,_that.title,_that.body,_that.type,_that.priority,_that.isRead,_that.actionUrl,_that.imageUrl,_that.data,_that.createdAt,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String title,  String body,  NotificationType type,  NotificationPriority priority,  bool isRead,  String? actionUrl,  String? imageUrl,  Map<String, dynamic>? data,  DateTime? createdAt,  DateTime? readAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.body,_that.type,_that.priority,_that.isRead,_that.actionUrl,_that.imageUrl,_that.data,_that.createdAt,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationModel implements NotificationModel {
  const _NotificationModel({required this.id, required this.userId, required this.title, required this.body, required this.type, this.priority = NotificationPriority.medium, this.isRead = false, this.actionUrl, this.imageUrl, final  Map<String, dynamic>? data, this.createdAt, this.readAt}): _data = data;
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String title;
@override final  String body;
@override final  NotificationType type;
@override@JsonKey() final  NotificationPriority priority;
@override@JsonKey() final  bool isRead;
@override final  String? actionUrl;
@override final  String? imageUrl;
 final  Map<String, dynamic>? _data;
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  DateTime? createdAt;
@override final  DateTime? readAt;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.actionUrl, actionUrl) || other.actionUrl == actionUrl)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,body,type,priority,isRead,actionUrl,imageUrl,const DeepCollectionEquality().hash(_data),createdAt,readAt);

@override
String toString() {
  return 'NotificationModel(id: $id, userId: $userId, title: $title, body: $body, type: $type, priority: $priority, isRead: $isRead, actionUrl: $actionUrl, imageUrl: $imageUrl, data: $data, createdAt: $createdAt, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String title, String body, NotificationType type, NotificationPriority priority, bool isRead, String? actionUrl, String? imageUrl, Map<String, dynamic>? data, DateTime? createdAt, DateTime? readAt
});




}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? body = null,Object? type = null,Object? priority = null,Object? isRead = null,Object? actionUrl = freezed,Object? imageUrl = freezed,Object? data = freezed,Object? createdAt = freezed,Object? readAt = freezed,}) {
  return _then(_NotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as NotificationPriority,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,actionUrl: freezed == actionUrl ? _self.actionUrl : actionUrl // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$NotificationSettings {

 bool get pushEnabled; bool get emailEnabled; bool get bidNotifications; bool get auctionNotifications; bool get paymentNotifications; bool get jobNotifications; bool get marketingNotifications;
/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<NotificationSettings> get copyWith => _$NotificationSettingsCopyWithImpl<NotificationSettings>(this as NotificationSettings, _$identity);

  /// Serializes this NotificationSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSettings&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.bidNotifications, bidNotifications) || other.bidNotifications == bidNotifications)&&(identical(other.auctionNotifications, auctionNotifications) || other.auctionNotifications == auctionNotifications)&&(identical(other.paymentNotifications, paymentNotifications) || other.paymentNotifications == paymentNotifications)&&(identical(other.jobNotifications, jobNotifications) || other.jobNotifications == jobNotifications)&&(identical(other.marketingNotifications, marketingNotifications) || other.marketingNotifications == marketingNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pushEnabled,emailEnabled,bidNotifications,auctionNotifications,paymentNotifications,jobNotifications,marketingNotifications);

@override
String toString() {
  return 'NotificationSettings(pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, bidNotifications: $bidNotifications, auctionNotifications: $auctionNotifications, paymentNotifications: $paymentNotifications, jobNotifications: $jobNotifications, marketingNotifications: $marketingNotifications)';
}


}

/// @nodoc
abstract mixin class $NotificationSettingsCopyWith<$Res>  {
  factory $NotificationSettingsCopyWith(NotificationSettings value, $Res Function(NotificationSettings) _then) = _$NotificationSettingsCopyWithImpl;
@useResult
$Res call({
 bool pushEnabled, bool emailEnabled, bool bidNotifications, bool auctionNotifications, bool paymentNotifications, bool jobNotifications, bool marketingNotifications
});




}
/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._self, this._then);

  final NotificationSettings _self;
  final $Res Function(NotificationSettings) _then;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pushEnabled = null,Object? emailEnabled = null,Object? bidNotifications = null,Object? auctionNotifications = null,Object? paymentNotifications = null,Object? jobNotifications = null,Object? marketingNotifications = null,}) {
  return _then(_self.copyWith(
pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,bidNotifications: null == bidNotifications ? _self.bidNotifications : bidNotifications // ignore: cast_nullable_to_non_nullable
as bool,auctionNotifications: null == auctionNotifications ? _self.auctionNotifications : auctionNotifications // ignore: cast_nullable_to_non_nullable
as bool,paymentNotifications: null == paymentNotifications ? _self.paymentNotifications : paymentNotifications // ignore: cast_nullable_to_non_nullable
as bool,jobNotifications: null == jobNotifications ? _self.jobNotifications : jobNotifications // ignore: cast_nullable_to_non_nullable
as bool,marketingNotifications: null == marketingNotifications ? _self.marketingNotifications : marketingNotifications // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSettings].
extension NotificationSettingsPatterns on NotificationSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSettings value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSettings value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool pushEnabled,  bool emailEnabled,  bool bidNotifications,  bool auctionNotifications,  bool paymentNotifications,  bool jobNotifications,  bool marketingNotifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
return $default(_that.pushEnabled,_that.emailEnabled,_that.bidNotifications,_that.auctionNotifications,_that.paymentNotifications,_that.jobNotifications,_that.marketingNotifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool pushEnabled,  bool emailEnabled,  bool bidNotifications,  bool auctionNotifications,  bool paymentNotifications,  bool jobNotifications,  bool marketingNotifications)  $default,) {final _that = this;
switch (_that) {
case _NotificationSettings():
return $default(_that.pushEnabled,_that.emailEnabled,_that.bidNotifications,_that.auctionNotifications,_that.paymentNotifications,_that.jobNotifications,_that.marketingNotifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool pushEnabled,  bool emailEnabled,  bool bidNotifications,  bool auctionNotifications,  bool paymentNotifications,  bool jobNotifications,  bool marketingNotifications)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
return $default(_that.pushEnabled,_that.emailEnabled,_that.bidNotifications,_that.auctionNotifications,_that.paymentNotifications,_that.jobNotifications,_that.marketingNotifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationSettings implements NotificationSettings {
  const _NotificationSettings({this.pushEnabled = true, this.emailEnabled = true, this.bidNotifications = true, this.auctionNotifications = true, this.paymentNotifications = true, this.jobNotifications = true, this.marketingNotifications = true});
  factory _NotificationSettings.fromJson(Map<String, dynamic> json) => _$NotificationSettingsFromJson(json);

@override@JsonKey() final  bool pushEnabled;
@override@JsonKey() final  bool emailEnabled;
@override@JsonKey() final  bool bidNotifications;
@override@JsonKey() final  bool auctionNotifications;
@override@JsonKey() final  bool paymentNotifications;
@override@JsonKey() final  bool jobNotifications;
@override@JsonKey() final  bool marketingNotifications;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSettingsCopyWith<_NotificationSettings> get copyWith => __$NotificationSettingsCopyWithImpl<_NotificationSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSettings&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.bidNotifications, bidNotifications) || other.bidNotifications == bidNotifications)&&(identical(other.auctionNotifications, auctionNotifications) || other.auctionNotifications == auctionNotifications)&&(identical(other.paymentNotifications, paymentNotifications) || other.paymentNotifications == paymentNotifications)&&(identical(other.jobNotifications, jobNotifications) || other.jobNotifications == jobNotifications)&&(identical(other.marketingNotifications, marketingNotifications) || other.marketingNotifications == marketingNotifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pushEnabled,emailEnabled,bidNotifications,auctionNotifications,paymentNotifications,jobNotifications,marketingNotifications);

@override
String toString() {
  return 'NotificationSettings(pushEnabled: $pushEnabled, emailEnabled: $emailEnabled, bidNotifications: $bidNotifications, auctionNotifications: $auctionNotifications, paymentNotifications: $paymentNotifications, jobNotifications: $jobNotifications, marketingNotifications: $marketingNotifications)';
}


}

/// @nodoc
abstract mixin class _$NotificationSettingsCopyWith<$Res> implements $NotificationSettingsCopyWith<$Res> {
  factory _$NotificationSettingsCopyWith(_NotificationSettings value, $Res Function(_NotificationSettings) _then) = __$NotificationSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool pushEnabled, bool emailEnabled, bool bidNotifications, bool auctionNotifications, bool paymentNotifications, bool jobNotifications, bool marketingNotifications
});




}
/// @nodoc
class __$NotificationSettingsCopyWithImpl<$Res>
    implements _$NotificationSettingsCopyWith<$Res> {
  __$NotificationSettingsCopyWithImpl(this._self, this._then);

  final _NotificationSettings _self;
  final $Res Function(_NotificationSettings) _then;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pushEnabled = null,Object? emailEnabled = null,Object? bidNotifications = null,Object? auctionNotifications = null,Object? paymentNotifications = null,Object? jobNotifications = null,Object? marketingNotifications = null,}) {
  return _then(_NotificationSettings(
pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,bidNotifications: null == bidNotifications ? _self.bidNotifications : bidNotifications // ignore: cast_nullable_to_non_nullable
as bool,auctionNotifications: null == auctionNotifications ? _self.auctionNotifications : auctionNotifications // ignore: cast_nullable_to_non_nullable
as bool,paymentNotifications: null == paymentNotifications ? _self.paymentNotifications : paymentNotifications // ignore: cast_nullable_to_non_nullable
as bool,jobNotifications: null == jobNotifications ? _self.jobNotifications : jobNotifications // ignore: cast_nullable_to_non_nullable
as bool,marketingNotifications: null == marketingNotifications ? _self.marketingNotifications : marketingNotifications // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
