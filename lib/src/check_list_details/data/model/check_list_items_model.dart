import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_list_items_model.freezed.dart';
part 'check_list_items_model.g.dart';

@freezed
abstract class CheckListItemsModel with _$CheckListItemsModel {
  const factory CheckListItemsModel({
    required String id,
    required String checkListId,
    required String name,
    @Default(false) bool isChecked,
    required String createdAt,
    required String updatedAt,
  }) = _CheckListItemsModel;

  factory CheckListItemsModel.fromJson(Map<String, dynamic> json) =>
      _$CheckListItemsModelFromJson(json);

  static const empty = CheckListItemsModel(
    id: '',
    checkListId: '',
    name: '',
    createdAt: '',
    updatedAt: '',
  );

  factory CheckListItemsModel.initial() => const CheckListItemsModel(
    id: 'aghsvdi7812uvdwasdd',
    checkListId: 'jahsvdiuy1q27i8vd',
    name: 'Clothes',
    createdAt: '2023-10-01T10:00:00.000',
    updatedAt: '2023-10-01T10:00:00.000',
  );
}
