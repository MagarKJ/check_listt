import 'package:check_list/core/utils/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  double get deviceWidth => MediaQuery.sizeOf(this).width;
  double get deviceHeight => MediaQuery.sizeOf(this).height;

  Future<T?> openBottomSheet<T>({required Widget child, bool? isDismissible}) =>
      showModalBottomSheet<T>(
        context: this,
        isDismissible: isDismissible ?? true,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (ctx) =>
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: child,
            ).paddingX(
              padding: EdgeInsets.only(
                bottom: MediaQuery.viewInsetsOf(ctx).bottom,
              ),
            ),
      );

  Future<T?> openDialog<T>({required Widget child}) => showDialog<T>(
    context: this,
    builder: (ctx) => Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(padding: const EdgeInsets.all(20), child: child),
    ),
  );
}
