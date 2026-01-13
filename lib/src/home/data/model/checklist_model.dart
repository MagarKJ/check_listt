import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_model.freezed.dart';
part 'checklist_model.g.dart';

@freezed
abstract class ChecklistModel with _$ChecklistModel {
  const factory ChecklistModel({
    required String id,
    required String name,
    required (int, int) progress,
    String? description,
    required String createdAt,
    required String updatedAt,
  }) = _ChecklistModel;

  factory ChecklistModel.fromJson(Map<String, dynamic> json) =>
      _$ChecklistModelFromJson(json);

  static const empty = ChecklistModel(
    id: '',
    name: '',
    progress: (0, 0),
    description: null,
    createdAt: '2023-01-01T00:00:00.000',
    updatedAt: '2023-01-01T00:00:00.000',
  );

  static const fakeData = ChecklistModel(
    id: '1',
    name: 'Grocery Shopping',
    progress: (0, 0),
    description: 'List of items to buy from the grocery store',
    createdAt: '2023-10-01T10:00:00.000',
    updatedAt: '2023-10-01T10:00:00.000',
  );
}
