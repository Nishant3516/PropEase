import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_icon.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final String? fieldName;
  final String? hintText;
  final TextEditingController? controller;
  final String? suffixIcon;
  final String? prefixIcon;
  final VoidCallback? onPrefixIconPressed;
  final VoidCallback? onsuffixIconPressed;

  const AppTextField({
    super.key,
    this.label,
    this.fieldName,
    this.hintText,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.onPrefixIconPressed,
    this.onsuffixIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (fieldName != null) ...[Text(fieldName!), AppGaps.h16],
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon != null
                ? AppIcon(iconPath: suffixIcon!)
                : null,
            prefixIcon: prefixIcon != null
                ? AppIcon(iconPath: prefixIcon!)
                : null,
          ),
        ),
      ],
    );
  }
}
