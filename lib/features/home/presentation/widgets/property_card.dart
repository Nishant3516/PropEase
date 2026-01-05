import 'package:flutter/material.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/widgets/app_icon.dart';
import 'package:propease/core/widgets/app_image.dart';
import 'package:propease/gen/assets.gen.dart';

class PropertyCard extends StatelessWidget {
  final double? width;
  final bool showInDetail;

  const PropertyCard({super.key, this.width, this.showInDetail = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppImage(
            assetPath: Assets.images.property.path,
            imageType: AppImageType.png,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('\$340/month'),
                  Row(
                    children: [
                      AppIcon(iconPath: Assets.icons.backArrowIc),
                      Text("address"),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(AppSpacing.sm),
                child: AppIcon(iconPath: Assets.icons.bookmark),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
