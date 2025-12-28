import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:propease/core/constants/app_sizes.dart';
import 'package:propease/core/constants/app_spacing.dart';

enum AppIconVariant { plain, circular }

class AppIcon extends StatelessWidget {
  final String iconPath;
  final Color? iconColor;
  final double iconSize;
  final double containerSize;
  final Color? backgroundColor;
  final AppIconVariant variant;
  final VoidCallback? onPressed;

  const AppIcon({
    required this.iconPath,
    this.iconColor,
    this.iconSize = AppSizes.iconSm,
    this.containerSize = AppSizes.iconLg,
    this.backgroundColor,
    this.variant = AppIconVariant.plain,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final icon = SvgPicture.asset(
      iconPath,
      height: iconSize,
      width: iconSize,
      colorFilter: iconColor == null
          ? null
          : ColorFilter.mode(iconColor!, BlendMode.srcIn),
    );

    final child = variant == AppIconVariant.circular
        ? Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            // height: containerSize,
            // width: containerSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor ?? Theme.of(context).colorScheme.surface,
              border: BoxBorder.all(
                color: iconColor ?? Theme.of(context).colorScheme.primary,
              ),
            ),
            alignment: Alignment.center,
            child: icon,
          )
        : icon;

    return GestureDetector(
      onTap: onPressed,
      // behavior: HitTestBehavior.opaque,
      child: child,
    );
  }
}
