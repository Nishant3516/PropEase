import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  const DividerWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: MediaQuery.sizeOf(context).width * 0.3),
        Text(text),
        Container(width: MediaQuery.sizeOf(context).width * 0.3),
      ],
    );
  }
}
