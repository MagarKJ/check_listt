import 'package:flutter/material.dart';

extension ColorsExtension on MaterialColor {
  Color withOpasityX({required double opasity}) =>
      withValues(alpha: opasity);
}
