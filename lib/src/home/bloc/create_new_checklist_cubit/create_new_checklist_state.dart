part of 'create_new_checklist_cubit.dart';

@freezed
abstract class CreateNewChecklistState
    with _$CreateNewChecklistState {
  const factory CreateNewChecklistState({
    required String message,
    required LoadingStatus createNewCheckListStatus,
    required String checkListName,
    required String description,
  }) = _CreateNewChecklistState;
  factory CreateNewChecklistState.initial() =>
      const CreateNewChecklistState(
        message: '',
        createNewCheckListStatus: LoadingStatus.initial,
        checkListName: '',
        description: '',
      );
}
