import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/flutter/painting/painting.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@defaultConverterFreezed
class FlutterImage with _$FlutterImage implements ZacWidget {
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
  Image buildWidget(ZacBuildContext context) {
    return map(
      network: (value) => Image.network(
        value.src.getValue(context),
        key: value.key?.buildKey(context),
        scale: value.scale?.getValue(context) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(context),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(context) ?? false,
        width: value.width?.getValue(context),
        height: value.height?.getValue(context),
        color: value.color?.build(context),
        colorBlendMode: value.colorBlendMode?.build(context),
        fit: value.fit?.build(context),
        alignment: value.alignment?.build(context) ?? Alignment.center,
        repeat: value.repeat?.build(context) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(context),
        matchTextDirection:
            value.matchTextDirection?.getValue(context) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(context) ?? false,
        filterQuality: value.filterQuality?.build(context) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(context) ?? false,
        headers: value.headers,
        cacheWidth: value.cacheWidth?.getValue(context),
        cacheHeight: value.cacheHeight?.getValue(context),
      ),
      asset: (value) => Image.asset(
        value.name.getValue(context),
        key: value.key?.buildKey(context),
        scale: value.scale?.getValue(context) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(context),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(context) ?? false,
        width: value.width?.getValue(context),
        height: value.height?.getValue(context),
        color: value.color?.build(context),
        colorBlendMode: value.colorBlendMode?.build(context),
        fit: value.fit?.build(context),
        alignment: value.alignment?.build(context) ?? Alignment.center,
        repeat: value.repeat?.build(context) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(context),
        matchTextDirection:
            value.matchTextDirection?.getValue(context) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(context) ?? false,
        filterQuality: value.filterQuality?.build(context) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(context) ?? false,
        cacheWidth: value.cacheWidth?.getValue(context),
        cacheHeight: value.cacheHeight?.getValue(context),
      ),
    );
  }
}
