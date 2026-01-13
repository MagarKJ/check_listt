import 'package:auto_route/auto_route.dart';
import 'package:check_list/core/router/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@Singleton()
@Injectable()
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: CheckListDetailsRoute.page),
  ];
}
