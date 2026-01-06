// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_new_checklist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateNewChecklistState {

 String get message; LoadingStatus get createNewCheckListStatus; String get checkListName; String get description;
/// Create a copy of CreateNewChecklistState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNewChecklistStateCopyWith<CreateNewChecklistState> get copyWith => _$CreateNewChecklistStateCopyWithImpl<CreateNewChecklistState>(this as CreateNewChecklistState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewChecklistState&&(identical(other.message, message) || other.message == message)&&(identical(other.createNewCheckListStatus, createNewCheckListStatus) || other.createNewCheckListStatus == createNewCheckListStatus)&&(identical(other.checkListName, checkListName) || other.checkListName == checkListName)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,message,createNewCheckListStatus,checkListName,description);

@override
String toString() {
  return 'CreateNewChecklistState(message: $message, createNewCheckListStatus: $createNewCheckListStatus, checkListName: $checkListName, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreateNewChecklistStateCopyWith<$Res>  {
  factory $CreateNewChecklistStateCopyWith(CreateNewChecklistState value, $Res Function(CreateNewChecklistState) _then) = _$CreateNewChecklistStateCopyWithImpl;
@useResult
$Res call({
 String message, LoadingStatus createNewCheckListStatus, String checkListName, String description
});




}
/// @nodoc
class _$CreateNewChecklistStateCopyWithImpl<$Res>
    implements $CreateNewChecklistStateCopyWith<$Res> {
  _$CreateNewChecklistStateCopyWithImpl(this._self, this._then);

  final CreateNewChecklistState _self;
  final $Res Function(CreateNewChecklistState) _then;

/// Create a copy of CreateNewChecklistState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? createNewCheckListStatus = null,Object? checkListName = null,Object? description = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,createNewCheckListStatus: null == createNewCheckListStatus ? _self.createNewCheckListStatus : createNewCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checkListName: null == checkListName ? _self.checkListName : checkListName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateNewChecklistState].
extension CreateNewChecklistStatePatterns on CreateNewChecklistState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateNewChecklistState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateNewChecklistState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateNewChecklistState value)  $default,){
final _that = this;
switch (_that) {
case _CreateNewChecklistState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateNewChecklistState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateNewChecklistState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  LoadingStatus createNewCheckListStatus,  String checkListName,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateNewChecklistState() when $default != null:
return $default(_that.message,_that.createNewCheckListStatus,_that.checkListName,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  LoadingStatus createNewCheckListStatus,  String checkListName,  String description)  $default,) {final _that = this;
switch (_that) {
case _CreateNewChecklistState():
return $default(_that.message,_that.createNewCheckListStatus,_that.checkListName,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  LoadingStatus createNewCheckListStatus,  String checkListName,  String description)?  $default,) {final _that = this;
switch (_that) {
case _CreateNewChecklistState() when $default != null:
return $default(_that.message,_that.createNewCheckListStatus,_that.checkListName,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _CreateNewChecklistState implements CreateNewChecklistState {
  const _CreateNewChecklistState({required this.message, required this.createNewCheckListStatus, required this.checkListName, required this.description});
  

@override final  String message;
@override final  LoadingStatus createNewCheckListStatus;
@override final  String checkListName;
@override final  String description;

/// Create a copy of CreateNewChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateNewChecklistStateCopyWith<_CreateNewChecklistState> get copyWith => __$CreateNewChecklistStateCopyWithImpl<_CreateNewChecklistState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateNewChecklistState&&(identical(other.message, message) || other.message == message)&&(identical(other.createNewCheckListStatus, createNewCheckListStatus) || other.createNewCheckListStatus == createNewCheckListStatus)&&(identical(other.checkListName, checkListName) || other.checkListName == checkListName)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,message,createNewCheckListStatus,checkListName,description);

@override
String toString() {
  return 'CreateNewChecklistState(message: $message, createNewCheckListStatus: $createNewCheckListStatus, checkListName: $checkListName, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreateNewChecklistStateCopyWith<$Res> implements $CreateNewChecklistStateCopyWith<$Res> {
  factory _$CreateNewChecklistStateCopyWith(_CreateNewChecklistState value, $Res Function(_CreateNewChecklistState) _then) = __$CreateNewChecklistStateCopyWithImpl;
@override @useResult
$Res call({
 String message, LoadingStatus createNewCheckListStatus, String checkListName, String description
});




}
/// @nodoc
class __$CreateNewChecklistStateCopyWithImpl<$Res>
    implements _$CreateNewChecklistStateCopyWith<$Res> {
  __$CreateNewChecklistStateCopyWithImpl(this._self, this._then);

  final _CreateNewChecklistState _self;
  final $Res Function(_CreateNewChecklistState) _then;

/// Create a copy of CreateNewChecklistState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? createNewCheckListStatus = null,Object? checkListName = null,Object? description = null,}) {
  return _then(_CreateNewChecklistState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,createNewCheckListStatus: null == createNewCheckListStatus ? _self.createNewCheckListStatus : createNewCheckListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checkListName: null == checkListName ? _self.checkListName : checkListName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
