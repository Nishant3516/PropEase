import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? label;
  final String? hint;
  final void Function() onPressed;

  const AppButton({this.label, this.hint, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(onPressed: onPressed, label: label, hint: hint);
  }
}
