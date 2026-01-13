import 'package:check_list/core/database/app_database.dart';
import 'package:check_list/core/utils/typedef.dart';
import 'package:check_list/src/check_list_details/data/model/check_list_items_model.dart';

abstract class CheckListItemRepo {
  AppDatabase get db;

  EitherFutureData<String> createCheckListItem({
    required CheckListItemsModel checkListItem,
  });

  EitherFutureData<String> updateCheckListItemName({
    required String checkListItemId,
    required String name,
    required String updatedAt,
  });

  EitherFutureData<void> updateCheckListItemCheck({
    required String checkListItemId,
    required String updatedAt,
    required bool isChecked,
  });

  EitherFutureData<String> deleteCheckListItem({
    required String checkListItemId,
  });

  Stream<List<CheckListItemsModel>> getCheckListItemsStream({
    required String checkListId,
  });
}
