import 'dart:developer';

import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/di/injection.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';
import 'package:check_list/src/home/data/repo/check_list_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'create_new_checklist_cubit.freezed.dart';
part 'create_new_checklist_state.dart';

class CreateNewChecklistCubit
    extends Cubit<CreateNewChecklistState> {
  final CheckListRepo _checkListRepo;
  CreateNewChecklistCubit()
    : _checkListRepo = sl<CheckListRepo>(),
      super(CreateNewChecklistState.initial());

  void onNameChanged({required String checkListName}) {
    emit(state.copyWith(checkListName: checkListName));
  }

  void onDescriptionChanged({required String description}) {
    emit(state.copyWith(description: description));
  }

  void createNewCheckList() async {
    emit(
      state.copyWith(
        createNewCheckListStatus: LoadingStatus.loading,
      ),
    );
    const uuid = Uuid();
    final dateTime = DateTime.now().toIso8601String();

    final response = await _checkListRepo.createCheckList(
      checkList: ChecklistModel(
        id: uuid.v4(),
        name: state.checkListName,
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
}
