import 'package:flutter/material.dart';
import 'package:propease/core/widgets/app_image.dart';
import 'package:propease/gen/assets.gen.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int currentIndex;
  final void Function(BuildContext context, int index) onItemTapped;

  const BottomNavigationWidget({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => onItemTapped(context, index),
      items: [
        BottomNavigationBarItem(
          icon: AppImage(assetPath: Assets.icons.backArrowIc),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: AppImage(assetPath: Assets.icons.backArrowIc),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: AppImage(assetPath: Assets.icons.backArrowIc),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: AppImage(assetPath: Assets.icons.backArrowIc),
          label: 'Profile',
        ),
      ],
    );
  }
}
