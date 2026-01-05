import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_icon.dart';
import 'package:propease/gen/assets.gen.dart';

class PropertyStatItem extends StatelessWidget {
  const PropertyStatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppIcon(
          iconPath: Assets.icons.bookmarkIc,
          iconColor: Colors.blue,
          iconSize: 32,
        ),
        const SizedBox(height: 8),
        Text(
          'value',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text('label', style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}
