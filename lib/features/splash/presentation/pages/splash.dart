import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/core/widgets/app_button.dart';
import 'package:propease/core/widgets/app_image.dart';
import 'package:propease/gen/assets.gen.dart';
import 'package:propease/core/utils/extensions.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: AppSpacing.xxl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage(
              assetPath: Assets.images.splash.path,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              boxFit: BoxFit.cover,
              imageType: AppImageType.png,
            ),
            Column(
              children: [
                AppImage(assetPath: Assets.images.logoWithName),
                AppGaps.h16,
                AppButton(
                  onPressed: () {
                    context.push(AppPages.onboarding.path);
                  },
                  label: context.l10n.getStarted,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
