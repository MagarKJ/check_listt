import 'package:check_list/core/database/app_database.dart';
import 'package:check_list/core/utils/typedef.dart';
import 'package:check_list/di/di.dart';
import 'package:check_list/src/check_list_details/data/model/check_list_items_model.dart';
import 'package:check_list/src/check_list_details/data/repo/checklist_item_repo.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CheckListItemRepo)
class ChecklistItemRepoImpl implements CheckListItemRepo {
  @override
  AppDatabase get db => sl<AppDatabase>();

  @override
  EitherFutureData<String> createCheckListItem({
    required CheckListItemsModel checkListItem,
  }) async {
    try {
      final checkListItemRow = CheckListItemsTableCompanion.insert(
        id: checkListItem.id,
        checkListId: checkListItem.checkListId,
        name: checkListItem.name,
        createdAt: checkListItem.createdAt,
        updatedAt: checkListItem.updatedAt,
      );

      await db
          .into(db.checkListItemsTable)
          .insertOnConflictUpdate(checkListItemRow);
      return right('Checklist item created successfully');
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  EitherFutureData<String> updateCheckListItemName({
    required String checkListItemId,
    required String name,
    required String updatedAt,
  }) async {
    try {
      final checkListItemRow = CheckListItemsTableCompanion(
        name: Value(name),
        updatedAt: Value(updatedAt),
      );

      await (db.update(
        db.checkListItemsTable,
      )..where((t) => t.id.equals(checkListItemId))).write(checkListItemRow);
      return right('Checklist item updated successfully');
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  EitherFutureData<void> updateCheckListItemCheck({
    required String checkListItemId,
    required String updatedAt,
    required bool isChecked,
  }) async {
    try {
      final checkListItemRow = CheckListItemsTableCompanion(
        isChecked: Value(isChecked),
        updatedAt: Value(updatedAt),
      );

      await (db.update(
        db.checkListItemsTable,
      )..where((t) => t.id.equals(checkListItemId))).write(checkListItemRow);
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  EitherFutureData<String> deleteCheckListItem({
    required String checkListItemId,
  }) async {
    try {
      await (db.delete(
        db.checkListItemsTable,
      )..where((t) => t.id.equals(checkListItemId))).go();
      return right('Checklist item deleted successfully');
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Stream<List<CheckListItemsModel>> getCheckListItemsStream({
    required String checkListId,
  }) {
    return (db.select(
      db.checkListItemsTable,
    )..where((t) => t.checkListId.equals(checkListId))).watch().map(
      (rows) => rows
          .map(
            (row) => CheckListItemsModel(
              id: row.id,
              checkListId: row.checkListId,
              name: row.name,
              isChecked: row.isChecked,
              createdAt: row.createdAt,
              updatedAt: row.updatedAt,
            ),
          )
          .toList(),
    );
  }
}
