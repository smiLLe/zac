import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

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
  Image buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return map(
      network: (value) => Image.network(
        value.src.getValue(zacRef),
        key: value.key?.buildKey(context, ref, zacContext),
        scale: value.scale?.getValue(zacRef) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(zacRef),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(zacRef) ?? false,
        width: value.width?.getValue(zacRef),
        height: value.height?.getValue(zacRef),
        color: value.color?.build(context, ref, zacContext),
        colorBlendMode: value.colorBlendMode?.build(context, ref, zacContext),
        fit: value.fit?.build(context, ref, zacContext),
        alignment: value.alignment?.build(context, ref, zacContext) ??
            Alignment.center,
        repeat: value.repeat?.build(context, ref, zacContext) ??
            ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(context, ref, zacContext),
        matchTextDirection: value.matchTextDirection?.getValue(zacRef) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(zacRef) ?? false,
        filterQuality: value.filterQuality?.build(context, ref, zacContext) ??
            FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(zacRef) ?? false,
        headers: value.headers,
        cacheWidth: value.cacheWidth?.getValue(zacRef),
        cacheHeight: value.cacheHeight?.getValue(zacRef),
      ),
      asset: (value) => Image.asset(
        value.name.getValue(zacRef),
        key: value.key?.buildKey(context, ref, zacContext),
        scale: value.scale?.getValue(zacRef) ?? 1.0,
        semanticLabel: value.semanticLabel?.getValue(zacRef),
        excludeFromSemantics:
            value.excludeFromSemantics?.getValue(zacRef) ?? false,
        width: value.width?.getValue(zacRef),
        height: value.height?.getValue(zacRef),
        color: value.color?.build(context, ref, zacContext),
        colorBlendMode: value.colorBlendMode?.build(context, ref, zacContext),
        fit: value.fit?.build(context, ref, zacContext),
        alignment: value.alignment?.build(context, ref, zacContext) ??
            Alignment.center,
        repeat: value.repeat?.build(context, ref, zacContext) ??
            ImageRepeat.noRepeat,
        centerSlice: value.centerSlice?.build(context, ref, zacContext),
        matchTextDirection: value.matchTextDirection?.getValue(zacRef) ?? false,
        gaplessPlayback: value.gaplessPlayback?.getValue(zacRef) ?? false,
        filterQuality: value.filterQuality?.build(context, ref, zacContext) ??
            FilterQuality.low,
        isAntiAlias: value.isAntiAlias?.getValue(zacRef) ?? false,
        cacheWidth: value.cacheWidth?.getValue(zacRef),
        cacheHeight: value.cacheHeight?.getValue(zacRef),
      ),
    );
  }
}
