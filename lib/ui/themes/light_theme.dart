import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFFAFAFF),
  cardColor: Colors.white,
  shadowColor: const Color(0xFFEDEEFB).withOpacity(0.8),
  colorScheme: ColorScheme(
    surface: const Color(0xFFFAFAFF),
    shadow: const Color(0xFFEDEEFB).withOpacity(0.8),
    primary: const Color(0xFF585CE5),
    onPrimary: Colors.white,
    primaryContainer: const Color(0xFFD0D1FF),
    brightness: Brightness.light,
    secondary: Colors.blue,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    onSurface: Colors.black,
  ),
);
