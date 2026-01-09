import 'package:flutter/material.dart';
import 'package:propease/core/utils/extensions.dart';
import 'package:propease/features/home/presentation/widgets/property_card.dart';

class PropertiesNearYouWidget extends StatelessWidget {
  const PropertiesNearYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(context.l10n.nearYou), Text(context.l10n.more)],
        ),

        Column(
          children: [
            PropertyCard(showInDetail: true),
            PropertyCard(showInDetail: true),
          ],
        ),
      ],
    );
  }
}
