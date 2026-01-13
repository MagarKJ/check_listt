import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/di/di.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';
import 'package:check_list/src/home/data/repo/check_list_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CheckListRepo _checkListRepo;
  HomeBloc()
    : _checkListRepo = sl<CheckListRepo>(),
      super(HomeState.initial()) {
    on<_ChangeView>(_onChangeView);
    on<_WatchCheckListData>(_onWatchCheckListData, transformer: restartable());
  }

  FutureOr<void> _onWatchCheckListData(
    _WatchCheckListData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(checkListStatus: LoadingStatus.loading));

    await emit.forEach<List<ChecklistModel>>(
      _checkListRepo.getCheckListsStream(),
      onData: (checkLists) {
        return state.copyWith(
          checkListStatus: LoadingStatus.success,
          checklists: checkLists,
        );
      },
      onError: (error, stackTrace) => state.copyWith(
        checkListStatus: LoadingStatus.failure,
        message: error.toString(),
      ),
    );
  }

  FutureOr<void> _onChangeView(_ChangeView event, Emitter<HomeState> emit) {
    emit(state.copyWith(isGridView: !state.isGridView));
  }
}
