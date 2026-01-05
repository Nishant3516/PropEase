import 'package:go_router/go_router.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/core/widgets/main_scaffold.dart';
import 'package:propease/features/auth/presentation/pages/complete_profile_page.dart';
import 'package:propease/features/auth/presentation/pages/login_page.dart';
import 'package:propease/features/auth/presentation/pages/signup_page.dart';
import 'package:propease/features/home/presentation/pages/home_page.dart';
import 'package:propease/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:propease/features/property_detail/presentation/pages/property_detail_page.dart';
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
  GoRoute(
    path: AppPages.login.path,
    name: AppPages.login.name,
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: AppPages.signup.path,
    name: AppPages.signup.name,
    builder: (context, state) => SignupPage(),
  ),
  GoRoute(
    path: AppPages.completeProfile.path,
    name: AppPages.completeProfile.name,
    builder: (context, state) => CompleteProfilePage(),
  ),

  ShellRoute(
    builder: (context, state, child) =>
        MainScaffold(location: state.uri.toString(), child: child),
    routes: [
      GoRoute(
        path: AppPages.home.path,
        name: AppPages.home.name,
        pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
      ),
      // GoRoute(
      //   path: AppPages.home.path,
      //   name: AppPages.home.name,
      //   pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
      // ),
      // GoRoute(
      //   path: AppPages.home.path,
      //   name: AppPages.home.name,
      //   pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
      // ),
      // GoRoute(
      //   path: AppPages.home.path,
      //   name: AppPages.home.name,
      //   pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
      // ),
    ],
  ),
  GoRoute(
    path: AppPages.propertyDetail.path,
    name: AppPages.propertyDetail.name,
    builder: (context, state) => PropertyDetailPage(),
  ),
];
