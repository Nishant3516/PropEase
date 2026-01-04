import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_image.dart';
import 'package:propease/gen/assets.gen.dart';

class ReviewThumbnailWidget extends StatelessWidget {
  const ReviewThumbnailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: AppImage(
        assetPath: Assets.images.property.path,
        imageType: AppImageType.png,
      ),
    );
  }
}
