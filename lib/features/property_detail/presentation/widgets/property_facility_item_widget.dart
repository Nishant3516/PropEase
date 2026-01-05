import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_icon.dart';
import 'package:propease/gen/assets.gen.dart';

class PropertyFacilityItemWidget extends StatelessWidget {
  const PropertyFacilityItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: AppIcon(
            iconPath: Assets.icons.backArrowIc,
            backgroundColor: Colors.blue,
            iconSize: 28,
          ),
        ),
        const SizedBox(height: 8),
        Text('label', style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
