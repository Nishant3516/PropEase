import 'package:flutter/material.dart';
import 'package:propease/core/l10n/app_locatization.dart';
import 'package:propease/core/theme/app_colors.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

extension ThemeColors on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;

  AppColorScheme get appColors => Theme.of(this).extension<AppColorScheme>()!;
}
