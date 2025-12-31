import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_image.dart';
import 'package:propease/gen/assets.gen.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: AppImage(assetPath: Assets.icons.backArrowIc),
        ),
      ],
    );
  }
}
