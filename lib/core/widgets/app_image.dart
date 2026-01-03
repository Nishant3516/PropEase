import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppImageType { png, svg }

class AppImage extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final Color? color;
  final AppImageType imageType;

  const AppImage({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.boxFit,
    this.color,
    this.imageType = AppImageType.svg,
  });

  @override
  Widget build(BuildContext context) {
    switch (imageType) {
      case AppImageType.png:
        return Image.asset(
          assetPath,
          width: width,
          height: height,
          fit: boxFit ?? BoxFit.contain,
          color: color,
        );
      case AppImageType.svg:
        return SvgPicture.asset(
          assetPath,
          width: width,
          height: height,
          fit: boxFit ?? BoxFit.contain,
          colorFilter: color != null
              ? ColorFilter.mode(color!, BlendMode.srcIn)
              : null,
        );
    }
  }
}
