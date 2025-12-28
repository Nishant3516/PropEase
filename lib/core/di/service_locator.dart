import 'package:get_it/get_it.dart';
import 'package:propease/core/di/blocs_di.dart';

class ServiceLocator {
  static final GetIt getIt = GetIt.instance;

  void setupDI() async {
    Blocs.register(getIt);
  }
}
