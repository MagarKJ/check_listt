// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_check_list_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCheckListItemState {

 String get message; String get name; LoadingStatus get createCheckListItemStatus;//edit
 LoadingStatus get updateCheckListItemNameStatus; LoadingStatus get updateCheckListItemCheckStatus;//delete
 LoadingStatus get deleteCheckListItemStatus;
/// Create a copy of CreateCheckListItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCheckListItemStateCopyWith<CreateCheckListItemState> get copyWith => _$CreateCheckListItemStateCopyWithImpl<CreateCheckListItemState>(this as CreateCheckListItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCheckListItemState&&(identical(other.message, message) || other.message == message)&&(identical(other.name, name) || other.name == name)&&(identical(other.createCheckListItemStatus, createCheckListItemStatus) || other.createCheckListItemStatus == createCheckListItemStatus)&&(identical(other.updateCheckListItemNameStatus, updateCheckListItemNameStatus) || other.updateCheckListItemNameStatus == updateCheckListItemNameStatus)&&(identical(other.updateCheckListItemCheckStatus, updateCheckListItemCheckStatus) || other.updateCheckListItemCheckStatus == updateCheckListItemCheckStatus)&&(identical(other.deleteCheckListItemStatus, deleteCheckListItemStatus) || other.deleteCheckListItemStatus == deleteCheckListItemStatus));
}


@override
int get hashCode => Object.hash(runtimeType,message,name,createCheckListItemStatus,updateCheckListItemNameStatus,updateCheckListItemCheckStatus,deleteCheckListItemStatus);

@override
String toString() {
  return 'CreateCheckListItemState(message: $message, name: $name, createCheckListItemStatus: $createCheckListItemStatus, updateCheckListItemNameStatus: $updateCheckListItemNameStatus, updateCheckListItemCheckStatus: $updateCheckListItemCheckStatus, deleteCheckListItemStatus: $deleteCheckListItemStatus)';
}


}

/// @nodoc
abstract mixin class $CreateCheckListItemStateCopyWith<$Res>  {
  factory $CreateCheckListItemStateCopyWith(CreateCheckListItemState value, $Res Function(CreateCheckListItemState) _then) = _$CreateCheckListItemStateCopyWithImpl;
@useResult
$Res call({
 String message, String name, LoadingStatus createCheckListItemStatus, LoadingStatus updateCheckListItemNameStatus, LoadingStatus updateCheckListItemCheckStatus, LoadingStatus deleteCheckListItemStatus
});




}
/// @nodoc
class _$CreateCheckListItemStateCopyWithImpl<$Res>
    implements $CreateCheckListItemStateCopyWith<$Res> {
  _$CreateCheckListItemStateCopyWithImpl(this._self, this._then);

  final CreateCheckListItemState _self;
  final $Res Function(CreateCheckListItemState) _then;

/// Create a copy of CreateCheckListItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? name = null,Object? createCheckListItemStatus = null,Object? updateCheckListItemNameStatus = null,Object? updateCheckListItemCheckStatus = null,Object? deleteCheckListItemStatus = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createCheckListItemStatus: null == createCheckListItemStatus ? _self.createCheckListItemStatus : createCheckListItemStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,updateCheckListItemNameStatus: null == updateCheckListItemNameStatus ? _self.updateCheckListItemNameStatus : updateCheckListItemNameStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,updateCheckListItemCheckStatus: null == updateCheckListItemCheckStatus ? _self.updateCheckListItemCheckStatus : updateCheckListItemCheckStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,deleteCheckListItemStatus: null == deleteCheckListItemStatus ? _self.deleteCheckListItemStatus : deleteCheckListItemStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCheckListItemState].
extension CreateCheckListItemStatePatterns on CreateCheckListItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCheckListItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCheckListItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCheckListItemState value)  $default,){
final _that = this;
switch (_that) {
case _CreateCheckListItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCheckListItemState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCheckListItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String name,  LoadingStatus createCheckListItemStatus,  LoadingStatus updateCheckListItemNameStatus,  LoadingStatus updateCheckListItemCheckStatus,  LoadingStatus deleteCheckListItemStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCheckListItemState() when $default != null:
return $default(_that.message,_that.name,_that.createCheckListItemStatus,_that.updateCheckListItemNameStatus,_that.updateCheckListItemCheckStatus,_that.deleteCheckListItemStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String name,  LoadingStatus createCheckListItemStatus,  LoadingStatus updateCheckListItemNameStatus,  LoadingStatus updateCheckListItemCheckStatus,  LoadingStatus deleteCheckListItemStatus)  $default,) {final _that = this;
switch (_that) {
case _CreateCheckListItemState():
return $default(_that.message,_that.name,_that.createCheckListItemStatus,_that.updateCheckListItemNameStatus,_that.updateCheckListItemCheckStatus,_that.deleteCheckListItemStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String name,  LoadingStatus createCheckListItemStatus,  LoadingStatus updateCheckListItemNameStatus,  LoadingStatus updateCheckListItemCheckStatus,  LoadingStatus deleteCheckListItemStatus)?  $default,) {final _that = this;
switch (_that) {
case _CreateCheckListItemState() when $default != null:
return $default(_that.message,_that.name,_that.createCheckListItemStatus,_that.updateCheckListItemNameStatus,_that.updateCheckListItemCheckStatus,_that.deleteCheckListItemStatus);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCheckListItemState implements CreateCheckListItemState {
  const _CreateCheckListItemState({required this.message, required this.name, required this.createCheckListItemStatus, required this.updateCheckListItemNameStatus, required this.updateCheckListItemCheckStatus, required this.deleteCheckListItemStatus});
  

@override final  String message;
@override final  String name;
@override final  LoadingStatus createCheckListItemStatus;
//edit
@override final  LoadingStatus updateCheckListItemNameStatus;
@override final  LoadingStatus updateCheckListItemCheckStatus;
//delete
@override final  LoadingStatus deleteCheckListItemStatus;

/// Create a copy of CreateCheckListItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCheckListItemStateCopyWith<_CreateCheckListItemState> get copyWith => __$CreateCheckListItemStateCopyWithImpl<_CreateCheckListItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCheckListItemState&&(identical(other.message, message) || other.message == message)&&(identical(other.name, name) || other.name == name)&&(identical(other.createCheckListItemStatus, createCheckListItemStatus) || other.createCheckListItemStatus == createCheckListItemStatus)&&(identical(other.updateCheckListItemNameStatus, updateCheckListItemNameStatus) || other.updateCheckListItemNameStatus == updateCheckListItemNameStatus)&&(identical(other.updateCheckListItemCheckStatus, updateCheckListItemCheckStatus) || other.updateCheckListItemCheckStatus == updateCheckListItemCheckStatus)&&(identical(other.deleteCheckListItemStatus, deleteCheckListItemStatus) || other.deleteCheckListItemStatus == deleteCheckListItemStatus));
}


@override
int get hashCode => Object.hash(runtimeType,message,name,createCheckListItemStatus,updateCheckListItemNameStatus,updateCheckListItemCheckStatus,deleteCheckListItemStatus);

@override
String toString() {
  return 'CreateCheckListItemState(message: $message, name: $name, createCheckListItemStatus: $createCheckListItemStatus, updateCheckListItemNameStatus: $updateCheckListItemNameStatus, updateCheckListItemCheckStatus: $updateCheckListItemCheckStatus, deleteCheckListItemStatus: $deleteCheckListItemStatus)';
}


}

/// @nodoc
abstract mixin class _$CreateCheckListItemStateCopyWith<$Res> implements $CreateCheckListItemStateCopyWith<$Res> {
  factory _$CreateCheckListItemStateCopyWith(_CreateCheckListItemState value, $Res Function(_CreateCheckListItemState) _then) = __$CreateCheckListItemStateCopyWithImpl;
@override @useResult
$Res call({
 String message, String name, LoadingStatus createCheckListItemStatus, LoadingStatus updateCheckListItemNameStatus, LoadingStatus updateCheckListItemCheckStatus, LoadingStatus deleteCheckListItemStatus
});




}
/// @nodoc
class __$CreateCheckListItemStateCopyWithImpl<$Res>
    implements _$CreateCheckListItemStateCopyWith<$Res> {
  __$CreateCheckListItemStateCopyWithImpl(this._self, this._then);

  final _CreateCheckListItemState _self;
  final $Res Function(_CreateCheckListItemState) _then;

/// Create a copy of CreateCheckListItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? name = null,Object? createCheckListItemStatus = null,Object? updateCheckListItemNameStatus = null,Object? updateCheckListItemCheckStatus = null,Object? deleteCheckListItemStatus = null,}) {
  return _then(_CreateCheckListItemState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createCheckListItemStatus: null == createCheckListItemStatus ? _self.createCheckListItemStatus : createCheckListItemStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,updateCheckListItemNameStatus: null == updateCheckListItemNameStatus ? _self.updateCheckListItemNameStatus : updateCheckListItemNameStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,updateCheckListItemCheckStatus: null == updateCheckListItemCheckStatus ? _self.updateCheckListItemCheckStatus : updateCheckListItemCheckStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,deleteCheckListItemStatus: null == deleteCheckListItemStatus ? _self.deleteCheckListItemStatus : deleteCheckListItemStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,
  ));
}


}

// dart format on
