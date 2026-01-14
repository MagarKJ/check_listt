import 'package:check_list/core/database/app_database.dart';
import 'package:check_list/core/utils/typedef.dart';
import 'package:check_list/di/di.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';
import 'package:check_list/src/home/data/repo/check_list_repo.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CheckListRepo)
class CheckListRepoImpl implements CheckListRepo {
  @override
  AppDatabase get db => sl<AppDatabase>();
  @override
  EitherFutureData<String> createCheckList({
    required ChecklistModel checkList,
  }) async {
    try {
      final checkListRow = ChecklistTableCompanion.insert(
        id: checkList.id,
        name: checkList.name,
        description: Value(checkList.description),
        createdAt: checkList.createdAt,
        updatedAt: checkList.updatedAt,
      );

      await db.into(db.checklistTable).insertOnConflictUpdate(checkListRow);
      return right('Checklist created successfully');
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  EitherFutureData<String> updateCheckList({
    required ChecklistModel checkList,
  }) async {
    try {
      final checkListRow = ChecklistTableCompanion(
        name: Value(checkList.name),
        description: Value(checkList.description),
        updatedAt: Value(checkList.updatedAt),
      );
      await (db.update(
        db.checklistTable,
      )..where((t) => t.id.equals(checkList.id))).write(checkListRow);

      return right('Checklist updated successfully');
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  EitherFutureData<String> deleteCheckList({
    required String checkListId,
  }) async {
    try {
      await (db.delete(
        db.checklistTable,
      )..where((t) => t.id.equals(checkListId))).go();
      return right('Checklist deleted successfully');
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Stream<List<ChecklistModel>> getCheckListsStream() {
    final c = db.checklistTable;
    final i = db.checkListItemsTable;

    final totalExpr = i.id.count();
    final completedExpr = i.id.count(filter: i.isChecked.equals(true));

    final q =
        db.select(c).join([leftOuterJoin(i, i.checkListId.equalsExp(c.id))])
          ..addColumns([totalExpr, completedExpr])
          ..groupBy([c.id])
          ..orderBy([
            OrderingTerm(
              expression: c.updatedAt,
              mode: OrderingMode.asc, // newest first
            ),
          ]);

    return q.watch().map((rows) {
      return rows.map((r) {
        final checklist = r.readTable(c);

        final total = r.read(totalExpr) ?? 0;
        final completed = r.read(completedExpr) ?? 0;

        return ChecklistModel(
          id: checklist.id,
          name: checklist.name,
          progress: (completed, total),
          description: checklist.description,
          createdAt: checklist.createdAt,
          updatedAt: checklist.updatedAt,
        );
      }).toList();
    });
  }

  @override
  EitherFutureData<String> completeAllTasks({
    required String checkListId,
  }) async {
    try {
      final checkListItems = await (db.select(
        db.checkListItemsTable,
      )..where((t) => t.checkListId.equals(checkListId))).get();

      if (checkListItems.isEmpty) {
        return left('There are no tasks to complete');
      }

      for (final item in checkListItems) {
        final checkListItemRow = CheckListItemsTableCompanion(
          isChecked: const Value(true),
          updatedAt: Value(DateTime.now().toIso8601String()),
        );
        await (db.update(
          db.checkListItemsTable,
        )..where((t) => t.id.equals(item.id))).write(checkListItemRow);
      }
      return right('All tasks completed successfully');
    } catch (e) {
      return left(e.toString());
    }
  }
}
