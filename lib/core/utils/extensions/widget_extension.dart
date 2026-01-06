import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget paddingX({required EdgeInsetsGeometry padding}) =>
      Padding(padding: padding, child: this);
}
