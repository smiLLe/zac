import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@defaultConverterFreezed
class FlutterImage with _$FlutterImage implements FlutterWidget {
  const FlutterImage._();

  static const String unionValueNetwork = 'f:1:Image.network';
  static const String unionValueAsset = 'f:1:Image.asset';

  factory FlutterImage.fromJson(Map<String, dynamic> json) =>
      _$FlutterImageFromJson(json);

  @FreezedUnionValue(FlutterImage.unionValueNetwork)
  factory FlutterImage.network(
    ZacString src, {
    FlutterKey? key,
    ZacDouble? scale,
    // ImageFrameBuilder? frameBuilder,
    // ImageLoadingBuilder? loadingBuilder,
    // ImageErrorWidgetBuilder? errorBuilder,
    ZacString? semanticLabel,
    ZacBool? excludeFromSemantics,
    ZacDouble? width,
    ZacDouble? height,
    FlutterColor? color,
    // Animation<double>? opacity,
    FlutterBlendMode? colorBlendMode,
    FlutterBoxFit? fit,
    FlutterAlignmentGeometry? alignment,
    FlutterImageRepeat? repeat,
    FlutterRect? centerSlice,
    ZacBool? matchTextDirection,
    ZacBool? gaplessPlayback,
    FlutterFilterQuality? filterQuality,
    ZacBool? isAntiAlias,
    Map<String, String>? headers,
    ZacInt? cacheWidth,
    ZacInt? cacheHeight,
  }) = _FlutterImageNetowrk;

  @FreezedUnionValue(FlutterImage.unionValueAsset)
  factory FlutterImage.asset(
    ZacString name, {
    FlutterKey? key,
// AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
    ZacString? semanticLabel,
    ZacBool? excludeFromSemantics,
    ZacDouble? scale,
    ZacDouble? width,
    ZacDouble? height,
    FlutterColor? color,
// Animation<double>? opacity,
    FlutterBlendMode? colorBlendMode,
    FlutterBoxFit? fit,
    FlutterAlignmentGeometry? alignment,
    FlutterImageRepeat? repeat,
    FlutterRect? centerSlice,
    ZacBool? matchTextDirection,
    ZacBool? gaplessPlayback,
    ZacBool? isAntiAlias,
    ZacString? package,
    FlutterFilterQuality? filterQuality,
    ZacInt? cacheWidth,
    ZacInt? cacheHeight,
  }) = _FlutterImageAsset;

  @override
  Image buildWidget(ZacOriginWidgetTree origin) {
    return map(
      network: (value) => Image.network(
        value.src.getValue(origin),
        key: value.key?.buildKey(origin),
        scale: value.scale?.getValue(origin) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(origin),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(origin) ?? false,
        width: value.width?.getValue(origin),
        height: value.height?.getValue(origin),
        color: value.color?.build(origin),
        colorBlendMode: value.colorBlendMode?.build(origin),
        fit: value.fit?.build(origin),
        alignment: value.alignment?.build(origin) ?? Alignment.center,
        repeat: value.repeat?.build(origin) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(origin),
        matchTextDirection: value.matchTextDirection?.getValue(origin) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(origin) ?? false,
        filterQuality: value.filterQuality?.build(origin) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(origin) ?? false,
        headers: value.headers,
        cacheWidth: value.cacheWidth?.getValue(origin),
        cacheHeight: value.cacheHeight?.getValue(origin),
      ),
      asset: (value) => Image.asset(
        value.name.getValue(origin),
        key: value.key?.buildKey(origin),
        scale: value.scale?.getValue(origin) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(origin),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(origin) ?? false,
        width: value.width?.getValue(origin),
        height: value.height?.getValue(origin),
        color: value.color?.build(origin),
        colorBlendMode: value.colorBlendMode?.build(origin),
        fit: value.fit?.build(origin),
        alignment: value.alignment?.build(origin) ?? Alignment.center,
        repeat: value.repeat?.build(origin) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(origin),
        matchTextDirection: value.matchTextDirection?.getValue(origin) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(origin) ?? false,
        filterQuality: value.filterQuality?.build(origin) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(origin) ?? false,
        cacheWidth: value.cacheWidth?.getValue(origin),
        cacheHeight: value.cacheHeight?.getValue(origin),
      ),
    );
  }
}
