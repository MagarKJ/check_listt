import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// A StatefulWidget that dynamically adjusts its size based on the content.
///
/// The `WidgetSize` class is used to create a widget that can change its size
/// dynamically according to the size of its child widget. This is useful when
/// you want to create a responsive layout that adapts to different screen sizes
/// and orientations.
class WidgetSize extends StatefulWidget {
  final Widget child;
  final void Function(Size? size) onChange;

  const WidgetSize({
    super.key,
    required this.child,
    required this.onChange,
  });

  @override
  State<WidgetSize> createState() => _WidgetSizeState();
}

class _WidgetSizeState extends State<WidgetSize> {
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(postFrameCallback);
    return SizedBox(
      key: widgetKey,
      child: widget.child,
    );
  }

  var widgetKey = GlobalKey();
  Size? oldSize;

  void postFrameCallback(dynamic _) {
    var context = widgetKey.currentContext;
    if (context == null) return;

    var newSize = context.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    widget.onChange(newSize);
  }
}
