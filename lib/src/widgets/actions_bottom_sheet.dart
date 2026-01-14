import 'package:check_list/core/utils/extensions/num_extension.dart';
import 'package:check_list/src/widgets/pop_button.dart';
import 'package:flutter/material.dart';

class ActionsBottomSheet extends StatelessWidget {
  final void Function() onEditTap, onDeleteTap;
  final void Function()? onMarkAsCompletedTap;
  final bool isItem;
  const ActionsBottomSheet({
    super.key,
    required this.onEditTap,
    required this.onDeleteTap,
    required this.onMarkAsCompletedTap,
  }) : isItem = false;
  const ActionsBottomSheet.items({
    super.key,
    required this.onEditTap,
    required this.onDeleteTap,
  }) : isItem = true,
       onMarkAsCompletedTap = null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: .min,
      children: [
        const Row(
          children: [
            PopButton(),
            Text(
              'Actions',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        20.verticalSpace,
        if (!isItem) ...[
          _ActionItem(
            label: 'Mark Completed',
            onTap: onMarkAsCompletedTap!,
            icon: Icons.checklist_sharp,
          ),
          15.verticalSpace,
          _ActionItem(
            label: 'Archive Checklist',
            onTap: () {},
            icon: Icons.archive_outlined,
          ),
          15.verticalSpace,
        ],
        _ActionItem(
          label: 'Edit Checklist',
          onTap: onEditTap,
          icon: Icons.edit,
        ),
        15.verticalSpace,
        _ActionItem(
          label: 'Delete Checklist',
          onTap: onDeleteTap,
          icon: Icons.delete,
          color: Colors.red,
        ),
      ],
    );
  }
}

class _ActionItem extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final IconData icon;
  final Color? color;
  const _ActionItem({
    required this.label,
    required this.onTap,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 20, color: color ?? Colors.blueGrey),
          10.horizontalSpace,
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
