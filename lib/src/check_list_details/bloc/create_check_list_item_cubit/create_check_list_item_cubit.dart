import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/di/di.dart';
import 'package:check_list/src/check_list_details/data/model/check_list_items_model.dart';
import 'package:check_list/src/check_list_details/data/repo/checklist_item_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'create_check_list_item_cubit.freezed.dart';
part 'create_check_list_item_state.dart';

class CreateCheckListItemCubit extends Cubit<CreateCheckListItemState> {
  final CheckListItemRepo _checkListItemRepo;
  CreateCheckListItemCubit()
    : _checkListItemRepo = sl<CheckListItemRepo>(),
      super(CreateCheckListItemState.initial());

  void reset() {
    emit(CreateCheckListItemState.initial());
  }

  void onNameChanged({required String name}) {
    emit(state.copyWith(name: name));
  }

  void createCheckListItem({required String checkListId}) async {
    emit(state.copyWith(createCheckListItemStatus: LoadingStatus.loading));
    const uuid = Uuid();
    final dateTime = DateTime.now().toIso8601String();
    final response = await _checkListItemRepo.createCheckListItem(
      checkListItem: CheckListItemsModel(
        id: uuid.v4(),
        checkListId: checkListId,
        name: state.name,
        createdAt: dateTime,
        updatedAt: dateTime,
      ),
    );
    response.fold(
      (l) {
        emit(
          state.copyWith(
            createCheckListItemStatus: LoadingStatus.failure,
            message: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            createCheckListItemStatus: LoadingStatus.success,
            message: r,
          ),
        );
      },
    );
  }

  void updateCheckListItemName({required String id}) async {
    emit(state.copyWith(updateCheckListItemNameStatus: LoadingStatus.loading));
    final response = await _checkListItemRepo.updateCheckListItemName(
      checkListItemId: id,
      name: state.name,
      updatedAt: DateTime.now().toIso8601String(),
    );
    response.fold(
      (l) {
        emit(
          state.copyWith(
            updateCheckListItemNameStatus: LoadingStatus.failure,
            message: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            updateCheckListItemNameStatus: LoadingStatus.success,
            message: r,
          ),
        );
      },
    );
  }

  void updateCheckListItemCheck({
    required bool isChecked,
    required String checkListItemId,
  }) async {
    emit(state.copyWith(updateCheckListItemCheckStatus: LoadingStatus.loading));
    final response = await _checkListItemRepo.updateCheckListItemCheck(
      checkListItemId: checkListItemId,
      isChecked: isChecked,
      updatedAt: DateTime.now().toIso8601String(),
    );
    response.fold(
      (l) {
        emit(
          state.copyWith(
            updateCheckListItemCheckStatus: LoadingStatus.failure,
            message: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(updateCheckListItemCheckStatus: LoadingStatus.success),
        );
      },
    );
  }

  void deleteCheckListItem({required String id}) async {
    emit(state.copyWith(deleteCheckListItemStatus: LoadingStatus.loading));
    final response = await _checkListItemRepo.deleteCheckListItem(
      checkListItemId: id,
    );
    response.fold(
      (l) {
        emit(
          state.copyWith(
            deleteCheckListItemStatus: LoadingStatus.failure,
            message: l,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            deleteCheckListItemStatus: LoadingStatus.success,
            message: r,
          ),
        );
      },
    );
  }
}
