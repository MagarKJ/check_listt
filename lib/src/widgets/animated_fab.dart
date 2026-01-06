import 'package:check_list/core/utils/extensions/colors_extension.dart';
import 'package:check_list/src/widgets/dynamic_size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimatedFab extends StatefulWidget {
  final ScrollController? scrollController;
  final void Function()? onTap;
  final String? label;

  const AnimatedFab({super.key, this.scrollController, this.onTap, this.label});

  @override
  State<AnimatedFab> createState() => _AnimatedFabState();
}

class _AnimatedFabState extends State<AnimatedFab> {
  late final ScrollController _scrollController;
  bool _isExpanded = false;
  double _labelWidth = 0;

  void _onScrollDirection() {
    if (_scrollController.position.userScrollDirection ==
            ScrollDirection.reverse &&
        _isExpanded) {
      _isExpanded = !_isExpanded;
    } else if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward &&
        !_isExpanded) {
      _isExpanded = !_isExpanded;
    }
    setState(() {});
  }

  @override
  void initState() {
    _scrollController = widget.scrollController ?? ScrollController();
    _scrollController.addListener(_onScrollDirection);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollDirection);
    if (widget.scrollController == null) {
      _scrollController.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const position = _minSize / 2 - _iconSize / 2;
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: _isExpanded ? _labelWidth : _minSize,
        height: _minSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blueAccent,
          border: Border.all(color: Colors.grey.withOpasityX(opasity: .6)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 16,
              offset: Offset(0, -4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned(
              top: position,
              left: position,
              child: Icon(Icons.add, size: _iconSize, color: Colors.white),
            ),
            Positioned(
              top: position - .23 * _iconSize,
              left: position + 2 * _iconSize,
              child: WidgetSize(
                onChange: (size) {
                  _labelWidth = (size?.width ?? 0) + _minSize + 14;
                  setState(() {});
                },
                child: Center(
                  child: Text(
                    widget.label ?? 'Add Checklist',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const _minSize = 56.0;

const _iconSize = 18.0;
