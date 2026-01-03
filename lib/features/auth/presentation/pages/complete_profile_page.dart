import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/core/widgets/app_button.dart';
import 'package:propease/core/widgets/app_gaps.dart';
import 'package:propease/core/widgets/app_text_field.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.l10n.completeYourProfile),
            Text(
              context.l10n.dontWorryText,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            AppGaps.h8,
            CircleAvatar(),
            AppGaps.h16,
            AppTextField(fieldName: context.l10n.age),
            AppGaps.h8,
            AppButton(
              label: context.l10n.completeProfile,
              onPressed: () {
                context.pushReplacement(AppPages.home.path);
              },
            ),
          ],
        ),
      ),
    );
  }
}
