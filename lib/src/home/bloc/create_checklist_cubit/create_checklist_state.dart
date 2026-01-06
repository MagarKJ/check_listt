part of 'create_checklist_cubit.dart';

@freezed
abstract class CreateChecklistState with _$CreateChecklistState {
  const factory CreateChecklistState({
    required String message,
    required LoadingStatus createNewCheckListStatus,
    required String checkListName,
    required String description,

    //update
    required LoadingStatus upadeCheckListStatus,

    //delete
    required LoadingStatus deleteCheckListStatus,
  }) = _CreateChecklistState;
  factory CreateChecklistState.initial() => const CreateChecklistState(
    message: '',
    createNewCheckListStatus: LoadingStatus.initial,
    checkListName: '',
    description: '',

    //update
    upadeCheckListStatus: LoadingStatus.initial,

    //delete
    deleteCheckListStatus: LoadingStatus.initial,
  );
}
