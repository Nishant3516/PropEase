import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/core/widgets/app_button.dart';
import 'package:propease/core/widgets/app_svg_picture.dart';
import 'package:propease/core/widgets/app_text_field.dart';
import 'package:propease/core/widgets/divider_with_text_widget.dart';
import 'package:propease/features/auth/presentation/widgets/social_media_action_buttons_widget.dart';
import 'package:propease/gen/assets.gen.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppSvgPicture(assetPath: Assets.images.logoWithName),
          Text(context.l10n.signUp),
          AppTextField(fieldName: context.l10n.name),
          AppTextField(fieldName: context.l10n.email),
          AppTextField(fieldName: context.l10n.password),
          AppTextField(fieldName: context.l10n.confirmPassword),
          AppButton(label: context.l10n.signUp, onPressed: () {}),
          DividerWithText(text: context.l10n.orContinueWith),
          SocialMediaActionButtonsWidget(),
        ],
      ),
    );
  }
}
