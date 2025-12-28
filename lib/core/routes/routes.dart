import 'package:go_router/go_router.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:propease/features/splash/presentation/pages/splash.dart';

final List<RouteBase> routes = [
  GoRoute(
    path: AppPages.splash.path,
    name: AppPages.splash.name,
    builder: (context, state) => SplashPage(),
  ),
  GoRoute(
    path: AppPages.onboarding.path,
    name: AppPages.onboarding.name,
    builder: (context, state) => OnboardingPageProvider(),
  ),
];
