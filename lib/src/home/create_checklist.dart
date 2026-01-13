import 'package:check_list/src/home/bloc/create_checklist_cubit/create_checklist_cubit.dart';
import 'package:check_list/src/widgets/custom_button.dart';
import 'package:check_list/src/widgets/custom_text_feild.dart';
import 'package:check_list/src/widgets/pop_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateChecklist extends StatelessWidget {
  final bool isUpdate;
  final String? checkListId;
  const CreateChecklist({super.key}) : isUpdate = false, checkListId = null;
  const CreateChecklist.update({super.key, required this.checkListId})
    : isUpdate = true;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        spacing: 20,
        children: [
          const Row(
            mainAxisAlignment: .start,
            children: [
              PopButton(),

              Text(
                'Checklist',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          BlocSelector<CreateChecklistCubit, CreateChecklistState, String>(
            selector: (state) => state.checkListName,
            builder: (context, checkListName) {
              return CustomTextFeild(
                initialValue: checkListName,
                hintText: 'Enter your new checklist name',
                isRequired: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
                onChanged: (value) =>
                    context.read<CreateChecklistCubit>()
                      ..onNameChanged(checkListName: value),
              );
            },
          ),
          BlocSelector<CreateChecklistCubit, CreateChecklistState, String>(
            selector: (state) => state.description,
            builder: (context, description) {
              return CustomTextFeild(
                initialValue: description,
                hintText: 'Description',
                maxLines: 4,
                onChanged: (value) =>
                    context.read<CreateChecklistCubit>()
                      ..onDescriptionChanged(description: value),
              );
            },
          ),
          CustomButton(
            label: isUpdate ? 'Update' : 'Save',
            onTap: () {
              if (!formKey.currentState!.validate()) return;
              if (isUpdate) {
                context.read<CreateChecklistCubit>().updateCheckList(
                  checkListId: checkListId!,
                );
              } else {
                context.read<CreateChecklistCubit>().createNewCheckList();
              }
            },
          ),
        ],
      ),
    );
  }
}
