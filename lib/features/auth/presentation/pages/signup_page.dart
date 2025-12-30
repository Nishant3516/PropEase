import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/core/widgets/app_button.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_svg_picture.dart';
import 'package:propease/core/widgets/app_text_field.dart';
import 'package:propease/core/widgets/divider_with_text_widget.dart';
import 'package:propease/features/auth/presentation/widgets/create_account_text.dart';
import 'package:propease/features/auth/presentation/widgets/social_media_action_buttons_widget.dart';
import 'package:propease/gen/assets.gen.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSvgPicture(assetPath: Assets.images.logoWithName),
            Text(context.l10n.signUp),
            AppTextField(
              fieldName: context.l10n.name,
              hintText: context.l10n.name,
            ),
            AppGaps.h8,
            AppTextField(
              fieldName: context.l10n.email,
              hintText: context.l10n.email,
            ),
            AppGaps.h8,
            AppTextField(
              fieldName: context.l10n.password,
              hintText: context.l10n.password,
            ),
            AppGaps.h8,
            AppTextField(
              fieldName: context.l10n.confirmPassword,
              hintText: context.l10n.confirmPassword,
            ),
            AppGaps.h8,
            AppButton(
              label: context.l10n.signUp,
              onPressed: () {
                context.push(AppPages.completeProfile.path);
              },
            ),
            AppGaps.h4,
            CreateAccountText(redirectToLoginPage: true),
            AppGaps.h8,
            DividerWithText(text: context.l10n.orContinueWith),
            AppGaps.h8,
            SocialMediaActionButtonsWidget(),
          ],
        ),
      ),
    );
  }
}
