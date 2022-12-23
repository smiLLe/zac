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
class FlutterImage with _$FlutterImage implements ZacBuilder<Image> {
  const FlutterImage._();

  static const String unionValueNetwork = 'f:1:Image.network';
  static const String unionValueAsset = 'f:1:Image.asset';

  factory FlutterImage.fromJson(Map<String, dynamic> json) =>
      _$FlutterImageFromJson(json);

  @FreezedUnionValue(FlutterImage.unionValueNetwork)
  factory FlutterImage.network(
    ZacValue<String> src, {
    ZacValue<Key?>? key,
    ZacValue<double?>? scale,
    // ImageFrameBuilder? frameBuilder,
    // ImageLoadingBuilder? loadingBuilder,
    // ImageErrorWidgetBuilder? errorBuilder,
    ZacValue<String?>? semanticLabel,
    ZacValue<bool?>? excludeFromSemantics,
    ZacValue<double?>? width,
    ZacValue<double?>? height,
    ZacValue<Color?>? color,
    // Animation<double>? opacity,
    FlutterBlendMode? colorBlendMode,
    FlutterBoxFit? fit,
    ZacValue<AlignmentGeometry?>? alignment,
    FlutterImageRepeat? repeat,
    FlutterRect? centerSlice,
    ZacValue<bool?>? matchTextDirection,
    ZacValue<bool?>? gaplessPlayback,
    FlutterFilterQuality? filterQuality,
    ZacValue<bool?>? isAntiAlias,
    Map<String, String>? headers,
    ZacValue<int?>? cacheWidth,
    ZacValue<int?>? cacheHeight,
  }) = _FlutterImageNetowrk;

  @FreezedUnionValue(FlutterImage.unionValueAsset)
  factory FlutterImage.asset(
    ZacValue<String> name, {
    ZacValue<Key?>? key,
// AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
    ZacValue<String?>? semanticLabel,
    ZacValue<bool?>? excludeFromSemantics,
    ZacValue<double?>? scale,
    ZacValue<double?>? width,
    ZacValue<double?>? height,
    ZacValue<Color?>? color,
// Animation<double>? opacity,
    FlutterBlendMode? colorBlendMode,
    FlutterBoxFit? fit,
    ZacValue<AlignmentGeometry?>? alignment,
    FlutterImageRepeat? repeat,
    FlutterRect? centerSlice,
    ZacValue<bool?>? matchTextDirection,
    ZacValue<bool?>? gaplessPlayback,
    ZacValue<bool?>? isAntiAlias,
    ZacValue<String?>? package,
    FlutterFilterQuality? filterQuality,
    ZacValue<int?>? cacheWidth,
    ZacValue<int?>? cacheHeight,
  }) = _FlutterImageAsset;

  Image _buildWidget(ZacContext zacContext) {
    return map(
      network: (value) => Image.network(
        value.src.build(zacContext),
        key: value.key?.build(zacContext),
        scale: value.scale?.build(zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.build(zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.build(zacContext) ?? false,
        width: value.width?.build(zacContext),
        height: value.height?.build(zacContext),
        color: value.color?.build(zacContext),
        colorBlendMode: value.colorBlendMode?.build(zacContext),
        fit: value.fit?.build(zacContext),
        alignment: value.alignment?.build(zacContext) ?? Alignment.center,
        repeat: value.repeat?.build(zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(zacContext),
        matchTextDirection:
            value.matchTextDirection?.build(zacContext) ?? false,
        gaplessPlayback: value.gaplessPlayback?.build(zacContext) ?? false,
        filterQuality:
            value.filterQuality?.build(zacContext) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.build(zacContext) ?? false,
        headers: value.headers,
        cacheWidth: value.cacheWidth?.build(zacContext),
        cacheHeight: value.cacheHeight?.build(zacContext),
      ),
      asset: (value) => Image.asset(
        value.name.build(zacContext),
        key: value.key?.build(zacContext),
        scale: value.scale?.build(zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.build(zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.build(zacContext) ?? false,
        width: value.width?.build(zacContext),
        height: value.height?.build(zacContext),
        color: value.color?.build(zacContext),
        colorBlendMode: value.colorBlendMode?.build(zacContext),
        fit: value.fit?.build(zacContext),
        alignment: value.alignment?.build(zacContext) ?? Alignment.center,
        repeat: value.repeat?.build(zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(zacContext),
        matchTextDirection:
            value.matchTextDirection?.build(zacContext) ?? false,
        gaplessPlayback: value.gaplessPlayback?.build(zacContext) ?? false,
        filterQuality:
            value.filterQuality?.build(zacContext) ?? FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.build(zacContext) ?? false,
        cacheWidth: value.cacheWidth?.build(zacContext),
        cacheHeight: value.cacheHeight?.build(zacContext),
        package: value.package?.build(zacContext),
      ),
    );
  }

  @override
  Image build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
