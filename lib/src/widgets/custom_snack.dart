import 'package:check_list/core/utils/extensions/num_extension.dart';
import 'package:flutter/material.dart';

class Snack {
  static void _showSnack(
    BuildContext context,
    String message,
    IconData iconData, {
    Color? backgroundColor,
    Duration? duration,
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: duration ?? const Duration(seconds: 2),
          backgroundColor: backgroundColor,
          elevation: 4,
          dismissDirection: DismissDirection.startToEnd,
          hitTestBehavior: HitTestBehavior.opaque,
          behavior: SnackBarBehavior.floating,
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(iconData, size: 16, color: Colors.black),
              ),
              8.horizontalSpace,
              Expanded(
                child: Text(
                  message,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      );
  }

  static void success(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    _showSnack(
      context,
      message,
      Icons.check,
      backgroundColor: Colors.green,
      duration: duration,
    );
  }

  static void error(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    _showSnack(context, message, Icons.close, backgroundColor: Colors.red);
  }
}
