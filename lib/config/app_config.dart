import 'package:check_list/di/injection.dart';

class AppConfig {
  static Future<void> initialize() async {
    await Future.wait([configureInjection()]);
  }
}
