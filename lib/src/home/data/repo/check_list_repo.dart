import 'package:check_list/core/database/app_database.dart';
import 'package:check_list/core/utils/typedef.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';

abstract class CheckListRepo {
  AppDatabase get db;

  EitherFutureData<String> createCheckList({required ChecklistModel checkList});

  EitherFutureData<String> updateCheckList({required ChecklistModel checkList});

  EitherFutureData<String> deleteCheckList({required String checkListId});

  Stream<List<ChecklistModel>> getCheckListsStream();
}
