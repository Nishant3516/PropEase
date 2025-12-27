import 'package:go_router/go_router.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/core/routes/routes.dart';

class AppRouter {
  // static GlobalKey<NavigatorState> rootNavigatorKey =
  //     ServiceLocator.getIt<GlobalKey<NavigatorState>>();

  static GoRouter get router => GoRouter(
    initialLocation: AppPages.splash.path,
    debugLogDiagnostics: true,
    // navigatorKey: rootNavigatorKey,
    routes: routes,
    // errorBuilder: (context, state) => const ErrorPage(),
  );
}
