// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_checklist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateChecklistState {

 String get message; LoadingStatus get createNewCheckListStatus; String get checkListName; String get description;//update
 LoadingStatus get upadeCheckListStatus;//delete
 LoadingStatus get deleteCheckListStatus;
/// Create a copy of CreateChecklistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateChecklistStateCopyWith<CreateChecklistState> get copyWith => _$CreateChecklistStateCopyWithImpl<CreateChecklistState>(this as CreateChecklistState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChecklistState&&(identical(other.message, message) || other.message == message)&&(identical(other.createNewCheckListStatus, createNewCheckListStatus) || other.createNewCheckListStatus == createNewCheckListStatus)&&(identical(other.checkListName, checkListName) || other.checkListName == checkListName)&&(identical(other.description, description) || other.description == description)&&(identical(other.upadeCheckListStatus, upadeCheckListStatus) || other.upadeCheckListStatus == upadeCheckListStatus)&&(identical(other.deleteCheckListStatus, deleteCheckListStatus) || other.deleteCheckListStatus == deleteCheckListStatus));
}


@override
int get hashCode => Object.hash(runtimeType,message,createNewCheckListStatus,checkListName,description,upadeCheckListStatus,deleteCheckListStatus);

@override
String toString() {
  return 'CreateChecklistState(message: $message, createNewCheckListStatus: $createNewCheckListStatus, checkListName: $checkListName, description: $description, upadeCheckListStatus: $upadeCheckListStatus, deleteCheckListStatus: $deleteCheckListStatus)';
}


}

/// @nodoc
abstract mixin class $CreateChecklistStateCopyWith<$Res>  {
  factory $CreateChecklistStateCopyWith(CreateChecklistState value, $Res Function(CreateChecklistState) _then) = _$CreateChecklistStateCopyWithImpl;
@useResult
$Res call({
 String message, LoadingStatus createNewCheckListStatus, String checkListName, String description, LoadingStatus upadeCheckListStatus, LoadingStatus deleteCheckListStatus
});




}
/// @nodoc
class _$CreateChecklistStateCopyWithImpl<$Res>
    implements $CreateChecklistStateCopyWith<$Res> {
  _$CreateChecklistStateCopyWithImpl(this._self, this._then);

  final CreateChecklistState _self;
  final $Res Function(CreateChecklistState) _then;

/// Create a copy of CreateChecklistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? createNewCheckListStatus = null,Object? checkListName = null,Object? description = null,Object? upadeCheckListStatus = null,Object? deleteCheckListStatus = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,createNewCheckListStatus: null == createNewCheckListStatus ? _self.createNewCheckListStatus : createNewCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checkListName: null == checkListName ? _self.checkListName : checkListName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,upadeCheckListStatus: null == upadeCheckListStatus ? _self.upadeCheckListStatus : upadeCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,deleteCheckListStatus: null == deleteCheckListStatus ? _self.deleteCheckListStatus : deleteCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateChecklistState].
extension CreateChecklistStatePatterns on CreateChecklistState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateChecklistState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateChecklistState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateChecklistState value)  $default,){
final _that = this;
switch (_that) {
case _CreateChecklistState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateChecklistState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateChecklistState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  LoadingStatus createNewCheckListStatus,  String checkListName,  String description,  LoadingStatus upadeCheckListStatus,  LoadingStatus deleteCheckListStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateChecklistState() when $default != null:
return $default(_that.message,_that.createNewCheckListStatus,_that.checkListName,_that.description,_that.upadeCheckListStatus,_that.deleteCheckListStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  LoadingStatus createNewCheckListStatus,  String checkListName,  String description,  LoadingStatus upadeCheckListStatus,  LoadingStatus deleteCheckListStatus)  $default,) {final _that = this;
switch (_that) {
case _CreateChecklistState():
return $default(_that.message,_that.createNewCheckListStatus,_that.checkListName,_that.description,_that.upadeCheckListStatus,_that.deleteCheckListStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  LoadingStatus createNewCheckListStatus,  String checkListName,  String description,  LoadingStatus upadeCheckListStatus,  LoadingStatus deleteCheckListStatus)?  $default,) {final _that = this;
switch (_that) {
case _CreateChecklistState() when $default != null:
return $default(_that.message,_that.createNewCheckListStatus,_that.checkListName,_that.description,_that.upadeCheckListStatus,_that.deleteCheckListStatus);case _:
  return null;

}
}

}

/// @nodoc


class _CreateChecklistState implements CreateChecklistState {
  const _CreateChecklistState({required this.message, required this.createNewCheckListStatus, required this.checkListName, required this.description, required this.upadeCheckListStatus, required this.deleteCheckListStatus});
  

@override final  String message;
@override final  LoadingStatus createNewCheckListStatus;
@override final  String checkListName;
@override final  String description;
//update
@override final  LoadingStatus upadeCheckListStatus;
//delete
@override final  LoadingStatus deleteCheckListStatus;

/// Create a copy of CreateChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateChecklistStateCopyWith<_CreateChecklistState> get copyWith => __$CreateChecklistStateCopyWithImpl<_CreateChecklistState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateChecklistState&&(identical(other.message, message) || other.message == message)&&(identical(other.createNewCheckListStatus, createNewCheckListStatus) || other.createNewCheckListStatus == createNewCheckListStatus)&&(identical(other.checkListName, checkListName) || other.checkListName == checkListName)&&(identical(other.description, description) || other.description == description)&&(identical(other.upadeCheckListStatus, upadeCheckListStatus) || other.upadeCheckListStatus == upadeCheckListStatus)&&(identical(other.deleteCheckListStatus, deleteCheckListStatus) || other.deleteCheckListStatus == deleteCheckListStatus));
}


@override
int get hashCode => Object.hash(runtimeType,message,createNewCheckListStatus,checkListName,description,upadeCheckListStatus,deleteCheckListStatus);

@override
String toString() {
  return 'CreateChecklistState(message: $message, createNewCheckListStatus: $createNewCheckListStatus, checkListName: $checkListName, description: $description, upadeCheckListStatus: $upadeCheckListStatus, deleteCheckListStatus: $deleteCheckListStatus)';
}


}

/// @nodoc
abstract mixin class _$CreateChecklistStateCopyWith<$Res> implements $CreateChecklistStateCopyWith<$Res> {
  factory _$CreateChecklistStateCopyWith(_CreateChecklistState value, $Res Function(_CreateChecklistState) _then) = __$CreateChecklistStateCopyWithImpl;
@override @useResult
$Res call({
 String message, LoadingStatus createNewCheckListStatus, String checkListName, String description, LoadingStatus upadeCheckListStatus, LoadingStatus deleteCheckListStatus
});




}
/// @nodoc
class __$CreateChecklistStateCopyWithImpl<$Res>
    implements _$CreateChecklistStateCopyWith<$Res> {
  __$CreateChecklistStateCopyWithImpl(this._self, this._then);

  final _CreateChecklistState _self;
  final $Res Function(_CreateChecklistState) _then;

/// Create a copy of CreateChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? createNewCheckListStatus = null,Object? checkListName = null,Object? description = null,Object? upadeCheckListStatus = null,Object? deleteCheckListStatus = null,}) {
  return _then(_CreateChecklistState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,createNewCheckListStatus: null == createNewCheckListStatus ? _self.createNewCheckListStatus : createNewCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checkListName: null == checkListName ? _self.checkListName : checkListName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,upadeCheckListStatus: null == upadeCheckListStatus ? _self.upadeCheckListStatus : upadeCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,deleteCheckListStatus: null == deleteCheckListStatus ? _self.deleteCheckListStatus : deleteCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,
  ));
}


}

// dart format on
