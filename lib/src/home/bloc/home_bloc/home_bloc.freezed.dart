// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _WatchCheckListData value)?  watchCheckListData,TResult Function( _ChangeView value)?  changeView,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchCheckListData() when watchCheckListData != null:
return watchCheckListData(_that);case _ChangeView() when changeView != null:
return changeView(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _WatchCheckListData value)  watchCheckListData,required TResult Function( _ChangeView value)  changeView,}){
final _that = this;
switch (_that) {
case _WatchCheckListData():
return watchCheckListData(_that);case _ChangeView():
return changeView(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _WatchCheckListData value)?  watchCheckListData,TResult? Function( _ChangeView value)?  changeView,}){
final _that = this;
switch (_that) {
case _WatchCheckListData() when watchCheckListData != null:
return watchCheckListData(_that);case _ChangeView() when changeView != null:
return changeView(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  watchCheckListData,TResult Function()?  changeView,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchCheckListData() when watchCheckListData != null:
return watchCheckListData();case _ChangeView() when changeView != null:
return changeView();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  watchCheckListData,required TResult Function()  changeView,}) {final _that = this;
switch (_that) {
case _WatchCheckListData():
return watchCheckListData();case _ChangeView():
return changeView();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  watchCheckListData,TResult? Function()?  changeView,}) {final _that = this;
switch (_that) {
case _WatchCheckListData() when watchCheckListData != null:
return watchCheckListData();case _ChangeView() when changeView != null:
return changeView();case _:
  return null;

}
}

}

/// @nodoc


class _WatchCheckListData implements HomeEvent {
  const _WatchCheckListData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchCheckListData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.watchCheckListData()';
}


}




/// @nodoc


class _ChangeView implements HomeEvent {
  const _ChangeView();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeView);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.changeView()';
}


}




/// @nodoc
mixin _$HomeState {

 String get message; LoadingStatus get checkListStatus; List<ChecklistModel> get checklists;//
 bool get isGridView;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.message, message) || other.message == message)&&(identical(other.checkListStatus, checkListStatus) || other.checkListStatus == checkListStatus)&&const DeepCollectionEquality().equals(other.checklists, checklists)&&(identical(other.isGridView, isGridView) || other.isGridView == isGridView));
}


@override
int get hashCode => Object.hash(runtimeType,message,checkListStatus,const DeepCollectionEquality().hash(checklists),isGridView);

@override
String toString() {
  return 'HomeState(message: $message, checkListStatus: $checkListStatus, checklists: $checklists, isGridView: $isGridView)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 String message, LoadingStatus checkListStatus, List<ChecklistModel> checklists, bool isGridView
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? checkListStatus = null,Object? checklists = null,Object? isGridView = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,checkListStatus: null == checkListStatus ? _self.checkListStatus : checkListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checklists: null == checklists ? _self.checklists : checklists // ignore: cast_nullable_to_non_nullable
as List<ChecklistModel>,isGridView: null == isGridView ? _self.isGridView : isGridView // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  LoadingStatus checkListStatus,  List<ChecklistModel> checklists,  bool isGridView)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.message,_that.checkListStatus,_that.checklists,_that.isGridView);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  LoadingStatus checkListStatus,  List<ChecklistModel> checklists,  bool isGridView)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.message,_that.checkListStatus,_that.checklists,_that.isGridView);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  LoadingStatus checkListStatus,  List<ChecklistModel> checklists,  bool isGridView)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.message,_that.checkListStatus,_that.checklists,_that.isGridView);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.message, required this.checkListStatus, required final  List<ChecklistModel> checklists, required this.isGridView}): _checklists = checklists;
  

@override final  String message;
@override final  LoadingStatus checkListStatus;
 final  List<ChecklistModel> _checklists;
@override List<ChecklistModel> get checklists {
  if (_checklists is EqualUnmodifiableListView) return _checklists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checklists);
}

//
@override final  bool isGridView;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.message, message) || other.message == message)&&(identical(other.checkListStatus, checkListStatus) || other.checkListStatus == checkListStatus)&&const DeepCollectionEquality().equals(other._checklists, _checklists)&&(identical(other.isGridView, isGridView) || other.isGridView == isGridView));
}


@override
int get hashCode => Object.hash(runtimeType,message,checkListStatus,const DeepCollectionEquality().hash(_checklists),isGridView);

@override
String toString() {
  return 'HomeState(message: $message, checkListStatus: $checkListStatus, checklists: $checklists, isGridView: $isGridView)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 String message, LoadingStatus checkListStatus, List<ChecklistModel> checklists, bool isGridView
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? checkListStatus = null,Object? checklists = null,Object? isGridView = null,}) {
  return _then(_HomeState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,checkListStatus: null == checkListStatus ? _self.checkListStatus : checkListStatus // ignore: cast_nullable_to_non_nullable
as LoadingStatus,checklists: null == checklists ? _self._checklists : checklists // ignore: cast_nullable_to_non_nullable
as List<ChecklistModel>,isGridView: null == isGridView ? _self.isGridView : isGridView // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
