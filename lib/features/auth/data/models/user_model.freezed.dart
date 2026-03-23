// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String get id; String get phone; String get role; String? get firstName; String? get lastName; String? get email; String? get avatar; bool get isPhoneVerified; bool get isFaydaVerified; String? get faydaId; ShipperProfileModel? get shipperProfile; DriverProfileModel? get driverProfile; FleetOwnerProfileModel? get fleetOwnerProfile; WalletModel? get wallet;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.isFaydaVerified, isFaydaVerified) || other.isFaydaVerified == isFaydaVerified)&&(identical(other.faydaId, faydaId) || other.faydaId == faydaId)&&(identical(other.shipperProfile, shipperProfile) || other.shipperProfile == shipperProfile)&&(identical(other.driverProfile, driverProfile) || other.driverProfile == driverProfile)&&(identical(other.fleetOwnerProfile, fleetOwnerProfile) || other.fleetOwnerProfile == fleetOwnerProfile)&&(identical(other.wallet, wallet) || other.wallet == wallet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,role,firstName,lastName,email,avatar,isPhoneVerified,isFaydaVerified,faydaId,shipperProfile,driverProfile,fleetOwnerProfile,wallet);

@override
String toString() {
  return 'UserModel(id: $id, phone: $phone, role: $role, firstName: $firstName, lastName: $lastName, email: $email, avatar: $avatar, isPhoneVerified: $isPhoneVerified, isFaydaVerified: $isFaydaVerified, faydaId: $faydaId, shipperProfile: $shipperProfile, driverProfile: $driverProfile, fleetOwnerProfile: $fleetOwnerProfile, wallet: $wallet)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String phone, String role, String? firstName, String? lastName, String? email, String? avatar, bool isPhoneVerified, bool isFaydaVerified, String? faydaId, ShipperProfileModel? shipperProfile, DriverProfileModel? driverProfile, FleetOwnerProfileModel? fleetOwnerProfile, WalletModel? wallet
});


$ShipperProfileModelCopyWith<$Res>? get shipperProfile;$DriverProfileModelCopyWith<$Res>? get driverProfile;$FleetOwnerProfileModelCopyWith<$Res>? get fleetOwnerProfile;$WalletModelCopyWith<$Res>? get wallet;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? role = null,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? avatar = freezed,Object? isPhoneVerified = null,Object? isFaydaVerified = null,Object? faydaId = freezed,Object? shipperProfile = freezed,Object? driverProfile = freezed,Object? fleetOwnerProfile = freezed,Object? wallet = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool,isFaydaVerified: null == isFaydaVerified ? _self.isFaydaVerified : isFaydaVerified // ignore: cast_nullable_to_non_nullable
as bool,faydaId: freezed == faydaId ? _self.faydaId : faydaId // ignore: cast_nullable_to_non_nullable
as String?,shipperProfile: freezed == shipperProfile ? _self.shipperProfile : shipperProfile // ignore: cast_nullable_to_non_nullable
as ShipperProfileModel?,driverProfile: freezed == driverProfile ? _self.driverProfile : driverProfile // ignore: cast_nullable_to_non_nullable
as DriverProfileModel?,fleetOwnerProfile: freezed == fleetOwnerProfile ? _self.fleetOwnerProfile : fleetOwnerProfile // ignore: cast_nullable_to_non_nullable
as FleetOwnerProfileModel?,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletModel?,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShipperProfileModelCopyWith<$Res>? get shipperProfile {
    if (_self.shipperProfile == null) {
    return null;
  }

  return $ShipperProfileModelCopyWith<$Res>(_self.shipperProfile!, (value) {
    return _then(_self.copyWith(shipperProfile: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverProfileModelCopyWith<$Res>? get driverProfile {
    if (_self.driverProfile == null) {
    return null;
  }

  return $DriverProfileModelCopyWith<$Res>(_self.driverProfile!, (value) {
    return _then(_self.copyWith(driverProfile: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetOwnerProfileModelCopyWith<$Res>? get fleetOwnerProfile {
    if (_self.fleetOwnerProfile == null) {
    return null;
  }

  return $FleetOwnerProfileModelCopyWith<$Res>(_self.fleetOwnerProfile!, (value) {
    return _then(_self.copyWith(fleetOwnerProfile: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletModelCopyWith<$Res>? get wallet {
    if (_self.wallet == null) {
    return null;
  }

  return $WalletModelCopyWith<$Res>(_self.wallet!, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String phone,  String role,  String? firstName,  String? lastName,  String? email,  String? avatar,  bool isPhoneVerified,  bool isFaydaVerified,  String? faydaId,  ShipperProfileModel? shipperProfile,  DriverProfileModel? driverProfile,  FleetOwnerProfileModel? fleetOwnerProfile,  WalletModel? wallet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.phone,_that.role,_that.firstName,_that.lastName,_that.email,_that.avatar,_that.isPhoneVerified,_that.isFaydaVerified,_that.faydaId,_that.shipperProfile,_that.driverProfile,_that.fleetOwnerProfile,_that.wallet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String phone,  String role,  String? firstName,  String? lastName,  String? email,  String? avatar,  bool isPhoneVerified,  bool isFaydaVerified,  String? faydaId,  ShipperProfileModel? shipperProfile,  DriverProfileModel? driverProfile,  FleetOwnerProfileModel? fleetOwnerProfile,  WalletModel? wallet)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.phone,_that.role,_that.firstName,_that.lastName,_that.email,_that.avatar,_that.isPhoneVerified,_that.isFaydaVerified,_that.faydaId,_that.shipperProfile,_that.driverProfile,_that.fleetOwnerProfile,_that.wallet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String phone,  String role,  String? firstName,  String? lastName,  String? email,  String? avatar,  bool isPhoneVerified,  bool isFaydaVerified,  String? faydaId,  ShipperProfileModel? shipperProfile,  DriverProfileModel? driverProfile,  FleetOwnerProfileModel? fleetOwnerProfile,  WalletModel? wallet)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.phone,_that.role,_that.firstName,_that.lastName,_that.email,_that.avatar,_that.isPhoneVerified,_that.isFaydaVerified,_that.faydaId,_that.shipperProfile,_that.driverProfile,_that.fleetOwnerProfile,_that.wallet);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.phone, required this.role, this.firstName, this.lastName, this.email, this.avatar, this.isPhoneVerified = false, this.isFaydaVerified = false, this.faydaId, this.shipperProfile, this.driverProfile, this.fleetOwnerProfile, this.wallet});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String phone;
@override final  String role;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? email;
@override final  String? avatar;
@override@JsonKey() final  bool isPhoneVerified;
@override@JsonKey() final  bool isFaydaVerified;
@override final  String? faydaId;
@override final  ShipperProfileModel? shipperProfile;
@override final  DriverProfileModel? driverProfile;
@override final  FleetOwnerProfileModel? fleetOwnerProfile;
@override final  WalletModel? wallet;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isPhoneVerified, isPhoneVerified) || other.isPhoneVerified == isPhoneVerified)&&(identical(other.isFaydaVerified, isFaydaVerified) || other.isFaydaVerified == isFaydaVerified)&&(identical(other.faydaId, faydaId) || other.faydaId == faydaId)&&(identical(other.shipperProfile, shipperProfile) || other.shipperProfile == shipperProfile)&&(identical(other.driverProfile, driverProfile) || other.driverProfile == driverProfile)&&(identical(other.fleetOwnerProfile, fleetOwnerProfile) || other.fleetOwnerProfile == fleetOwnerProfile)&&(identical(other.wallet, wallet) || other.wallet == wallet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,role,firstName,lastName,email,avatar,isPhoneVerified,isFaydaVerified,faydaId,shipperProfile,driverProfile,fleetOwnerProfile,wallet);

@override
String toString() {
  return 'UserModel(id: $id, phone: $phone, role: $role, firstName: $firstName, lastName: $lastName, email: $email, avatar: $avatar, isPhoneVerified: $isPhoneVerified, isFaydaVerified: $isFaydaVerified, faydaId: $faydaId, shipperProfile: $shipperProfile, driverProfile: $driverProfile, fleetOwnerProfile: $fleetOwnerProfile, wallet: $wallet)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String phone, String role, String? firstName, String? lastName, String? email, String? avatar, bool isPhoneVerified, bool isFaydaVerified, String? faydaId, ShipperProfileModel? shipperProfile, DriverProfileModel? driverProfile, FleetOwnerProfileModel? fleetOwnerProfile, WalletModel? wallet
});


@override $ShipperProfileModelCopyWith<$Res>? get shipperProfile;@override $DriverProfileModelCopyWith<$Res>? get driverProfile;@override $FleetOwnerProfileModelCopyWith<$Res>? get fleetOwnerProfile;@override $WalletModelCopyWith<$Res>? get wallet;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? role = null,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? avatar = freezed,Object? isPhoneVerified = null,Object? isFaydaVerified = null,Object? faydaId = freezed,Object? shipperProfile = freezed,Object? driverProfile = freezed,Object? fleetOwnerProfile = freezed,Object? wallet = freezed,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,isPhoneVerified: null == isPhoneVerified ? _self.isPhoneVerified : isPhoneVerified // ignore: cast_nullable_to_non_nullable
as bool,isFaydaVerified: null == isFaydaVerified ? _self.isFaydaVerified : isFaydaVerified // ignore: cast_nullable_to_non_nullable
as bool,faydaId: freezed == faydaId ? _self.faydaId : faydaId // ignore: cast_nullable_to_non_nullable
as String?,shipperProfile: freezed == shipperProfile ? _self.shipperProfile : shipperProfile // ignore: cast_nullable_to_non_nullable
as ShipperProfileModel?,driverProfile: freezed == driverProfile ? _self.driverProfile : driverProfile // ignore: cast_nullable_to_non_nullable
as DriverProfileModel?,fleetOwnerProfile: freezed == fleetOwnerProfile ? _self.fleetOwnerProfile : fleetOwnerProfile // ignore: cast_nullable_to_non_nullable
as FleetOwnerProfileModel?,wallet: freezed == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as WalletModel?,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShipperProfileModelCopyWith<$Res>? get shipperProfile {
    if (_self.shipperProfile == null) {
    return null;
  }

  return $ShipperProfileModelCopyWith<$Res>(_self.shipperProfile!, (value) {
    return _then(_self.copyWith(shipperProfile: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverProfileModelCopyWith<$Res>? get driverProfile {
    if (_self.driverProfile == null) {
    return null;
  }

  return $DriverProfileModelCopyWith<$Res>(_self.driverProfile!, (value) {
    return _then(_self.copyWith(driverProfile: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetOwnerProfileModelCopyWith<$Res>? get fleetOwnerProfile {
    if (_self.fleetOwnerProfile == null) {
    return null;
  }

  return $FleetOwnerProfileModelCopyWith<$Res>(_self.fleetOwnerProfile!, (value) {
    return _then(_self.copyWith(fleetOwnerProfile: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletModelCopyWith<$Res>? get wallet {
    if (_self.wallet == null) {
    return null;
  }

  return $WalletModelCopyWith<$Res>(_self.wallet!, (value) {
    return _then(_self.copyWith(wallet: value));
  });
}
}


/// @nodoc
mixin _$ShipperProfileModel {

 String? get id; String? get companyName; String? get tinNumber; String? get businessType; String? get address; String? get city; String? get region; int get totalShipments; double get rating;
/// Create a copy of ShipperProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShipperProfileModelCopyWith<ShipperProfileModel> get copyWith => _$ShipperProfileModelCopyWithImpl<ShipperProfileModel>(this as ShipperProfileModel, _$identity);

  /// Serializes this ShipperProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShipperProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.tinNumber, tinNumber) || other.tinNumber == tinNumber)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.region, region) || other.region == region)&&(identical(other.totalShipments, totalShipments) || other.totalShipments == totalShipments)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,tinNumber,businessType,address,city,region,totalShipments,rating);

@override
String toString() {
  return 'ShipperProfileModel(id: $id, companyName: $companyName, tinNumber: $tinNumber, businessType: $businessType, address: $address, city: $city, region: $region, totalShipments: $totalShipments, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $ShipperProfileModelCopyWith<$Res>  {
  factory $ShipperProfileModelCopyWith(ShipperProfileModel value, $Res Function(ShipperProfileModel) _then) = _$ShipperProfileModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? companyName, String? tinNumber, String? businessType, String? address, String? city, String? region, int totalShipments, double rating
});




}
/// @nodoc
class _$ShipperProfileModelCopyWithImpl<$Res>
    implements $ShipperProfileModelCopyWith<$Res> {
  _$ShipperProfileModelCopyWithImpl(this._self, this._then);

  final ShipperProfileModel _self;
  final $Res Function(ShipperProfileModel) _then;

/// Create a copy of ShipperProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? companyName = freezed,Object? tinNumber = freezed,Object? businessType = freezed,Object? address = freezed,Object? city = freezed,Object? region = freezed,Object? totalShipments = null,Object? rating = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,tinNumber: freezed == tinNumber ? _self.tinNumber : tinNumber // ignore: cast_nullable_to_non_nullable
as String?,businessType: freezed == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,totalShipments: null == totalShipments ? _self.totalShipments : totalShipments // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ShipperProfileModel].
extension ShipperProfileModelPatterns on ShipperProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShipperProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShipperProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShipperProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ShipperProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShipperProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShipperProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? companyName,  String? tinNumber,  String? businessType,  String? address,  String? city,  String? region,  int totalShipments,  double rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShipperProfileModel() when $default != null:
return $default(_that.id,_that.companyName,_that.tinNumber,_that.businessType,_that.address,_that.city,_that.region,_that.totalShipments,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? companyName,  String? tinNumber,  String? businessType,  String? address,  String? city,  String? region,  int totalShipments,  double rating)  $default,) {final _that = this;
switch (_that) {
case _ShipperProfileModel():
return $default(_that.id,_that.companyName,_that.tinNumber,_that.businessType,_that.address,_that.city,_that.region,_that.totalShipments,_that.rating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? companyName,  String? tinNumber,  String? businessType,  String? address,  String? city,  String? region,  int totalShipments,  double rating)?  $default,) {final _that = this;
switch (_that) {
case _ShipperProfileModel() when $default != null:
return $default(_that.id,_that.companyName,_that.tinNumber,_that.businessType,_that.address,_that.city,_that.region,_that.totalShipments,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShipperProfileModel implements ShipperProfileModel {
  const _ShipperProfileModel({this.id, this.companyName, this.tinNumber, this.businessType, this.address, this.city, this.region, this.totalShipments = 0, this.rating = 0.0});
  factory _ShipperProfileModel.fromJson(Map<String, dynamic> json) => _$ShipperProfileModelFromJson(json);

@override final  String? id;
@override final  String? companyName;
@override final  String? tinNumber;
@override final  String? businessType;
@override final  String? address;
@override final  String? city;
@override final  String? region;
@override@JsonKey() final  int totalShipments;
@override@JsonKey() final  double rating;

/// Create a copy of ShipperProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShipperProfileModelCopyWith<_ShipperProfileModel> get copyWith => __$ShipperProfileModelCopyWithImpl<_ShipperProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShipperProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShipperProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.tinNumber, tinNumber) || other.tinNumber == tinNumber)&&(identical(other.businessType, businessType) || other.businessType == businessType)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.region, region) || other.region == region)&&(identical(other.totalShipments, totalShipments) || other.totalShipments == totalShipments)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,tinNumber,businessType,address,city,region,totalShipments,rating);

@override
String toString() {
  return 'ShipperProfileModel(id: $id, companyName: $companyName, tinNumber: $tinNumber, businessType: $businessType, address: $address, city: $city, region: $region, totalShipments: $totalShipments, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$ShipperProfileModelCopyWith<$Res> implements $ShipperProfileModelCopyWith<$Res> {
  factory _$ShipperProfileModelCopyWith(_ShipperProfileModel value, $Res Function(_ShipperProfileModel) _then) = __$ShipperProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? companyName, String? tinNumber, String? businessType, String? address, String? city, String? region, int totalShipments, double rating
});




}
/// @nodoc
class __$ShipperProfileModelCopyWithImpl<$Res>
    implements _$ShipperProfileModelCopyWith<$Res> {
  __$ShipperProfileModelCopyWithImpl(this._self, this._then);

  final _ShipperProfileModel _self;
  final $Res Function(_ShipperProfileModel) _then;

/// Create a copy of ShipperProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? companyName = freezed,Object? tinNumber = freezed,Object? businessType = freezed,Object? address = freezed,Object? city = freezed,Object? region = freezed,Object? totalShipments = null,Object? rating = null,}) {
  return _then(_ShipperProfileModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,tinNumber: freezed == tinNumber ? _self.tinNumber : tinNumber // ignore: cast_nullable_to_non_nullable
as String?,businessType: freezed == businessType ? _self.businessType : businessType // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,totalShipments: null == totalShipments ? _self.totalShipments : totalShipments // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DriverProfileModel {

 String? get id; String? get licenseNumber; DateTime? get licenseExpiry; String? get licenseType; String? get vehicleType; double? get vehicleCapacity; String? get vehiclePlate; int get totalDeliveries; double get rating; double get onTimeRate; bool get isAvailable; String? get currentLocation;
/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverProfileModelCopyWith<DriverProfileModel> get copyWith => _$DriverProfileModelCopyWithImpl<DriverProfileModel>(this as DriverProfileModel, _$identity);

  /// Serializes this DriverProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.licenseExpiry, licenseExpiry) || other.licenseExpiry == licenseExpiry)&&(identical(other.licenseType, licenseType) || other.licenseType == licenseType)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.vehicleCapacity, vehicleCapacity) || other.vehicleCapacity == vehicleCapacity)&&(identical(other.vehiclePlate, vehiclePlate) || other.vehiclePlate == vehiclePlate)&&(identical(other.totalDeliveries, totalDeliveries) || other.totalDeliveries == totalDeliveries)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.onTimeRate, onTimeRate) || other.onTimeRate == onTimeRate)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,licenseNumber,licenseExpiry,licenseType,vehicleType,vehicleCapacity,vehiclePlate,totalDeliveries,rating,onTimeRate,isAvailable,currentLocation);

@override
String toString() {
  return 'DriverProfileModel(id: $id, licenseNumber: $licenseNumber, licenseExpiry: $licenseExpiry, licenseType: $licenseType, vehicleType: $vehicleType, vehicleCapacity: $vehicleCapacity, vehiclePlate: $vehiclePlate, totalDeliveries: $totalDeliveries, rating: $rating, onTimeRate: $onTimeRate, isAvailable: $isAvailable, currentLocation: $currentLocation)';
}


}

/// @nodoc
abstract mixin class $DriverProfileModelCopyWith<$Res>  {
  factory $DriverProfileModelCopyWith(DriverProfileModel value, $Res Function(DriverProfileModel) _then) = _$DriverProfileModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? licenseNumber, DateTime? licenseExpiry, String? licenseType, String? vehicleType, double? vehicleCapacity, String? vehiclePlate, int totalDeliveries, double rating, double onTimeRate, bool isAvailable, String? currentLocation
});




}
/// @nodoc
class _$DriverProfileModelCopyWithImpl<$Res>
    implements $DriverProfileModelCopyWith<$Res> {
  _$DriverProfileModelCopyWithImpl(this._self, this._then);

  final DriverProfileModel _self;
  final $Res Function(DriverProfileModel) _then;

/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? licenseNumber = freezed,Object? licenseExpiry = freezed,Object? licenseType = freezed,Object? vehicleType = freezed,Object? vehicleCapacity = freezed,Object? vehiclePlate = freezed,Object? totalDeliveries = null,Object? rating = null,Object? onTimeRate = null,Object? isAvailable = null,Object? currentLocation = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,licenseExpiry: freezed == licenseExpiry ? _self.licenseExpiry : licenseExpiry // ignore: cast_nullable_to_non_nullable
as DateTime?,licenseType: freezed == licenseType ? _self.licenseType : licenseType // ignore: cast_nullable_to_non_nullable
as String?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,vehicleCapacity: freezed == vehicleCapacity ? _self.vehicleCapacity : vehicleCapacity // ignore: cast_nullable_to_non_nullable
as double?,vehiclePlate: freezed == vehiclePlate ? _self.vehiclePlate : vehiclePlate // ignore: cast_nullable_to_non_nullable
as String?,totalDeliveries: null == totalDeliveries ? _self.totalDeliveries : totalDeliveries // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,onTimeRate: null == onTimeRate ? _self.onTimeRate : onTimeRate // ignore: cast_nullable_to_non_nullable
as double,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverProfileModel].
extension DriverProfileModelPatterns on DriverProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _DriverProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? licenseNumber,  DateTime? licenseExpiry,  String? licenseType,  String? vehicleType,  double? vehicleCapacity,  String? vehiclePlate,  int totalDeliveries,  double rating,  double onTimeRate,  bool isAvailable,  String? currentLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
return $default(_that.id,_that.licenseNumber,_that.licenseExpiry,_that.licenseType,_that.vehicleType,_that.vehicleCapacity,_that.vehiclePlate,_that.totalDeliveries,_that.rating,_that.onTimeRate,_that.isAvailable,_that.currentLocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? licenseNumber,  DateTime? licenseExpiry,  String? licenseType,  String? vehicleType,  double? vehicleCapacity,  String? vehiclePlate,  int totalDeliveries,  double rating,  double onTimeRate,  bool isAvailable,  String? currentLocation)  $default,) {final _that = this;
switch (_that) {
case _DriverProfileModel():
return $default(_that.id,_that.licenseNumber,_that.licenseExpiry,_that.licenseType,_that.vehicleType,_that.vehicleCapacity,_that.vehiclePlate,_that.totalDeliveries,_that.rating,_that.onTimeRate,_that.isAvailable,_that.currentLocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? licenseNumber,  DateTime? licenseExpiry,  String? licenseType,  String? vehicleType,  double? vehicleCapacity,  String? vehiclePlate,  int totalDeliveries,  double rating,  double onTimeRate,  bool isAvailable,  String? currentLocation)?  $default,) {final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
return $default(_that.id,_that.licenseNumber,_that.licenseExpiry,_that.licenseType,_that.vehicleType,_that.vehicleCapacity,_that.vehiclePlate,_that.totalDeliveries,_that.rating,_that.onTimeRate,_that.isAvailable,_that.currentLocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverProfileModel implements DriverProfileModel {
  const _DriverProfileModel({this.id, this.licenseNumber, this.licenseExpiry, this.licenseType, this.vehicleType, this.vehicleCapacity, this.vehiclePlate, this.totalDeliveries = 0, this.rating = 0.0, this.onTimeRate = 0.0, this.isAvailable = true, this.currentLocation});
  factory _DriverProfileModel.fromJson(Map<String, dynamic> json) => _$DriverProfileModelFromJson(json);

@override final  String? id;
@override final  String? licenseNumber;
@override final  DateTime? licenseExpiry;
@override final  String? licenseType;
@override final  String? vehicleType;
@override final  double? vehicleCapacity;
@override final  String? vehiclePlate;
@override@JsonKey() final  int totalDeliveries;
@override@JsonKey() final  double rating;
@override@JsonKey() final  double onTimeRate;
@override@JsonKey() final  bool isAvailable;
@override final  String? currentLocation;

/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverProfileModelCopyWith<_DriverProfileModel> get copyWith => __$DriverProfileModelCopyWithImpl<_DriverProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.licenseExpiry, licenseExpiry) || other.licenseExpiry == licenseExpiry)&&(identical(other.licenseType, licenseType) || other.licenseType == licenseType)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.vehicleCapacity, vehicleCapacity) || other.vehicleCapacity == vehicleCapacity)&&(identical(other.vehiclePlate, vehiclePlate) || other.vehiclePlate == vehiclePlate)&&(identical(other.totalDeliveries, totalDeliveries) || other.totalDeliveries == totalDeliveries)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.onTimeRate, onTimeRate) || other.onTimeRate == onTimeRate)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,licenseNumber,licenseExpiry,licenseType,vehicleType,vehicleCapacity,vehiclePlate,totalDeliveries,rating,onTimeRate,isAvailable,currentLocation);

@override
String toString() {
  return 'DriverProfileModel(id: $id, licenseNumber: $licenseNumber, licenseExpiry: $licenseExpiry, licenseType: $licenseType, vehicleType: $vehicleType, vehicleCapacity: $vehicleCapacity, vehiclePlate: $vehiclePlate, totalDeliveries: $totalDeliveries, rating: $rating, onTimeRate: $onTimeRate, isAvailable: $isAvailable, currentLocation: $currentLocation)';
}


}

/// @nodoc
abstract mixin class _$DriverProfileModelCopyWith<$Res> implements $DriverProfileModelCopyWith<$Res> {
  factory _$DriverProfileModelCopyWith(_DriverProfileModel value, $Res Function(_DriverProfileModel) _then) = __$DriverProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? licenseNumber, DateTime? licenseExpiry, String? licenseType, String? vehicleType, double? vehicleCapacity, String? vehiclePlate, int totalDeliveries, double rating, double onTimeRate, bool isAvailable, String? currentLocation
});




}
/// @nodoc
class __$DriverProfileModelCopyWithImpl<$Res>
    implements _$DriverProfileModelCopyWith<$Res> {
  __$DriverProfileModelCopyWithImpl(this._self, this._then);

  final _DriverProfileModel _self;
  final $Res Function(_DriverProfileModel) _then;

/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? licenseNumber = freezed,Object? licenseExpiry = freezed,Object? licenseType = freezed,Object? vehicleType = freezed,Object? vehicleCapacity = freezed,Object? vehiclePlate = freezed,Object? totalDeliveries = null,Object? rating = null,Object? onTimeRate = null,Object? isAvailable = null,Object? currentLocation = freezed,}) {
  return _then(_DriverProfileModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,licenseExpiry: freezed == licenseExpiry ? _self.licenseExpiry : licenseExpiry // ignore: cast_nullable_to_non_nullable
as DateTime?,licenseType: freezed == licenseType ? _self.licenseType : licenseType // ignore: cast_nullable_to_non_nullable
as String?,vehicleType: freezed == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String?,vehicleCapacity: freezed == vehicleCapacity ? _self.vehicleCapacity : vehicleCapacity // ignore: cast_nullable_to_non_nullable
as double?,vehiclePlate: freezed == vehiclePlate ? _self.vehiclePlate : vehiclePlate // ignore: cast_nullable_to_non_nullable
as String?,totalDeliveries: null == totalDeliveries ? _self.totalDeliveries : totalDeliveries // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,onTimeRate: null == onTimeRate ? _self.onTimeRate : onTimeRate // ignore: cast_nullable_to_non_nullable
as double,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FleetOwnerProfileModel {

 String? get id; String? get companyName; int get fleetSize;
/// Create a copy of FleetOwnerProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetOwnerProfileModelCopyWith<FleetOwnerProfileModel> get copyWith => _$FleetOwnerProfileModelCopyWithImpl<FleetOwnerProfileModel>(this as FleetOwnerProfileModel, _$identity);

  /// Serializes this FleetOwnerProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetOwnerProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.fleetSize, fleetSize) || other.fleetSize == fleetSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,fleetSize);

@override
String toString() {
  return 'FleetOwnerProfileModel(id: $id, companyName: $companyName, fleetSize: $fleetSize)';
}


}

/// @nodoc
abstract mixin class $FleetOwnerProfileModelCopyWith<$Res>  {
  factory $FleetOwnerProfileModelCopyWith(FleetOwnerProfileModel value, $Res Function(FleetOwnerProfileModel) _then) = _$FleetOwnerProfileModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? companyName, int fleetSize
});




}
/// @nodoc
class _$FleetOwnerProfileModelCopyWithImpl<$Res>
    implements $FleetOwnerProfileModelCopyWith<$Res> {
  _$FleetOwnerProfileModelCopyWithImpl(this._self, this._then);

  final FleetOwnerProfileModel _self;
  final $Res Function(FleetOwnerProfileModel) _then;

/// Create a copy of FleetOwnerProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? companyName = freezed,Object? fleetSize = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,fleetSize: null == fleetSize ? _self.fleetSize : fleetSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FleetOwnerProfileModel].
extension FleetOwnerProfileModelPatterns on FleetOwnerProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetOwnerProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetOwnerProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetOwnerProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _FleetOwnerProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetOwnerProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _FleetOwnerProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? companyName,  int fleetSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetOwnerProfileModel() when $default != null:
return $default(_that.id,_that.companyName,_that.fleetSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? companyName,  int fleetSize)  $default,) {final _that = this;
switch (_that) {
case _FleetOwnerProfileModel():
return $default(_that.id,_that.companyName,_that.fleetSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? companyName,  int fleetSize)?  $default,) {final _that = this;
switch (_that) {
case _FleetOwnerProfileModel() when $default != null:
return $default(_that.id,_that.companyName,_that.fleetSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetOwnerProfileModel implements FleetOwnerProfileModel {
  const _FleetOwnerProfileModel({this.id, this.companyName, this.fleetSize = 0});
  factory _FleetOwnerProfileModel.fromJson(Map<String, dynamic> json) => _$FleetOwnerProfileModelFromJson(json);

@override final  String? id;
@override final  String? companyName;
@override@JsonKey() final  int fleetSize;

/// Create a copy of FleetOwnerProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetOwnerProfileModelCopyWith<_FleetOwnerProfileModel> get copyWith => __$FleetOwnerProfileModelCopyWithImpl<_FleetOwnerProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetOwnerProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetOwnerProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.fleetSize, fleetSize) || other.fleetSize == fleetSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyName,fleetSize);

@override
String toString() {
  return 'FleetOwnerProfileModel(id: $id, companyName: $companyName, fleetSize: $fleetSize)';
}


}

/// @nodoc
abstract mixin class _$FleetOwnerProfileModelCopyWith<$Res> implements $FleetOwnerProfileModelCopyWith<$Res> {
  factory _$FleetOwnerProfileModelCopyWith(_FleetOwnerProfileModel value, $Res Function(_FleetOwnerProfileModel) _then) = __$FleetOwnerProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? companyName, int fleetSize
});




}
/// @nodoc
class __$FleetOwnerProfileModelCopyWithImpl<$Res>
    implements _$FleetOwnerProfileModelCopyWith<$Res> {
  __$FleetOwnerProfileModelCopyWithImpl(this._self, this._then);

  final _FleetOwnerProfileModel _self;
  final $Res Function(_FleetOwnerProfileModel) _then;

/// Create a copy of FleetOwnerProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? companyName = freezed,Object? fleetSize = null,}) {
  return _then(_FleetOwnerProfileModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,fleetSize: null == fleetSize ? _self.fleetSize : fleetSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WalletModel {

 String? get id; double get balance; String get currency;
/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletModelCopyWith<WalletModel> get copyWith => _$WalletModelCopyWithImpl<WalletModel>(this as WalletModel, _$identity);

  /// Serializes this WalletModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletModel&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,balance,currency);

@override
String toString() {
  return 'WalletModel(id: $id, balance: $balance, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $WalletModelCopyWith<$Res>  {
  factory $WalletModelCopyWith(WalletModel value, $Res Function(WalletModel) _then) = _$WalletModelCopyWithImpl;
@useResult
$Res call({
 String? id, double balance, String currency
});




}
/// @nodoc
class _$WalletModelCopyWithImpl<$Res>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._self, this._then);

  final WalletModel _self;
  final $Res Function(WalletModel) _then;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? balance = null,Object? currency = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletModel].
extension WalletModelPatterns on WalletModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletModel value)  $default,){
final _that = this;
switch (_that) {
case _WalletModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletModel value)?  $default,){
final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  double balance,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
return $default(_that.id,_that.balance,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  double balance,  String currency)  $default,) {final _that = this;
switch (_that) {
case _WalletModel():
return $default(_that.id,_that.balance,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  double balance,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
return $default(_that.id,_that.balance,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletModel implements WalletModel {
  const _WalletModel({this.id, this.balance = 0.0, this.currency = 'ETB'});
  factory _WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);

@override final  String? id;
@override@JsonKey() final  double balance;
@override@JsonKey() final  String currency;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletModelCopyWith<_WalletModel> get copyWith => __$WalletModelCopyWithImpl<_WalletModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletModel&&(identical(other.id, id) || other.id == id)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,balance,currency);

@override
String toString() {
  return 'WalletModel(id: $id, balance: $balance, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$WalletModelCopyWith<$Res> implements $WalletModelCopyWith<$Res> {
  factory _$WalletModelCopyWith(_WalletModel value, $Res Function(_WalletModel) _then) = __$WalletModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, double balance, String currency
});




}
/// @nodoc
class __$WalletModelCopyWithImpl<$Res>
    implements _$WalletModelCopyWith<$Res> {
  __$WalletModelCopyWithImpl(this._self, this._then);

  final _WalletModel _self;
  final $Res Function(_WalletModel) _then;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? balance = null,Object? currency = null,}) {
  return _then(_WalletModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
