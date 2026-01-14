part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required String message,
    required LoadingStatus checkListStatus,
    required List<ChecklistModel> checklists,

    //
    required bool isGridView,

    //complete all tasks
    required LoadingStatus completeAllTasksStatus,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
    message: '',
    checkListStatus: LoadingStatus.initial,
    checklists: [],

    //
    isGridView: false,

    //complete all tasks
    completeAllTasksStatus: LoadingStatus.initial,
  );
}
