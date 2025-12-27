import 'package:flutter/material.dart';

class AppPngPicture extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final Color? color;

  const AppPngPicture({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.boxFit,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: width,
      height: height,
      fit: boxFit ?? BoxFit.contain,
      color: color,
    );
  }
}
