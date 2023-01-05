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

  Image _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      network: (value) => Image.network(
        value.src.build(context, zacContext),
        key: value.key?.build(context, zacContext),
        scale: value.scale?.build(context, zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.build(context, zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.build(context, zacContext) ?? false,
        width: value.width?.build(context, zacContext),
        height: value.height?.build(context, zacContext),
        color: value.color?.build(context, zacContext),
        colorBlendMode: value.colorBlendMode?.build(context, zacContext),
        fit: value.fit?.build(context, zacContext),
        alignment:
            value.alignment?.build(context, zacContext) ?? Alignment.center,
        repeat:
            value.repeat?.build(context, zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(context, zacContext),
        matchTextDirection:
            value.matchTextDirection?.build(context, zacContext) ?? false,
        gaplessPlayback:
            value.gaplessPlayback?.build(context, zacContext) ?? false,
        filterQuality: value.filterQuality?.build(context, zacContext) ??
            FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.build(context, zacContext) ?? false,
        headers: value.headers,
        cacheWidth: value.cacheWidth?.build(context, zacContext),
        cacheHeight: value.cacheHeight?.build(context, zacContext),
      ),
      asset: (value) => Image.asset(
        value.name.build(context, zacContext),
        key: value.key?.build(context, zacContext),
        scale: value.scale?.build(context, zacContext) ?? 1.0,
        semanticLabel: value.semanticLabel?.build(context, zacContext),
        excludeFromSemantics:
            value.excludeFromSemantics?.build(context, zacContext) ?? false,
        width: value.width?.build(context, zacContext),
        height: value.height?.build(context, zacContext),
        color: value.color?.build(context, zacContext),
        colorBlendMode: value.colorBlendMode?.build(context, zacContext),
        fit: value.fit?.build(context, zacContext),
        alignment:
            value.alignment?.build(context, zacContext) ?? Alignment.center,
        repeat:
            value.repeat?.build(context, zacContext) ?? ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(context, zacContext),
        matchTextDirection:
            value.matchTextDirection?.build(context, zacContext) ?? false,
        gaplessPlayback:
            value.gaplessPlayback?.build(context, zacContext) ?? false,
        filterQuality: value.filterQuality?.build(context, zacContext) ??
            FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.build(context, zacContext) ?? false,
        cacheWidth: value.cacheWidth?.build(context, zacContext),
        cacheHeight: value.cacheHeight?.build(context, zacContext),
        package: value.package?.build(context, zacContext),
      ),
    );
  }

  @override
  Image build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
