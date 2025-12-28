// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_locatization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'My Flutter App';

  @override
  String get hello => 'Hello';

  @override
  String get getStarted => 'Get Started';

  @override
  String get skip => 'Skip';

  @override
  String get onboardingCompleted => 'Onboarding Completed!';

  @override
  String get onboardingTitle1 => 'Find Your Perfect Home';

  @override
  String get onboardingDescription1 =>
      'Browse thousands of verified properties tailored to your lifestyle, budget, and preferred location.';

  @override
  String get onboardingTitle2 => 'Smart Search & Filters';

  @override
  String get onboardingDescription2 =>
      'Use advanced filters, maps, and personalized recommendations to quickly find homes that match your needs.';

  @override
  String get onboardingTitle3 => 'Connect & Close Faster';

  @override
  String get onboardingDescription3 =>
      'Chat with agents, schedule visits, and manage your property journey seamlessly from start to finish.';
}
