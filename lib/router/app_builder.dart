import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:heath_plus/features/app_info/app_info.dart';
import 'package:heath_plus/generated/l10n.dart';
import 'package:heath_plus/ui/themes/light_theme.dart';

import 'router.dart';

class AppBuilder {
  AppBuilder();

  Widget build() {
    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
      title: AppInfo.instance.appName,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
