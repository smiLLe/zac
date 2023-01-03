import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezedZacBuilder
class FlutterImage with _$FlutterImage implements ZacBuilder<Image> {
  const FlutterImage._();

  static const String unionValueNetwork = 'f:1:Image.network';
  static const String unionValueAsset = 'f:1:Image.asset';

  factory FlutterImage.fromJson(Map<String, dynamic> json) =>
      _$FlutterImageFromJson(json);

  @FreezedUnionValue(FlutterImage.unionValueNetwork)
  factory FlutterImage.network(
    ZacBuilder<String> src, {
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? scale,
    // ImageFrameBuilder? frameBuilder,
    // ImageLoadingBuilder? loadingBuilder,
    // ImageErrorWidgetBuilder? errorBuilder,
    ZacBuilder<String?>? semanticLabel,
    ZacBuilder<bool?>? excludeFromSemantics,
    ZacBuilder<double?>? width,
    ZacBuilder<double?>? height,
    ZacBuilder<Color?>? color,
    // Animation<double>? opacity,
    ZacBuilder<BlendMode?>? colorBlendMode,
    ZacBuilder<BoxFit?>? fit,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<ImageRepeat?>? repeat,
    ZacBuilder<Rect?>? centerSlice,
    ZacBuilder<bool?>? matchTextDirection,
    ZacBuilder<bool?>? gaplessPlayback,
    ZacBuilder<FilterQuality?>? filterQuality,
    ZacBuilder<bool?>? isAntiAlias,
    Map<String, String>? headers,
    ZacBuilder<int?>? cacheWidth,
    ZacBuilder<int?>? cacheHeight,
  }) = _FlutterImageNetowrk;

  @FreezedUnionValue(FlutterImage.unionValueAsset)
  factory FlutterImage.asset(
    ZacBuilder<String> name, {
    ZacBuilder<Key?>? key,
// AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
    ZacBuilder<String?>? semanticLabel,
    ZacBuilder<bool?>? excludeFromSemantics,
    ZacBuilder<double?>? scale,
    ZacBuilder<double?>? width,
    ZacBuilder<double?>? height,
    ZacBuilder<Color?>? color,
// Animation<double>? opacity,
    ZacBuilder<BlendMode?>? colorBlendMode,
    ZacBuilder<BoxFit?>? fit,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<ImageRepeat?>? repeat,
    ZacBuilder<Rect?>? centerSlice,
    ZacBuilder<bool?>? matchTextDirection,
    ZacBuilder<bool?>? gaplessPlayback,
    ZacBuilder<bool?>? isAntiAlias,
    ZacBuilder<String?>? package,
    ZacBuilder<FilterQuality?>? filterQuality,
    ZacBuilder<int?>? cacheWidth,
    ZacBuilder<int?>? cacheHeight,
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
