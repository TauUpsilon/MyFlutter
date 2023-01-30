import 'package:flutter_proj/shared/services/api.service.dart';
import 'package:flutter_proj/shared/services/logging.service.dart';
import 'package:flutter_proj/shared/services/model.service.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_proj/api/services/mbm081018.service.dart';

class AppLocator {
  static final locator = GetIt.instance;

  static initLocator() {
    GetIt getIt = locator;

    getIt.registerLazySingleton<LoggingService>(() => LoggingService());
    getIt.registerLazySingleton<ApiService>(() => ApiService());
    getIt.registerLazySingleton<ModelService>(() => ModelService());
    getIt.registerLazySingleton<MBM081018Service>(() => MBM081018Service());
  }
}
