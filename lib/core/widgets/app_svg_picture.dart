import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSvgPicture extends StatelessWidget {
  final String assetPath;
  const AppSvgPicture({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetPath);
  }
}
