import 'package:flutter/material.dart';
import 'package:propease/core/l10n/app_locatization.dart';
import 'package:propease/core/routes/app_router.dart';
import 'package:propease/core/theme/theme.dart';

void main(List<String> args) {
  runApp(PropeaseApp());
}

class PropeaseApp extends StatelessWidget {
  const PropeaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.darkTheme,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerConfig: AppRouter.router,
    );
  }
}
