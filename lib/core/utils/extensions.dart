import 'package:flutter/material.dart';
import 'package:propease/core/l10n/app_locatization.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
