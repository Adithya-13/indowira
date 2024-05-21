/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/Notification.svg');

  /// File path: assets/icons/Search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/Search.svg');

  /// File path: assets/icons/account.svg
  SvgGenImage get account => const SvgGenImage('assets/icons/account.svg');

  /// File path: assets/icons/action.svg
  SvgGenImage get action => const SvgGenImage('assets/icons/action.svg');

  /// File path: assets/icons/archive.svg
  SvgGenImage get archive => const SvgGenImage('assets/icons/archive.svg');

  /// File path: assets/icons/feed.svg
  SvgGenImage get feed => const SvgGenImage('assets/icons/feed.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/wire_leader.svg
  SvgGenImage get wireLeader =>
      const SvgGenImage('assets/icons/wire_leader.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [notification, search, account, action, archive, feed, home, wireLeader];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/freelancer-logo.png
  AssetGenImage get freelancerLogo =>
      const AssetGenImage('assets/images/freelancer-logo.png');

  /// File path: assets/images/indowira-logo.png
  AssetGenImage get indowiraLogo =>
      const AssetGenImage('assets/images/indowira-logo.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/masak-asik-logo.png
  AssetGenImage get masakAsikLogo =>
      const AssetGenImage('assets/images/masak-asik-logo.png');

  /// File path: assets/images/sepedaan-logo.png
  AssetGenImage get sepedaanLogo =>
      const AssetGenImage('assets/images/sepedaan-logo.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [freelancerLogo, indowiraLogo, logo, masakAsikLogo, sepedaanLogo];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/artikel_sheet.svg
  SvgGenImage get artikelSheet =>
      const SvgGenImage('assets/svgs/artikel_sheet.svg');

  /// File path: assets/svgs/charity_sheet.svg
  SvgGenImage get charitySheet =>
      const SvgGenImage('assets/svgs/charity_sheet.svg');

  /// File path: assets/svgs/event_sheet.svg
  SvgGenImage get eventSheet =>
      const SvgGenImage('assets/svgs/event_sheet.svg');

  /// File path: assets/svgs/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/svgs/facebook.svg');

  /// File path: assets/svgs/feed_sheet.svg
  SvgGenImage get feedSheet => const SvgGenImage('assets/svgs/feed_sheet.svg');

  /// File path: assets/svgs/forum_sheet.svg
  SvgGenImage get forumSheet =>
      const SvgGenImage('assets/svgs/forum_sheet.svg');

  /// File path: assets/svgs/google.svg
  SvgGenImage get google => const SvgGenImage('assets/svgs/google.svg');

  /// File path: assets/svgs/grup_sheet.svg
  SvgGenImage get grupSheet => const SvgGenImage('assets/svgs/grup_sheet.svg');

  /// File path: assets/svgs/job_sheet.svg
  SvgGenImage get jobSheet => const SvgGenImage('assets/svgs/job_sheet.svg');

  /// File path: assets/svgs/kelas_sheet.svg
  SvgGenImage get kelasSheet =>
      const SvgGenImage('assets/svgs/kelas_sheet.svg');

  /// File path: assets/svgs/komunitas_sheet.svg
  SvgGenImage get komunitasSheet =>
      const SvgGenImage('assets/svgs/komunitas_sheet.svg');

  /// File path: assets/svgs/mentoring_sheet.svg
  SvgGenImage get mentoringSheet =>
      const SvgGenImage('assets/svgs/mentoring_sheet.svg');

  /// File path: assets/svgs/project_sheet.svg
  SvgGenImage get projectSheet =>
      const SvgGenImage('assets/svgs/project_sheet.svg');

  /// File path: assets/svgs/splash.svg
  SvgGenImage get splash => const SvgGenImage('assets/svgs/splash.svg');

  /// File path: assets/svgs/usaha_sheet.svg
  SvgGenImage get usahaSheet =>
      const SvgGenImage('assets/svgs/usaha_sheet.svg');

  /// File path: assets/svgs/welcome_banner.svg
  SvgGenImage get welcomeBanner =>
      const SvgGenImage('assets/svgs/welcome_banner.svg');

  /// File path: assets/svgs/whatsapp.svg
  SvgGenImage get whatsapp => const SvgGenImage('assets/svgs/whatsapp.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        artikelSheet,
        charitySheet,
        eventSheet,
        facebook,
        feedSheet,
        forumSheet,
        google,
        grupSheet,
        jobSheet,
        kelasSheet,
        komunitasSheet,
        mentoringSheet,
        projectSheet,
        splash,
        usahaSheet,
        welcomeBanner,
        whatsapp
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

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
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
