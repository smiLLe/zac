import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterImage with _$FlutterImage implements FlutterWidget {
  const FlutterImage._();

  static const String unionValueNetwork = 'f:1:Image.network';
  static const String unionValueAsset = 'f:1:Image.asset';

  factory FlutterImage.fromJson(Map<String, dynamic> json) =>
      _$FlutterImageFromJson(json);

  @FreezedUnionValue(FlutterImage.unionValueNetwork)
  factory FlutterImage.network(
    ZacValue<String> src, {
    FlutterKey? key,
    ZacValue<double>? scale,
    // ImageFrameBuilder? frameBuilder,
    // ImageLoadingBuilder? loadingBuilder,
    // ImageErrorWidgetBuilder? errorBuilder,
    ZacValue<String>? semanticLabel,
    ZacValue<bool>? excludeFromSemantics,
    ZacValue<double>? width,
    ZacValue<double>? height,
    FlutterColor? color,
    // Animation<double>? opacity,
    FlutterBlendMode? colorBlendMode,
    FlutterBoxFit? fit,
    FlutterAlignmentGeometry? alignment,
    FlutterImageRepeat? repeat,
    FlutterRect? centerSlice,
    ZacValue<bool>? matchTextDirection,
    ZacValue<bool>? gaplessPlayback,
    FlutterFilterQuality? filterQuality,
    ZacValue<bool>? isAntiAlias,
    Map<String, String>? headers,
    ZacValue<int>? cacheWidth,
    ZacValue<int>? cacheHeight,
  }) = _FlutterImageNetowrk;

  @FreezedUnionValue(FlutterImage.unionValueAsset)
  factory FlutterImage.asset(
    ZacValue<String> name, {
    FlutterKey? key,
// AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
    ZacValue<String>? semanticLabel,
    ZacValue<bool>? excludeFromSemantics,
    ZacValue<double>? scale,
    ZacValue<double>? width,
    ZacValue<double>? height,
    FlutterColor? color,
// Animation<double>? opacity,
    FlutterBlendMode? colorBlendMode,
    FlutterBoxFit? fit,
    FlutterAlignmentGeometry? alignment,
    FlutterImageRepeat? repeat,
    FlutterRect? centerSlice,
    ZacValue<bool>? matchTextDirection,
    ZacValue<bool>? gaplessPlayback,
    ZacValue<bool>? isAntiAlias,
    ZacValue<String>? package,
    FlutterFilterQuality? filterQuality,
    ZacValue<int>? cacheWidth,
    ZacValue<int>? cacheHeight,
  }) = _FlutterImageAsset;

  @override
  Image buildWidget(ZacContext zacContext) {
    return map(
      network: (value) => Image.network(
        value.src.getValue(zacContext),
        key: value.key?.buildKey(zacContext),
        scale: value.scale?.getValue(zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(zacContext) ?? false,
        width: value.width?.getValue(zacContext),
        height: value.height?.getValue(zacContext),
        color: value.color?.build(zacContext),
        colorBlendMode: value.colorBlendMode?.build(zacContext),
        fit: value.fit?.build(zacContext),
        alignment: value.alignment?.build(zacContext) ?? Alignment.center,
        repeat: value.repeat?.build(zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(zacContext),
        matchTextDirection:
            value.matchTextDirection?.getValue(zacContext) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(zacContext) ?? false,
        filterQuality:
            value.filterQuality?.build(zacContext) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(zacContext) ?? false,
        headers: value.headers,
        cacheWidth: value.cacheWidth?.getValue(zacContext),
        cacheHeight: value.cacheHeight?.getValue(zacContext),
      ),
      asset: (value) => Image.asset(
        value.name.getValue(zacContext),
        key: value.key?.buildKey(zacContext),
        scale: value.scale?.getValue(zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(zacContext) ?? false,
        width: value.width?.getValue(zacContext),
        height: value.height?.getValue(zacContext),
        color: value.color?.build(zacContext),
        colorBlendMode: value.colorBlendMode?.build(zacContext),
        fit: value.fit?.build(zacContext),
        alignment: value.alignment?.build(zacContext) ?? Alignment.center,
        repeat: value.repeat?.build(zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(zacContext),
        matchTextDirection:
            value.matchTextDirection?.getValue(zacContext) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(zacContext) ?? false,
        filterQuality:
            value.filterQuality?.build(zacContext) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(zacContext) ?? false,
        cacheWidth: value.cacheWidth?.getValue(zacContext),
        cacheHeight: value.cacheHeight?.getValue(zacContext),
      ),
    );
  }
}
