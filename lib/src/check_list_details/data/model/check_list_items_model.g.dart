// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_list_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckListItemsModel _$CheckListItemsModelFromJson(Map<String, dynamic> json) =>
    _CheckListItemsModel(
      id: json['id'] as String,
      checkListId: json['checkListId'] as String,
      name: json['name'] as String,
      isChecked: json['isChecked'] as bool? ?? false,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$CheckListItemsModelToJson(
  _CheckListItemsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'checkListId': instance.checkListId,
  'name': instance.name,
  'isChecked': instance.isChecked,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
