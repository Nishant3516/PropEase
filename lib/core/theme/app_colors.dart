import 'package:flutter/material.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  const AppColorScheme({
    required this.primary,
    required this.secondary,
    required this.border,
    required this.success,
    required this.warning,
    required this.white,
  });

  final Color primary;
  final Color secondary;
  final Color border;
  final Color success;
  final Color warning;
  final Color white;

  @override
  AppColorScheme copyWith({
    Color? primary,
    Color? secondary,
    Color? border,
    Color? success,
    Color? warning,
    Color? white,
  }) {
    return AppColorScheme(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      border: border ?? this.border,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      white: white ?? this.white,
    );
  }

  @override
  AppColorScheme lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) return this;
    return AppColorScheme(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      border: Color.lerp(border, other.border, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}
