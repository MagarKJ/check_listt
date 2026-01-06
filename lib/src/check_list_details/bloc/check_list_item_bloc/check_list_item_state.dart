part of 'check_list_item_bloc.dart';

@freezed
abstract class CheckListItemState with _$CheckListItemState {
  const factory CheckListItemState({
    required String message,
    required LoadingStatus checkListItemStatus,
    required List<CheckListItemsModel> checkListItems,

    //completed tasks
    required (int, int) completedTasks,
  }) = _CheckListItemState;
  factory CheckListItemState.initial() => const CheckListItemState(
    message: '',
    checkListItemStatus: LoadingStatus.initial,
    checkListItems: [],

    //completed tasks
    completedTasks: (0, 0),
  );
}
