import 'package:auto_route/auto_route.dart';
import 'package:check_list/core/enums/loading_status.dart';
import 'package:check_list/core/utils/extensions/colors_extension.dart';
import 'package:check_list/core/utils/extensions/context_extension.dart';
import 'package:check_list/core/utils/extensions/num_extension.dart';
import 'package:check_list/core/utils/extensions/widget_extension.dart';
import 'package:check_list/src/home/bloc/create_new_checklist_cubit/create_new_checklist_cubit.dart';
import 'package:check_list/src/home/bloc/home_bloc/home_bloc.dart';
import 'package:check_list/src/home/create_new_checklist.dart';
import 'package:check_list/src/home/data/model/checklist_model.dart';
import 'package:check_list/src/widgets/animated_fab.dart';
import 'package:check_list/src/widgets/custom_divider.dart';
import 'package:check_list/src/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  @override
  Widget wrappedRoute(BuildContext context) =>
      MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (_) => HomeBloc()
              ..add(const HomeEvent.watchCheckListData()),
          ),
          BlocProvider<CreateNewChecklistCubit>(
            create: (_) => CreateNewChecklistCubit(),
          ),
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
    return BlocListener<
      CreateNewChecklistCubit,
      CreateNewChecklistState
    >(
      listenWhen: (previous, current) =>
          previous.createNewCheckListStatus !=
          current.createNewCheckListStatus,
      listener: (context, state) {
        state.createNewCheckListStatus.listenWhen(
          success: () {
            context.pop();
            SnackBar(content: Text(state.message));
          },
          failure: () {
            context.pop();
            SnackBar(content: Text(state.message));
          },
        );
      },
      child: Scaffold(
        floatingActionButton: AnimatedFab(
          scrollController: _scrollController,
          onTap: () => context.openBottomSheet(
            child:
                BlocProvider<CreateNewChecklistCubit>.value(
                  value: context
                      .read<CreateNewChecklistCubit>(),
                  child: const CreateNewChecklistScreen(),
                ),
          ),
        ),
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: .start,
          children: [
            const CustomDivider(),
            const Text(
              'My Checklists',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ).paddingX(
              padding: const EdgeInsets.only(
                left: 25,
                bottom: 15,
              ),
            ),
            15.verticalSpace,
            Expanded(
              child: BlocBuilder<HomeBloc, HomeState>(
                buildWhen: (previous, current) =>
                    previous.checklists !=
                        current.checklists ||
                    previous.checkListStatus !=
                        current.checkListStatus,
                builder: (context, state) {
                  return state.checkListStatus.when(
                    loading: () => const Text('loading'),
                    success: () {
                      return state.checklists.isEmpty
                          ? EmptyWidget(
                              onTap: () {
                                context.openBottomSheet(
                                  child:
                                      BlocProvider<
                                        CreateNewChecklistCubit
                                      >.value(
                                        value: context
                                            .read<
                                              CreateNewChecklistCubit
                                            >(),
                                        child:
                                            const CreateNewChecklistScreen(),
                                      ),
                                );
                              },
                            )
                          : ListView.separated(
                              itemCount:
                                  state.checklists.length,
                              controller: _scrollController,
                              separatorBuilder: (_, _) =>
                                  const SizedBox(
                                    height: 15,
                                  ),
                              itemBuilder: (context, index) {
                                return CheckListItem(
                                  checkList: state
                                      .checklists[index],
                                );
                              },
                            );
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

class CheckListItem extends StatelessWidget {
  final ChecklistModel checkList;
  const CheckListItem({super.key, required this.checkList});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpasityX(opasity: 0.4),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.luggage),
          15.horizontalSpace,
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(checkList.name),
              Text(
                checkList.description ?? '',
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
