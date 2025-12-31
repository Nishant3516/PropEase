import 'package:flutter/material.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_image.dart';

class OnboardingImageWidgetProps {
  final String imagePath;
  final String heading;
  final String description;

  const OnboardingImageWidgetProps({
    required this.imagePath,
    required this.heading,
    required this.description,
  });
}

class OnboardingImageWidget extends StatelessWidget {
  final OnboardingImageWidgetProps props;
  const OnboardingImageWidget({super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppImage(assetPath: props.imagePath),
          Text(props.heading, textAlign: TextAlign.center),
          AppGaps.h8,
          Text(props.description, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
