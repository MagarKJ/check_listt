part of 'create_check_list_item_cubit.dart';

@freezed
abstract class CreateCheckListItemState with _$CreateCheckListItemState {
  const factory CreateCheckListItemState({
    required String message,
    required String name,
    required LoadingStatus createCheckListItemStatus,

    //edit
    required LoadingStatus updateCheckListItemNameStatus,
    required LoadingStatus updateCheckListItemCheckStatus,

    //delete
    required LoadingStatus deleteCheckListItemStatus,
  }) = _CreateCheckListItemState;
  factory CreateCheckListItemState.initial() => const CreateCheckListItemState(
    message: '',
    name: '',
    createCheckListItemStatus: LoadingStatus.initial,

    //edit
    updateCheckListItemNameStatus: LoadingStatus.initial,
    updateCheckListItemCheckStatus: LoadingStatus.initial,

    //delete
    deleteCheckListItemStatus: LoadingStatus.initial,
  );
}
