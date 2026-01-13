import 'package:auto_route/auto_route.dart';
import 'package:check_list/core/utils/extensions/num_extension.dart';
import 'package:check_list/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DeleteDialogBox extends StatelessWidget {
  final void Function() onDelete;
  const DeleteDialogBox({super.key, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      children: [
        const Text(
          'Delete Checklist?',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        20.verticalSpace,
        const Text(
          'Are you sure you want to delete this checklist? This action cannot be undone.',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        15.verticalSpace,
        Row(
          children: [
            Expanded(
              child: CustomButton.outlined(
                onTap: () => context.pop(),
                label: 'Cancel',
              ),
            ),
            15.horizontalSpace,
            Expanded(
              child: CustomButton(
                onTap: onDelete,
                label: 'Delete',
                colors: const [Colors.redAccent, Colors.red],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
