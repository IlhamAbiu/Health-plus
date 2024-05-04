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

  /// File path: assets/svg/home_selected.svg
  SvgGenImage get homeSelected =>
      const SvgGenImage('assets/svg/home_selected.svg');

  /// File path: assets/svg/home_unselected.svg
  SvgGenImage get homeUnselected =>
      const SvgGenImage('assets/svg/home_unselected.svg');

  /// File path: assets/svg/recommendation_selected.svg
  SvgGenImage get recommendationSelected =>
      const SvgGenImage('assets/svg/recommendation_selected.svg');

  /// File path: assets/svg/recommendation_unselected.svg
  SvgGenImage get recommendationUnselected =>
      const SvgGenImage('assets/svg/recommendation_unselected.svg');

  /// File path: assets/svg/statistics_selected.svg
  SvgGenImage get statisticsSelected =>
      const SvgGenImage('assets/svg/statistics_selected.svg');

  /// File path: assets/svg/statistics_unselected.svg
  SvgGenImage get statisticsUnselected =>
      const SvgGenImage('assets/svg/statistics_unselected.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        homeSelected,
        homeUnselected,
        recommendationSelected,
        recommendationUnselected,
        statisticsSelected,
        statisticsUnselected
      ];
}

class Assets {
  Assets._();

  static const $AssetsSvgGen svg = $AssetsSvgGen();
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
