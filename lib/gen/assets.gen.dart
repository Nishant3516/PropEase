// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back_arrow_ic.svg
  String get backArrowIc => 'assets/icons/back_arrow_ic.svg';

  /// File path: assets/icons/bookmark.svg
  String get bookmark => 'assets/icons/bookmark.svg';

  /// File path: assets/icons/bookmark_ic.svg
  String get bookmarkIc => 'assets/icons/bookmark_ic.svg';

  /// File path: assets/icons/filter.svg
  String get filter => 'assets/icons/filter.svg';

  /// File path: assets/icons/home_ic.svg
  String get homeIc => 'assets/icons/home_ic.svg';

  /// File path: assets/icons/location_pin_ic.svg
  String get locationPinIc => 'assets/icons/location_pin_ic.svg';

  /// File path: assets/icons/next_arrow_ic.svg
  String get nextArrowIc => 'assets/icons/next_arrow_ic.svg';

  /// File path: assets/icons/profile_ic.svg
  String get profileIc => 'assets/icons/profile_ic.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// List of all assets
  List<String> get values => [
    backArrowIc,
    bookmark,
    bookmarkIc,
    filter,
    homeIc,
    locationPinIc,
    nextArrowIc,
    profileIc,
    search,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo_with_name.svg
  String get logoWithName => 'assets/images/logo_with_name.svg';

  /// Directory path: assets/images/onboarding
  $AssetsImagesOnboardingGen get onboarding =>
      const $AssetsImagesOnboardingGen();

  /// File path: assets/images/property.png
  AssetGenImage get property =>
      const AssetGenImage('assets/images/property.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<dynamic> get values => [logoWithName, property, splash];
}

class $AssetsL10nGen {
  const $AssetsL10nGen();

  /// File path: assets/l10n/app_en.arb
  String get appEn => 'assets/l10n/app_en.arb';

  /// File path: assets/l10n/app_hi.arb
  String get appHi => 'assets/l10n/app_hi.arb';

  /// List of all assets
  List<String> get values => [appEn, appHi];
}

class $AssetsImagesOnboardingGen {
  const $AssetsImagesOnboardingGen();

  /// File path: assets/images/onboarding/onboarding_1.svg
  String get onboarding1 => 'assets/images/onboarding/onboarding_1.svg';

  /// File path: assets/images/onboarding/onboarding_2.svg
  String get onboarding2 => 'assets/images/onboarding/onboarding_2.svg';

  /// File path: assets/images/onboarding/onboarding_3.svg
  String get onboarding3 => 'assets/images/onboarding/onboarding_3.svg';

  /// List of all assets
  List<String> get values => [onboarding1, onboarding2, onboarding3];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsL10nGen l10n = $AssetsL10nGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
