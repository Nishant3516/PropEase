import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_icon.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final String? fieldName;
  final String? hintText;
  final TextEditingController? controller;
  final String? suffixIcon;
  final String? prefixIcon;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
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
    this.prefixWidget,
    this.suffixWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (fieldName != null) ...[Text(fieldName!), AppGaps.h8],
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: context.appColors.secondary),
            ),
            suffixIcon: suffixIcon != null
                ? AppIcon(iconPath: suffixIcon!)
                : null,
            prefixIcon: prefixIcon != null
                ? AppIcon(iconPath: prefixIcon!)
                : null,
            suffix: suffixWidget,
            prefix: prefixWidget,
          ),
        ),
      ],
    );
  }
}
