import 'package:auto_route/auto_route.dart';
import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/core/router/app_router.gr.dart';
import 'package:check_list/core/utils/extensions/colors_extension.dart';
import 'package:check_list/core/utils/extensions/context_extension.dart';
import 'package:check_list/core/utils/extensions/num_extension.dart';
import 'package:check_list/core/utils/extensions/widget_extension.dart';
import 'package:check_list/src/home/bloc/create_checklist_cubit/create_checklist_cubit.dart';
import 'package:check_list/src/home/bloc/home_bloc/home_bloc.dart';
import 'package:check_list/src/home/create_checklist.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';
import 'package:check_list/src/widgets/actions_bottom_sheet.dart';
import 'package:check_list/src/widgets/animated_fab.dart';
import 'package:check_list/src/widgets/custom_divider.dart';
import 'package:check_list/src/widgets/custom_progress_indicator.dart';
import 'package:check_list/src/widgets/custom_snack.dart';
import 'package:check_list/src/widgets/delete_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HomeScreen extends StatefulWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider<HomeBloc>(
        create: (_) => HomeBloc()..add(const HomeEvent.watchCheckListData()),
      ),
      BlocProvider<CreateChecklistCubit>(create: (_) => CreateChecklistCubit()),
    ],
    child: this,
  );
}

class _HomeScreenState extends State<HomeScreen> {
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
        BlocListener<CreateChecklistCubit, CreateChecklistState>(
          listenWhen: (previous, current) =>
              previous.createNewCheckListStatus !=
              current.createNewCheckListStatus,
          listener: (context, state) {
            state.createNewCheckListStatus.listenWhen(
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
        BlocListener<CreateChecklistCubit, CreateChecklistState>(
          listenWhen: (previous, current) =>
              previous.deleteCheckListStatus != current.deleteCheckListStatus,
          listener: (context, state) {
            state.deleteCheckListStatus.listenWhen(
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
        BlocListener<CreateChecklistCubit, CreateChecklistState>(
          listenWhen: (previous, current) =>
              previous.upadeCheckListStatus != current.upadeCheckListStatus,
          listener: (context, state) {
            state.upadeCheckListStatus.listenWhen(
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
          onTap: () => context.openBottomSheet(
            isDismissible: false,
            child: BlocProvider<CreateChecklistCubit>.value(
              value: context.read<CreateChecklistCubit>()..reset(),
              child: const CreateChecklist(),
            ),
          ),
        ),
        appBar: AppBar(
          actions: [
            BlocSelector<HomeBloc, HomeState, bool>(
              selector: (state) => state.isGridView,
              builder: (context, isGridView) {
                return GestureDetector(
                  onTap: () => context.read<HomeBloc>().add(
                    const HomeEvent.changeView(),
                  ),
                  child: Icon(
                    isGridView
                        ? Icons.list_alt_rounded
                        : Icons.grid_view_rounded,
                  ),
                );
              },
            ),
            20.horizontalSpace,
          ],
        ),
        body: Column(
          crossAxisAlignment: .start,
          children: [
            const CustomDivider(),
            const Text(
              'My Checklists',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ).paddingX(padding: const EdgeInsets.only(left: 25, bottom: 15)),
            15.verticalSpace,
            Expanded(
              child: BlocBuilder<HomeBloc, HomeState>(
                buildWhen: (previous, current) =>
                    previous.checklists != current.checklists ||
                    previous.checkListStatus != current.checkListStatus ||
                    previous.isGridView != current.isGridView,
                builder: (context, state) {
                  return state.checkListStatus.when(
                    loading: () => const Text('loading'),
                    success: () {
                      if (state.checklists.isEmpty) {
                        return const Text('No Checklists');
                      } else {
                        if (state.isGridView) {
                          return GridView.builder(
                            itemCount: state.checklists.length,
                            controller: _scrollController,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.9,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 20,
                                ),
                            itemBuilder: (context, index) {
                              return _CheckGridItem(
                                checkList: state.checklists[index],
                              );
                            },
                          );
                        } else {
                          return ListView.separated(
                            itemCount: state.checklists.length,
                            controller: _scrollController,
                            separatorBuilder: (_, _) =>
                                const SizedBox(height: 15),
                            itemBuilder: (context, index) {
                              return _CheckListItem(
                                checkList: state.checklists[index],
                              );
                            },
                          );
                        }
                      }
                    },
                    failure: () => Text(state.message),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckListItem extends StatelessWidget {
  final ChecklistModel checkList;
  const _CheckListItem({required this.checkList});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.router.push(CheckListDetailsRoute(checkList: checkList)),
      onLongPress: () => context.openBottomSheet(
        child: BlocProvider<CreateChecklistCubit>.value(
          value: context.read<CreateChecklistCubit>(),
          child: ActionsBottomSheet(
            onEditTap: () => context.openBottomSheet(
              isDismissible: false,
              child: BlocProvider<CreateChecklistCubit>.value(
                value: context.read<CreateChecklistCubit>()
                  ..onNameChanged(checkListName: checkList.name)
                  ..onDescriptionChanged(
                    description: checkList.description ?? '',
                  ),
                child: CreateChecklist.update(checkListId: checkList.id),
              ),
            ),
            onDeleteTap: () => context.openDialog(
              child: DeleteDialogBox(
                onDelete: () => context
                    .read<CreateChecklistCubit>()
                    .deleteCheckList(checkListId: checkList.id),
              ),
            ),
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpasityX(opasity: 0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            CustomCircularProgressIndicator(progress: checkList.progress),
            15.horizontalSpace,
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(checkList.name),
                Text(
                  '${checkList.progress.$1}/${checkList.progress.$2} Items Completed',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

class _CheckGridItem extends StatelessWidget {
  final ChecklistModel checkList;
  const _CheckGridItem({required this.checkList});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.router.push(CheckListDetailsRoute(checkList: checkList)),
      onLongPress: () => context.openBottomSheet(
        child: BlocProvider<CreateChecklistCubit>.value(
          value: context.read<CreateChecklistCubit>(),
          child: ActionsBottomSheet(
            onEditTap: () => context.openBottomSheet(
              isDismissible: false,
              child: BlocProvider<CreateChecklistCubit>.value(
                value: context.read<CreateChecklistCubit>()
                  ..onNameChanged(checkListName: checkList.name)
                  ..onDescriptionChanged(
                    description: checkList.description ?? '',
                  ),
                child: CreateChecklist.update(checkListId: checkList.id),
              ),
            ),
            onDeleteTap: () => context.openDialog(
              child: DeleteDialogBox(
                onDelete: () => context
                    .read<CreateChecklistCubit>()
                    .deleteCheckList(checkListId: checkList.id),
              ),
            ),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpasityX(opasity: 0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: .start,
          mainAxisAlignment: .center,
          children: [
            Center(
              child: CustomCircularProgressIndicator(
                progress: checkList.progress,
                strokeWidth: 12,
                constraints: const BoxConstraints(minHeight: 65, minWidth: 65),
              ),
            ),
            20.verticalSpace,
            Text(
              checkList.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            5.verticalSpace,
            Text(
              '${checkList.progress.$1}/${checkList.progress.$2} Items',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
            ),
            5.verticalSpace,

            Text(
              DateFormat(
                'MMM d, yyyy',
              ).format(DateTime.parse(checkList.updatedAt)),
              style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }
}
