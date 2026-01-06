import 'package:check_list/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

///
///Dependency Injection Cannot be done with classes with constructors
///
final GetIt sl = GetIt.instance;

@injectableInit
Future<void> configureInjection() async {
  sl.init();
}
