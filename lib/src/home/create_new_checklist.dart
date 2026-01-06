import 'package:auto_route/auto_route.dart';
import 'package:check_list/core/utils/extensions/num_extension.dart';
import 'package:check_list/src/home/bloc/create_new_checklist_cubit/create_new_checklist_cubit.dart';
import 'package:check_list/src/widgets/custom_button.dart';
import 'package:check_list/src/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNewChecklistScreen extends StatelessWidget {
  const CreateNewChecklistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: .start,
          children: [
            GestureDetector(
              onTap: () => context.pop(),
              child: const Icon(Icons.arrow_back_ios_new),
            ),
            20.horizontalSpace,
            const Text(
              'Checklist',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        CustomTextFeild(
          hintText: 'Enter your new checklist name',
          onChanged: (value) =>
              context.read<CreateNewChecklistCubit>()
                ..onNameChanged(checkListName: value),
        ),
        CustomTextFeild(
          hintText: 'Description',
          maxLines: 4,
          onChanged: (value) =>
              context.read<CreateNewChecklistCubit>()
                ..onDescriptionChanged(description: value),
        ),
        CustomButton(
          onTap: () =>
              context.read<CreateNewChecklistCubit>()
                ..createNewCheckList(),
        ),
      ],
    );
  }
}
