import 'package:flutter/material.dart';
import 'package:propease/core/constants/app_sizes.dart';
import 'package:propease/core/constants/app_spacing.dart';
import 'package:propease/core/widgets/app_icon.dart';
import 'package:propease/gen/assets.gen.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusMd),
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(AppSpacing.md),
      child: AppIcon(iconPath: Assets.icons.filter),
    );
  }
}
