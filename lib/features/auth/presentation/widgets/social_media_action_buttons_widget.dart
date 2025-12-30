import 'package:flutter/material.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/features/auth/presentation/widgets/social_media_action_icon.dart';
import 'package:propease/gen/assets.gen.dart';

class SocialMediaActionButtonsWidget extends StatelessWidget {
  const SocialMediaActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: AppSpacing.sm,
      children: [
        SocialMediaActionIcon(assetPath: Assets.icons.backArrowIc),
        SocialMediaActionIcon(assetPath: Assets.icons.backArrowIc),
        SocialMediaActionIcon(assetPath: Assets.icons.backArrowIc),
      ],
    );
  }
}
