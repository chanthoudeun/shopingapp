/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Chip_Mong_Mall.png
  AssetGenImage get chipMongMall =>
      const AssetGenImage('assets/images/Chip_Mong_Mall.png');

  /// File path: assets/images/Chip_Mong_Mall_list.png
  AssetGenImage get chipMongMallList =>
      const AssetGenImage('assets/images/Chip_Mong_Mall_list.png');

  /// File path: assets/images/Chip_Mong_Malls_Logo.jpg
  AssetGenImage get chipMongMallsLogo =>
      const AssetGenImage('assets/images/Chip_Mong_Malls_Logo.jpg');

  /// File path: assets/images/Chip_Mong_Shop_list.png
  AssetGenImage get chipMongShopList =>
      const AssetGenImage('assets/images/Chip_Mong_Shop_list.png');

  /// File path: assets/images/Chip_Mong_Supermarket.png
  AssetGenImage get chipMongSupermarket =>
      const AssetGenImage('assets/images/Chip_Mong_Supermarket.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        chipMongMall,
        chipMongMallList,
        chipMongMallsLogo,
        chipMongShopList,
        chipMongSupermarket
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
