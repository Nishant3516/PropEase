import 'package:flutter/material.dart';
import 'package:propease/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF2F80ED),
      secondary: Color(0xFF56CCF2),
    ),
    extensions: const [
      AppColorScheme(
        primary: Color(0xFF2F80ED),
        secondary: Color(0xFF56CCF2),
        border: Color(0xFFE0E0E0),
        success: Color(0xFF27AE60),
        warning: Color(0xFFF2994A),
        white: Colors.white,
      ),
    ],
  );
  static ThemeData darkTheme = ThemeData();
}
