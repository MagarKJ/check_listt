// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:check_list/src/check_list_details/check_list_details_screen.dart'
    as _i1;
import 'package:check_list/src/home/data/model/checklist_model.dart' as _i5;
import 'package:check_list/src/home/home_screen.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

/// generated route for
/// [_i1.CheckListDetailsScreen]
class CheckListDetailsRoute
    extends _i3.PageRouteInfo<CheckListDetailsRouteArgs> {
  CheckListDetailsRoute({
    _i4.Key? key,
    required _i5.ChecklistModel checkList,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         CheckListDetailsRoute.name,
         args: CheckListDetailsRouteArgs(key: key, checkList: checkList),
         initialChildren: children,
       );

  static const String name = 'CheckListDetailsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CheckListDetailsRouteArgs>();
      return _i3.WrappedRoute(
        child: _i1.CheckListDetailsScreen(
          key: args.key,
          checkList: args.checkList,
        ),
      );
    },
  );
}

class CheckListDetailsRouteArgs {
  const CheckListDetailsRouteArgs({this.key, required this.checkList});

  final _i4.Key? key;

  final _i5.ChecklistModel checkList;

  @override
  String toString() {
    return 'CheckListDetailsRouteArgs{key: $key, checkList: $checkList}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CheckListDetailsRouteArgs) return false;
    return key == other.key && checkList == other.checkList;
  }

  @override
  int get hashCode => key.hashCode ^ checkList.hashCode;
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return _i3.WrappedRoute(child: const _i2.HomeScreen());
    },
  );
}
