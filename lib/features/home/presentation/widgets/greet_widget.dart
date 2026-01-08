import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';

class GreetWidget extends StatelessWidget {
  const GreetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.l10n.letsFindYour),
            Text(context.l10n.favoriteHome),
          ],
        ),
        CircleAvatar(radius: 12),
      ],
    );
  }
}
