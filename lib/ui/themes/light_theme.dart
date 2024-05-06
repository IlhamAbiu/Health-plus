import 'package:flutter/material.dart';

final lightTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light().copyWith(
    background: const Color(0xFFFAFAFF),
    surface: Colors.white,
    shadow: const Color(0xFFEDEEFB).withOpacity(0.8),
    primary: const Color(0xFF585CE5),
    onPrimary: Colors.white,
    primaryContainer: const Color(0xFFD0D1FF),
  ),
);
