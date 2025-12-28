import 'package:get_it/get_it.dart';
import 'package:propease/features/onboarding/presentation/onboarding_page/onboarding_page_bloc.dart';

class Blocs {
  static void register(GetIt getIt) async {
    getIt.registerFactory(() => OnboardingPageBloc());
  }
}
