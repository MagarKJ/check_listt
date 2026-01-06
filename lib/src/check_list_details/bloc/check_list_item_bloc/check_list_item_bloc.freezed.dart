// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_list_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckListItemEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckListItemEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckListItemEvent()';
}


}

/// @nodoc
class $CheckListItemEventCopyWith<$Res>  {
$CheckListItemEventCopyWith(CheckListItemEvent _, $Res Function(CheckListItemEvent) __);
}


/// Adds pattern-matching-related methods to [CheckListItemEvent].
extension CheckListItemEventPatterns on CheckListItemEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _WatchCheckListItemEvent value)?  watchCheckListItemEvent,TResult Function( _UpdateCompletedTasksEvent value)?  updateCompletedTasksEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchCheckListItemEvent() when watchCheckListItemEvent != null:
return watchCheckListItemEvent(_that);case _UpdateCompletedTasksEvent() when updateCompletedTasksEvent != null:
return updateCompletedTasksEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _WatchCheckListItemEvent value)  watchCheckListItemEvent,required TResult Function( _UpdateCompletedTasksEvent value)  updateCompletedTasksEvent,}){
final _that = this;
switch (_that) {
case _WatchCheckListItemEvent():
return watchCheckListItemEvent(_that);case _UpdateCompletedTasksEvent():
return updateCompletedTasksEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _WatchCheckListItemEvent value)?  watchCheckListItemEvent,TResult? Function( _UpdateCompletedTasksEvent value)?  updateCompletedTasksEvent,}){
final _that = this;
switch (_that) {
case _WatchCheckListItemEvent() when watchCheckListItemEvent != null:
return watchCheckListItemEvent(_that);case _UpdateCompletedTasksEvent() when updateCompletedTasksEvent != null:
return updateCompletedTasksEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String checkListId)?  watchCheckListItemEvent,TResult Function()?  updateCompletedTasksEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchCheckListItemEvent() when watchCheckListItemEvent != null:
return watchCheckListItemEvent(_that.checkListId);case _UpdateCompletedTasksEvent() when updateCompletedTasksEvent != null:
return updateCompletedTasksEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String checkListId)  watchCheckListItemEvent,required TResult Function()  updateCompletedTasksEvent,}) {final _that = this;
switch (_that) {
case _WatchCheckListItemEvent():
return watchCheckListItemEvent(_that.checkListId);case _UpdateCompletedTasksEvent():
return updateCompletedTasksEvent();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String checkListId)?  watchCheckListItemEvent,TResult? Function()?  updateCompletedTasksEvent,}) {final _that = this;
switch (_that) {
case _WatchCheckListItemEvent() when watchCheckListItemEvent != null:
return watchCheckListItemEvent(_that.checkListId);case _UpdateCompletedTasksEvent() when updateCompletedTasksEvent != null:
return updateCompletedTasksEvent();case _:
  return null;

}
}

}

/// @nodoc


class _WatchCheckListItemEvent implements CheckListItemEvent {
  const _WatchCheckListItemEvent({required this.checkListId});
  

 final  String checkListId;

/// Create a copy of CheckListItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchCheckListItemEventCopyWith<_WatchCheckListItemEvent> get copyWith => __$WatchCheckListItemEventCopyWithImpl<_WatchCheckListItemEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchCheckListItemEvent&&(identical(other.checkListId, checkListId) || other.checkListId == checkListId));
}


@override
int get hashCode => Object.hash(runtimeType,checkListId);

@override
String toString() {
  return 'CheckListItemEvent.watchCheckListItemEvent(checkListId: $checkListId)';
}


}

/// @nodoc
abstract mixin class _$WatchCheckListItemEventCopyWith<$Res> implements $CheckListItemEventCopyWith<$Res> {
  factory _$WatchCheckListItemEventCopyWith(_WatchCheckListItemEvent value, $Res Function(_WatchCheckListItemEvent) _then) = __$WatchCheckListItemEventCopyWithImpl;
@useResult
$Res call({
 String checkListId
});




}
/// @nodoc
class __$WatchCheckListItemEventCopyWithImpl<$Res>
    implements _$WatchCheckListItemEventCopyWith<$Res> {
  __$WatchCheckListItemEventCopyWithImpl(this._self, this._then);

  final _WatchCheckListItemEvent _self;
  final $Res Function(_WatchCheckListItemEvent) _then;

/// Create a copy of CheckListItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? checkListId = null,}) {
  return _then(_WatchCheckListItemEvent(
checkListId: null == checkListId ? _self.checkListId : checkListId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateCompletedTasksEvent implements CheckListItemEvent {
  const _UpdateCompletedTasksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCompletedTasksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckListItemEvent.updateCompletedTasksEvent()';
}


}




/// @nodoc
mixin _$CheckListItemState {

 String get message; LoadingStatus get checkListItemStatus; List<CheckListItemsModel> get checkListItems;//completed tasks
 (int, int) get completedTasks;
/// Create a copy of CheckListItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckListItemStateCopyWith<CheckListItemState> get copyWith => _$CheckListItemStateCopyWithImpl<CheckListItemState>(this as CheckListItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckListItemState&&(identical(other.message, message) || other.message == message)&&(identical(other.checkListItemStatus, checkListItemStatus) || other.checkListItemStatus == checkListItemStatus)&&const DeepCollectionEquality().equals(other.checkListItems, checkListItems)&&(identical(other.completedTasks, completedTasks) || other.completedTasks == completedTasks));
}


@override
int get hashCode => Object.hash(runtimeType,message,checkListItemStatus,const DeepCollectionEquality().hash(checkListItems),completedTasks);

@override
String toString() {
  return 'CheckListItemState(message: $message, checkListItemStatus: $checkListItemStatus, checkListItems: $checkListItems, completedTasks: $completedTasks)';
}


}

/// @nodoc
abstract mixin class $CheckListItemStateCopyWith<$Res>  {
  factory $CheckListItemStateCopyWith(CheckListItemState value, $Res Function(CheckListItemState) _then) = _$CheckListItemStateCopyWithImpl;
@useResult
$Res call({
 String message, LoadingStatus checkListItemStatus, List<CheckListItemsModel> checkListItems, (int, int) completedTasks
});




}
/// @nodoc
class _$CheckListItemStateCopyWithImpl<$Res>
    implements $CheckListItemStateCopyWith<$Res> {
  _$CheckListItemStateCopyWithImpl(this._self, this._then);

  final CheckListItemState _self;
  final $Res Function(CheckListItemState) _then;

/// Create a copy of CheckListItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? checkListItemStatus = null,Object? checkListItems = null,Object? completedTasks = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,checkListItemStatus: null == checkListItemStatus ? _self.checkListItemStatus : checkListItemStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checkListItems: null == checkListItems ? _self.checkListItems : checkListItems // ignore: cast_nullable_to_non_nullable
as List<CheckListItemsModel>,completedTasks: null == completedTasks ? _self.completedTasks : completedTasks // ignore: cast_nullable_to_non_nullable
as (int, int),
  ));
}

}


/// Adds pattern-matching-related methods to [CheckListItemState].
extension CheckListItemStatePatterns on CheckListItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckListItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckListItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckListItemState value)  $default,){
final _that = this;
switch (_that) {
case _CheckListItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckListItemState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckListItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  LoadingStatus checkListItemStatus,  List<CheckListItemsModel> checkListItems,  (int, int) completedTasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckListItemState() when $default != null:
return $default(_that.message,_that.checkListItemStatus,_that.checkListItems,_that.completedTasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  LoadingStatus checkListItemStatus,  List<CheckListItemsModel> checkListItems,  (int, int) completedTasks)  $default,) {final _that = this;
switch (_that) {
case _CheckListItemState():
return $default(_that.message,_that.checkListItemStatus,_that.checkListItems,_that.completedTasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  LoadingStatus checkListItemStatus,  List<CheckListItemsModel> checkListItems,  (int, int) completedTasks)?  $default,) {final _that = this;
switch (_that) {
case _CheckListItemState() when $default != null:
return $default(_that.message,_that.checkListItemStatus,_that.checkListItems,_that.completedTasks);case _:
  return null;

}
}

}

/// @nodoc


class _CheckListItemState implements CheckListItemState {
  const _CheckListItemState({required this.message, required this.checkListItemStatus, required final  List<CheckListItemsModel> checkListItems, required this.completedTasks}): _checkListItems = checkListItems;
  

@override final  String message;
@override final  LoadingStatus checkListItemStatus;
 final  List<CheckListItemsModel> _checkListItems;
@override List<CheckListItemsModel> get checkListItems {
  if (_checkListItems is EqualUnmodifiableListView) return _checkListItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checkListItems);
}

//completed tasks
@override final  (int, int) completedTasks;

/// Create a copy of CheckListItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckListItemStateCopyWith<_CheckListItemState> get copyWith => __$CheckListItemStateCopyWithImpl<_CheckListItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckListItemState&&(identical(other.message, message) || other.message == message)&&(identical(other.checkListItemStatus, checkListItemStatus) || other.checkListItemStatus == checkListItemStatus)&&const DeepCollectionEquality().equals(other._checkListItems, _checkListItems)&&(identical(other.completedTasks, completedTasks) || other.completedTasks == completedTasks));
}


@override
int get hashCode => Object.hash(runtimeType,message,checkListItemStatus,const DeepCollectionEquality().hash(_checkListItems),completedTasks);

@override
String toString() {
  return 'CheckListItemState(message: $message, checkListItemStatus: $checkListItemStatus, checkListItems: $checkListItems, completedTasks: $completedTasks)';
}


}

/// @nodoc
abstract mixin class _$CheckListItemStateCopyWith<$Res> implements $CheckListItemStateCopyWith<$Res> {
  factory _$CheckListItemStateCopyWith(_CheckListItemState value, $Res Function(_CheckListItemState) _then) = __$CheckListItemStateCopyWithImpl;
@override @useResult
$Res call({
 String message, LoadingStatus checkListItemStatus, List<CheckListItemsModel> checkListItems, (int, int) completedTasks
});




}
/// @nodoc
class __$CheckListItemStateCopyWithImpl<$Res>
    implements _$CheckListItemStateCopyWith<$Res> {
  __$CheckListItemStateCopyWithImpl(this._self, this._then);

  final _CheckListItemState _self;
  final $Res Function(_CheckListItemState) _then;

/// Create a copy of CheckListItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? checkListItemStatus = null,Object? checkListItems = null,Object? completedTasks = null,}) {
  return _then(_CheckListItemState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,checkListItemStatus: null == checkListItemStatus ? _self.checkListItemStatus : checkListItemStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checkListItems: null == checkListItems ? _self._checkListItems : checkListItems // ignore: cast_nullable_to_non_nullable
as List<CheckListItemsModel>,completedTasks: null == completedTasks ? _self.completedTasks : completedTasks // ignore: cast_nullable_to_non_nullable
as (int, int),
  ));
}


}

// dart format on
