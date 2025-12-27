import 'package:flutter/material.dart';
import 'package:propease/core/constants/app_spacing.dart';

enum AppButtonType { filled, outlined, text }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final AppButtonType buttonType;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool fullWidth;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.buttonType = AppButtonType.filled,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.width,
    this.height = AppSpacing.xxl,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.all(AppSpacing.md),
    this.prefixIcon,
    this.suffixIcon,
    this.fontSize = 16.0,
    this.fontWeight,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
