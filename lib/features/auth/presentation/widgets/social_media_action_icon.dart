import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_svg_picture.dart';

class SocialMediaActionIcon extends StatelessWidget {
  final String assetPath;
  const SocialMediaActionIcon({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return AppSvgPicture(assetPath: assetPath);
  }
}
