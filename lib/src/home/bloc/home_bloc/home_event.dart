part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchCheckListData() = _WatchCheckListData;

  const factory HomeEvent.changeView() = _ChangeView;

  const factory HomeEvent.completeAllTasks({required String checkListId}) =
      _CompleteAllTasks;
}
