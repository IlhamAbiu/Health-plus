import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/features/app_info/app_info.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/ui/themes/light_theme.dart';

import 'router.dart';

class AppBuilder {
  AppBuilder();

  Widget build() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) => HealthCubit(),
        ),
      ],
      child: MaterialApp.router(
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
      ),
    );
  }
}
