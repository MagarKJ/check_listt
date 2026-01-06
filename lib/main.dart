import 'package:auto_route/auto_route.dart';
import 'package:check_list/config/app_config.dart';
import 'package:check_list/core/router/app_router.dart';
import 'package:check_list/di/di.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final AppRouter _appRouter = sl<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Check List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          centerTitle: true,
          surfaceTintColor: Colors.white,
        ),
      ),

      routeInformationParser: _appRouter
          .defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
    );
  }
}
