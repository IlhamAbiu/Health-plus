import 'package:flutter/widgets.dart';

import 'router/app_builder.dart';
import 'router/app_runner.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final runner = AppRunner();
  final builder = AppBuilder();
  runner.run(builder);
}
