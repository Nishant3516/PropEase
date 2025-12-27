import 'package:flutter/material.dart';
import 'package:propease/core/constants/app_gaps.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/widgets/app_button.dart';
import 'package:propease/core/widgets/app_png_picture.dart';
import 'package:propease/core/widgets/app_svg_picture.dart';
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
            AppPngPicture(
              assetPath: Assets.images.splash.path,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.7,
              boxFit: BoxFit.cover,
            ),
            Column(
              children: [
                AppSvgPicture(assetPath: Assets.images.logoWithName),
                AppGaps.h16,
                AppButton(onPressed: () {}, label: context.l10n.getStarted),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
