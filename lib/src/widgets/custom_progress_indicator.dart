import 'package:check_list/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final (int, int) progress;
  final BoxConstraints? constraints;
  final double? strokeWidth;
  const CustomCircularProgressIndicator({
    super.key,
    required this.progress,
    this.constraints,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    final value = progress.$2 == 0 ? null : progress.$1 / progress.$2;
    return CircularProgressIndicator.adaptive(
      value: value ?? 0,
      strokeCap: StrokeCap.round,
      constraints: constraints,
      strokeWidth: strokeWidth,
      valueColor: AlwaysStoppedAnimation(
        value != 1 ? Colors.blue : Colors.green,
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}

class CustomLinearProgressIndicator extends StatelessWidget {
  final (int, int) progress;
  const CustomLinearProgressIndicator({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final value = progress.$2 == 0 ? null : progress.$1 / progress.$2;
    if (value == null) return const SizedBox.shrink();
    return LinearProgressIndicator(
      value: value,
      backgroundColor: Colors.grey.shade300,
      color: value != 1 ? Colors.blue : Colors.green,
      borderRadius: BorderRadius.circular(12),
      minHeight: 10,
    ).paddingX(padding: const EdgeInsets.symmetric(horizontal: 5));
  }
}
