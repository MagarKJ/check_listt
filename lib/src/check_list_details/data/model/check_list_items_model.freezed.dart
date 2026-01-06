// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_list_items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckListItemsModel {

 String get id; String get checkListId; String get name; bool get isChecked; String get createdAt; String get updatedAt;
/// Create a copy of CheckListItemsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckListItemsModelCopyWith<CheckListItemsModel> get copyWith => _$CheckListItemsModelCopyWithImpl<CheckListItemsModel>(this as CheckListItemsModel, _$identity);

  /// Serializes this CheckListItemsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckListItemsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.checkListId, checkListId) || other.checkListId == checkListId)&&(identical(other.name, name) || other.name == name)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,checkListId,name,isChecked,createdAt,updatedAt);

@override
String toString() {
  return 'CheckListItemsModel(id: $id, checkListId: $checkListId, name: $name, isChecked: $isChecked, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CheckListItemsModelCopyWith<$Res>  {
  factory $CheckListItemsModelCopyWith(CheckListItemsModel value, $Res Function(CheckListItemsModel) _then) = _$CheckListItemsModelCopyWithImpl;
@useResult
$Res call({
 String id, String checkListId, String name, bool isChecked, String createdAt, String updatedAt
});




}
/// @nodoc
class _$CheckListItemsModelCopyWithImpl<$Res>
    implements $CheckListItemsModelCopyWith<$Res> {
  _$CheckListItemsModelCopyWithImpl(this._self, this._then);

  final CheckListItemsModel _self;
  final $Res Function(CheckListItemsModel) _then;

/// Create a copy of CheckListItemsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? checkListId = null,Object? name = null,Object? isChecked = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,checkListId: null == checkListId ? _self.checkListId : checkListId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckListItemsModel].
extension CheckListItemsModelPatterns on CheckListItemsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckListItemsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckListItemsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckListItemsModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckListItemsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckListItemsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckListItemsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String checkListId,  String name,  bool isChecked,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckListItemsModel() when $default != null:
return $default(_that.id,_that.checkListId,_that.name,_that.isChecked,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String checkListId,  String name,  bool isChecked,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CheckListItemsModel():
return $default(_that.id,_that.checkListId,_that.name,_that.isChecked,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String checkListId,  String name,  bool isChecked,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CheckListItemsModel() when $default != null:
return $default(_that.id,_that.checkListId,_that.name,_that.isChecked,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckListItemsModel implements CheckListItemsModel {
  const _CheckListItemsModel({required this.id, required this.checkListId, required this.name, this.isChecked = false, required this.createdAt, required this.updatedAt});
  factory _CheckListItemsModel.fromJson(Map<String, dynamic> json) => _$CheckListItemsModelFromJson(json);

@override final  String id;
@override final  String checkListId;
@override final  String name;
@override@JsonKey() final  bool isChecked;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of CheckListItemsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckListItemsModelCopyWith<_CheckListItemsModel> get copyWith => __$CheckListItemsModelCopyWithImpl<_CheckListItemsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckListItemsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckListItemsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.checkListId, checkListId) || other.checkListId == checkListId)&&(identical(other.name, name) || other.name == name)&&(identical(other.isChecked, isChecked) || other.isChecked == isChecked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,checkListId,name,isChecked,createdAt,updatedAt);

@override
String toString() {
  return 'CheckListItemsModel(id: $id, checkListId: $checkListId, name: $name, isChecked: $isChecked, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CheckListItemsModelCopyWith<$Res> implements $CheckListItemsModelCopyWith<$Res> {
  factory _$CheckListItemsModelCopyWith(_CheckListItemsModel value, $Res Function(_CheckListItemsModel) _then) = __$CheckListItemsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String checkListId, String name, bool isChecked, String createdAt, String updatedAt
});




}
/// @nodoc
class __$CheckListItemsModelCopyWithImpl<$Res>
    implements _$CheckListItemsModelCopyWith<$Res> {
  __$CheckListItemsModelCopyWithImpl(this._self, this._then);

  final _CheckListItemsModel _self;
  final $Res Function(_CheckListItemsModel) _then;

/// Create a copy of CheckListItemsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? checkListId = null,Object? name = null,Object? isChecked = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_CheckListItemsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,checkListId: null == checkListId ? _self.checkListId : checkListId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isChecked: null == isChecked ? _self.isChecked : isChecked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
