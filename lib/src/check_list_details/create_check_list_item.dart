import 'package:check_list/src/check_list_details/bloc/create_check_list_item_cubit/create_check_list_item_cubit.dart';
import 'package:check_list/src/widgets/custom_button.dart';
import 'package:check_list/src/widgets/custom_text_feild.dart';
import 'package:check_list/src/widgets/pop_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateCheckListItem extends StatelessWidget {
  final bool isUpdate;
  final String checkListId;
  final String? checkListItemId;
  const CreateCheckListItem({super.key, required this.checkListId})
    : isUpdate = false,
      checkListItemId = null;
  const CreateCheckListItem.update({
    super.key,
    required this.checkListId,
    required this.checkListItemId,
  }) : isUpdate = true;

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
                'Checklist Item',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          BlocSelector<
            CreateCheckListItemCubit,
            CreateCheckListItemState,
            String
          >(
            selector: (state) => state.name,
            builder: (context, name) {
              return CustomTextFeild(
                initialValue: name,
                hintText: 'Enter your item name',
                isRequired: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
                onChanged: (value) {
                  context.read<CreateCheckListItemCubit>().onNameChanged(
                    name: value,
                  );
                },
              );
            },
          ),
          const Text(
            'Give your checklist item a clear amd memorable name',
            style: TextStyle(color: Colors.grey),
          ),
          CustomButton(
            label: isUpdate ? 'Update' : 'Save',
            onTap: () {
              if (!formKey.currentState!.validate()) return;
              if (isUpdate) {
                context
                    .read<CreateCheckListItemCubit>()
                    .updateCheckListItemName(id: checkListItemId!);
              } else {
                context.read<CreateCheckListItemCubit>().createCheckListItem(
                  checkListId: checkListId,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
