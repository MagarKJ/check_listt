import 'dart:developer';

import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/di/injection.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';
import 'package:check_list/src/home/data/repo/check_list_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'create_checklist_cubit.freezed.dart';
part 'create_checklist_state.dart';

class CreateChecklistCubit extends Cubit<CreateChecklistState> {
  final CheckListRepo _checkListRepo;
  CreateChecklistCubit()
    : _checkListRepo = sl<CheckListRepo>(),
      super(CreateChecklistState.initial());

  void reset() {
    emit(CreateChecklistState.initial());
  }

  void onNameChanged({required String checkListName}) {
    emit(state.copyWith(checkListName: checkListName));
  }

  void onDescriptionChanged({required String description}) {
    emit(state.copyWith(description: description));
  }

  void createNewCheckList() async {
    emit(state.copyWith(createNewCheckListStatus: LoadingStatus.loading));
    const uuid = Uuid();
    final dateTime = DateTime.now().toIso8601String();

    final response = await _checkListRepo.createCheckList(
      checkList: ChecklistModel(
        id: uuid.v4(),
        name: state.checkListName,
        progress: (0, 0),
        description: state.description,
        createdAt: dateTime,
        updatedAt: dateTime,
      ),
    );

    response.fold(
      (l) {
        log('l: $l');
        emit(
          state.copyWith(
            createNewCheckListStatus: LoadingStatus.failure,
            message: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            createNewCheckListStatus: LoadingStatus.success,
            message: r,
          ),
        );
      },
    );
  }

  void updateCheckList({required String checkListId}) async {
    emit(state.copyWith(upadeCheckListStatus: LoadingStatus.loading));

    final response = await _checkListRepo.updateCheckList(
      checkList: ChecklistModel(
        id: checkListId,
        name: state.checkListName,
        progress: (0, 0),
        description: state.description,
        createdAt: '',
        updatedAt: DateTime.now().toIso8601String(),
      ),
    );

    response.fold(
      (l) {
        log('l: $l');
        emit(
          state.copyWith(
            upadeCheckListStatus: LoadingStatus.failure,
            message: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            upadeCheckListStatus: LoadingStatus.success,
            message: r,
          ),
        );
      },
    );
  }

  void deleteCheckList({required String checkListId}) async {
    emit(state.copyWith(deleteCheckListStatus: LoadingStatus.loading));

    final response = await _checkListRepo.deleteCheckList(
      checkListId: checkListId,
    );

    response.fold(
      (l) {
        log('l: $l');
        emit(
          state.copyWith(
            deleteCheckListStatus: LoadingStatus.failure,
            message: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            deleteCheckListStatus: LoadingStatus.success,
            message: r,
          ),
        );
      },
    );
  }
}
