import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:propease/core/routes/router_utils.dart';
import 'package:propease/core/utils/extensions.dart';

class CreateAccountText extends StatelessWidget {
  final bool redirectToLoginPage;
  const CreateAccountText({super.key, this.redirectToLoginPage = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (redirectToLoginPage) {
          context.pushReplacement(AppPages.login.path);
        } else {
          context.pushReplacement(AppPages.signup.path);
        }
      },
      child: RichText(
        text: TextSpan(
          text: redirectToLoginPage
              ? context.l10n.alreadyHaveAnAccont
              : context.l10n.dontHaveAnAccount,
          style: Theme.of(context).textTheme.bodyMedium,
          children: [
            TextSpan(
              text: redirectToLoginPage
                  ? context.l10n.signIn
                  : context.l10n.createAccount,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
