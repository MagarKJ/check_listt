part of 'check_list_item_bloc.dart';

@freezed
abstract class CheckListItemEvent with _$CheckListItemEvent {
  const factory CheckListItemEvent.watchCheckListItemEvent({
    required String checkListId,
  }) = _WatchCheckListItemEvent;

  const factory CheckListItemEvent.updateCompletedTasksEvent() =
      _UpdateCompletedTasksEvent;
}
