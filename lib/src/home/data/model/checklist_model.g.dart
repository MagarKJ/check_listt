// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistModel _$ChecklistModelFromJson(Map<String, dynamic> json) =>
    _ChecklistModel(
      id: json['id'] as String,
      name: json['name'] as String,
      progress: _$recordConvert(
        json['progress'],
        ($jsonValue) => (
          ($jsonValue[r'$1'] as num).toInt(),
          ($jsonValue[r'$2'] as num).toInt(),
        ),
      ),
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$ChecklistModelToJson(_ChecklistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'progress': <String, dynamic>{
        r'$1': instance.progress.$1,
        r'$2': instance.progress.$2,
      },
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

$Rec _$recordConvert<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map<String, dynamic>);
