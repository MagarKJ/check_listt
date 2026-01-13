import 'package:check_list/core/utils/extensions/context_extension.dart';
import 'package:check_list/core/utils/extensions/widget_extension.dart';
import 'package:check_list/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final void Function() onTap;
  const EmptyWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Image.asset(
            'assets/images/empty_check_list.avif',
            height: context.deviceHeight * 0.3,
          ),
          const Text(
            'You have no checklists yet! Create one to get started.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          CustomButton(
            onTap: onTap,
            label: 'Create Check List',
          ),
        ],
      ).paddingX(padding: const .symmetric(horizontal: 25)),
    );
  }
}
