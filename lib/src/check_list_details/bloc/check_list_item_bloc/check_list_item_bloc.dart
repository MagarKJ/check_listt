import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/di/di.dart';
import 'package:check_list/src/check_list_details/data/model/check_list_items_model.dart';
import 'package:check_list/src/check_list_details/data/repo/checklist_item_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_list_item_bloc.freezed.dart';
part 'check_list_item_event.dart';
part 'check_list_item_state.dart';

class CheckListItemBloc extends Bloc<CheckListItemEvent, CheckListItemState> {
  final CheckListItemRepo _checkListItemRepo;
  CheckListItemBloc()
    : _checkListItemRepo = sl<CheckListItemRepo>(),
      super(CheckListItemState.initial()) {
    on<_WatchCheckListItemEvent>(
      _watchCheckListItemEvent,
      transformer: restartable(),
    );
    on<_UpdateCompletedTasksEvent>(_onUpdateCompletedTasksEvent);
  }

  FutureOr<void> _watchCheckListItemEvent(
    _WatchCheckListItemEvent event,
    Emitter<CheckListItemState> emit,
  ) async {
    emit(state.copyWith(checkListItemStatus: LoadingStatus.loading));

    await emit.forEach<List<CheckListItemsModel>>(
      _checkListItemRepo.getCheckListItemsStream(
        checkListId: event.checkListId,
      ),
      onData: (checkListItems) {
        return state.copyWith(
          checkListItemStatus: LoadingStatus.success,
          checkListItems: checkListItems,
        );
      },
      onError: (error, stackTrace) => state.copyWith(
        checkListItemStatus: LoadingStatus.failure,
        message: error.toString(),
      ),
    );
  }

  FutureOr<void> _onUpdateCompletedTasksEvent(
    _UpdateCompletedTasksEvent event,
    Emitter<CheckListItemState> emit,
  ) {
    final totalTasks = state.checkListItems.length;
    final completedTasks = state.checkListItems
        .where((element) => element.isChecked)
        .toList()
        .length;
    emit(state.copyWith(completedTasks: (completedTasks, totalTasks)));
  }
}
