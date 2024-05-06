/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/blood_oxygen.svg
  SvgGenImage get bloodOxygen =>
      const SvgGenImage('assets/svg/blood_oxygen.svg');

  /// File path: assets/svg/blood_pressure.svg
  SvgGenImage get bloodPressure =>
      const SvgGenImage('assets/svg/blood_pressure.svg');

  /// File path: assets/svg/body_mass.svg
  SvgGenImage get bodyMass => const SvgGenImage('assets/svg/body_mass.svg');

  /// File path: assets/svg/fat_mass.svg
  SvgGenImage get fatMass => const SvgGenImage('assets/svg/fat_mass.svg');

  /// File path: assets/svg/home_selected.svg
  SvgGenImage get homeSelected =>
      const SvgGenImage('assets/svg/home_selected.svg');

  /// File path: assets/svg/home_unselected.svg
  SvgGenImage get homeUnselected =>
      const SvgGenImage('assets/svg/home_unselected.svg');

  /// File path: assets/svg/muscle_mass.svg
  SvgGenImage get muscleMass => const SvgGenImage('assets/svg/muscle_mass.svg');

  /// File path: assets/svg/pulse_throughout_the_day.svg
  SvgGenImage get pulseThroughoutTheDay =>
      const SvgGenImage('assets/svg/pulse_throughout_the_day.svg');

  /// File path: assets/svg/recommendation_selected.svg
  SvgGenImage get recommendationSelected =>
      const SvgGenImage('assets/svg/recommendation_selected.svg');

  /// File path: assets/svg/recommendation_unselected.svg
  SvgGenImage get recommendationUnselected =>
      const SvgGenImage('assets/svg/recommendation_unselected.svg');

  /// File path: assets/svg/sleep_duration.svg
  SvgGenImage get sleepDuration =>
      const SvgGenImage('assets/svg/sleep_duration.svg');

  /// File path: assets/svg/sleep_from.svg
  SvgGenImage get sleepFrom => const SvgGenImage('assets/svg/sleep_from.svg');

  /// File path: assets/svg/sleep_to.svg
  SvgGenImage get sleepTo => const SvgGenImage('assets/svg/sleep_to.svg');

  /// File path: assets/svg/statistics_selected.svg
  SvgGenImage get statisticsSelected =>
      const SvgGenImage('assets/svg/statistics_selected.svg');

  /// File path: assets/svg/statistics_unselected.svg
  SvgGenImage get statisticsUnselected =>
      const SvgGenImage('assets/svg/statistics_unselected.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        bloodOxygen,
        bloodPressure,
        bodyMass,
        fatMass,
        homeSelected,
        homeUnselected,
        muscleMass,
        pulseThroughoutTheDay,
        recommendationSelected,
        recommendationUnselected,
        sleepDuration,
        sleepFrom,
        sleepTo,
        statisticsSelected,
        statisticsUnselected
      ];
}

class Assets {
  Assets._();

  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
