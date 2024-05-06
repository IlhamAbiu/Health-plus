import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_plus/features/app_info/app_info.dart';

import 'app_builder.dart';

class AppRunner {
  Future<void> preloadData() async {
    await AppInfo.initialize();
  }

  Future<void> run(AppBuilder builder) async {
    await preloadData();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(builder.build());
  }
}
