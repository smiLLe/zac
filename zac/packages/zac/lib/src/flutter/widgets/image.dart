import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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

  Image _buildWidget(ZacContext zacContext) {
    return map(
      network: (value) => Image.network(
        value.src.build(zacContext),
        key: value.key?.buildOrNull(zacContext),
        scale: value.scale?.buildOrNull(zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.buildOrNull(zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.buildOrNull(zacContext) ?? false,
        width: value.width?.buildOrNull(zacContext),
        height: value.height?.buildOrNull(zacContext),
        color: value.color?.buildOrNull(zacContext),
        colorBlendMode: value.colorBlendMode?.buildOrNull(zacContext),
        fit: value.fit?.buildOrNull(zacContext),
        alignment: value.alignment?.buildOrNull(zacContext) ?? Alignment.center,
        repeat: value.repeat?.buildOrNull(zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.buildOrNull(zacContext),
        matchTextDirection:
            value.matchTextDirection?.buildOrNull(zacContext) ?? false,
        gaplessPlayback:
            value.gaplessPlayback?.buildOrNull(zacContext) ?? false,
        filterQuality:
            value.filterQuality?.buildOrNull(zacContext) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.buildOrNull(zacContext) ?? false,
        headers: value.headers,
        cacheWidth: value.cacheWidth?.buildOrNull(zacContext),
        cacheHeight: value.cacheHeight?.buildOrNull(zacContext),
      ),
      asset: (value) => Image.asset(
        value.name.build(zacContext),
        key: value.key?.buildOrNull(zacContext),
        scale: value.scale?.buildOrNull(zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.buildOrNull(zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.buildOrNull(zacContext) ?? false,
        width: value.width?.buildOrNull(zacContext),
        height: value.height?.buildOrNull(zacContext),
        color: value.color?.buildOrNull(zacContext),
        colorBlendMode: value.colorBlendMode?.buildOrNull(zacContext),
        fit: value.fit?.buildOrNull(zacContext),
        alignment: value.alignment?.buildOrNull(zacContext) ?? Alignment.center,
        repeat: value.repeat?.buildOrNull(zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.buildOrNull(zacContext),
        matchTextDirection:
            value.matchTextDirection?.buildOrNull(zacContext) ?? false,
        gaplessPlayback:
            value.gaplessPlayback?.buildOrNull(zacContext) ?? false,
        filterQuality:
            value.filterQuality?.buildOrNull(zacContext) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.buildOrNull(zacContext) ?? false,
        cacheWidth: value.cacheWidth?.buildOrNull(zacContext),
        cacheHeight: value.cacheHeight?.buildOrNull(zacContext),
        package: value.package?.buildOrNull(zacContext),
      ),
    );
  }

  @override
  Image build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Image? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
