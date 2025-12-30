import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/core/widgets/app_button.dart';
import 'package:propease/core/widgets/app_text_field.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Text(context.l10n.completeYourProfile),
          Text(
            context.l10n.dontWorryText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          CircleAvatar(),
          AppTextField(fieldName: context.l10n.age),
          AppButton(label: context.l10n.completeProfile, onPressed: () {}),
        ],
      ),
    );
  }
}
