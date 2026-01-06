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

      await db
          .into(db.checklistTable)
          .insertOnConflictUpdate(checkListRow);
      return right('Checklist created successfully');
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Stream<List<ChecklistModel>> getCheckListsStream() {
    return db
        .select(db.checklistTable)
        .watch()
        .map(
          (rows) => rows
              .map(
                (row) => ChecklistModel(
                  id: row.id,
                  name: row.name,
                  description: row.description,
                  createdAt: row.createdAt,
                  updatedAt: row.updatedAt,
                ),
              )
              .toList(),
        );
  }
}
