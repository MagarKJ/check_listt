import 'package:auto_route/auto_route.dart';
import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/core/utils/extensions/colors_extension.dart';
import 'package:check_list/core/utils/extensions/context_extension.dart';
import 'package:check_list/core/utils/extensions/num_extension.dart';
import 'package:check_list/core/utils/extensions/widget_extension.dart';
import 'package:check_list/src/check_list_details/bloc/check_list_item_bloc/check_list_item_bloc.dart';
import 'package:check_list/src/check_list_details/bloc/create_check_list_item_cubit/create_check_list_item_cubit.dart';
import 'package:check_list/src/check_list_details/create_check_list_item.dart';
import 'package:check_list/src/check_list_details/data/model/check_list_items_model.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';
import 'package:check_list/src/widgets/actions_bottom_sheet.dart';
import 'package:check_list/src/widgets/animated_fab.dart';
import 'package:check_list/src/widgets/custom_progress_indicator.dart';
import 'package:check_list/src/widgets/custom_snack.dart';
import 'package:check_list/src/widgets/delete_dialog_box.dart';
import 'package:check_list/src/widgets/pop_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CheckListDetailsScreen extends StatefulWidget
    implements AutoRouteWrapper {
  final ChecklistModel checkList;
  const CheckListDetailsScreen({super.key, required this.checkList});

  @override
  State<CheckListDetailsScreen> createState() => _CheckListDetailsScreenState();
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider<CreateCheckListItemCubit>(
        create: (_) => CreateCheckListItemCubit(),
      ),
      BlocProvider<CheckListItemBloc>(
        create: (_) => CheckListItemBloc()
          ..add(
            CheckListItemEvent.watchCheckListItemEvent(
              checkListId: checkList.id,
            ),
          ),
      ),
    ],
    child: this,
  );
}

class _CheckListDetailsScreenState extends State<CheckListDetailsScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CheckListItemBloc, CheckListItemState>(
          listenWhen: (previous, current) =>
              previous.checkListItems != current.checkListItems,
          listener: (previous, current) {
            if (current.checkListItems.isNotEmpty) {
              context.read<CheckListItemBloc>().add(
                const CheckListItemEvent.updateCompletedTasksEvent(),
              );
            }
          },
        ),

        BlocListener<CreateCheckListItemCubit, CreateCheckListItemState>(
          listenWhen: (previous, current) =>
              previous.createCheckListItemStatus !=
              current.createCheckListItemStatus,
          listener: (context, state) {
            state.createCheckListItemStatus.listenWhen(
              success: () {
                context.pop();
                Snack.success(context, state.message);
              },
              failure: () {
                context.pop();
                Snack.error(context, state.message);
              },
            );
          },
        ),
        BlocListener<CreateCheckListItemCubit, CreateCheckListItemState>(
          listenWhen: (previous, current) =>
              previous.updateCheckListItemNameStatus !=
              current.updateCheckListItemNameStatus,
          listener: (context, state) {
            state.updateCheckListItemNameStatus.listenWhen(
              success: () {
                context.pop();
                context.pop();
                Snack.success(context, state.message);
              },
              failure: () {
                context.pop();
                Snack.error(context, state.message);
              },
            );
          },
        ),
        BlocListener<CreateCheckListItemCubit, CreateCheckListItemState>(
          listenWhen: (previous, current) =>
              previous.updateCheckListItemCheckStatus !=
              current.updateCheckListItemCheckStatus,
          listener: (context, state) {
            state.updateCheckListItemCheckStatus.listenWhen(
              failure: () {
                context.pop();
                Snack.error(context, state.message);
              },
            );
          },
        ),
        BlocListener<CreateCheckListItemCubit, CreateCheckListItemState>(
          listenWhen: (previous, current) =>
              previous.deleteCheckListItemStatus !=
              current.deleteCheckListItemStatus,
          listener: (context, state) {
            state.deleteCheckListItemStatus.listenWhen(
              success: () {
                context.pop();
                context.pop();
                Snack.success(context, state.message);
              },
              failure: () {
                context.pop();
                Snack.error(context, state.message);
              },
            );
          },
        ),
      ],
      child: Scaffold(
        floatingActionButton: AnimatedFab(
          scrollController: _scrollController,
          label: 'Add Checklist Item',
          onTap: () => context.openBottomSheet(
            isDismissible: false,
            child: BlocProvider<CreateCheckListItemCubit>.value(
              value: context.read<CreateCheckListItemCubit>()..reset(),
              child: CreateCheckListItem(checkListId: widget.checkList.id),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(widget.checkList.name, maxLines: 1),
          leading: Row(children: [14.horizontalSpace, const PopButton()]),
          leadingWidth: 60,
        ),
        body: Column(
          crossAxisAlignment: .start,
          children: [
            const Text(
              'Progress',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ).paddingX(padding: const EdgeInsets.symmetric(horizontal: 20)),
            10.verticalSpace,
            BlocSelector<CheckListItemBloc, CheckListItemState, (int, int)>(
              selector: (state) => state.completedTasks,
              builder: (context, completedTasks) {
                return Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      '${completedTasks.$1} of ${completedTasks.$2} items completed',
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    10.verticalSpace,
                    CustomLinearProgressIndicator(progress: completedTasks),
                    20.verticalSpace,
                  ],
                );
              },
            ).paddingX(padding: const EdgeInsets.symmetric(horizontal: 20)),

            BlocBuilder<CheckListItemBloc, CheckListItemState>(
              buildWhen: (previous, current) =>
                  previous.checkListItemStatus != current.checkListItemStatus ||
                  previous.checkListItems != current.checkListItems,
              builder: (context, state) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.checkListItems.length,
                    controller: _scrollController,
                    separatorBuilder: (_, _) => 10.verticalSpace,
                    itemBuilder: (context, index) {
                      return _CheckListItem(
                        checkListItem: state.checkListItems[index],
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckListItem extends StatelessWidget {
  final CheckListItemsModel checkListItem;
  const _CheckListItem({required this.checkListItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => context.openBottomSheet(
        child: BlocProvider<CreateCheckListItemCubit>.value(
          value: context.read<CreateCheckListItemCubit>(),
          child: ActionsBottomSheet.items(
            onDeleteTap: () => context.openDialog(
              child: DeleteDialogBox(
                onDelete: () => context
                    .read<CreateCheckListItemCubit>()
                    .deleteCheckListItem(id: checkListItem.id),
              ),
            ),
            onEditTap: () => context.openBottomSheet(
              isDismissible: false,
              child: BlocProvider<CreateCheckListItemCubit>.value(
                value: context.read<CreateCheckListItemCubit>()
                  ..onNameChanged(name: checkListItem.name),
                child: CreateCheckListItem.update(
                  checkListId: checkListItem.checkListId,
                  checkListItemId: checkListItem.id,
                ),
              ),
            ),
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpasityX(opasity: 0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(checkListItem.name, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            Checkbox.adaptive(
              value: checkListItem.isChecked,
              onChanged: (value) {
                context
                    .read<CreateCheckListItemCubit>()
                    .updateCheckListItemCheck(
                      isChecked: value ?? false,
                      checkListItemId: checkListItem.id,
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
