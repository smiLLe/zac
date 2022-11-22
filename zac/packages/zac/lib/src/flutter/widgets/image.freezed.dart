// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterImage _$FlutterImageFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Image.network':
      return _FlutterImageNetowrk.fromJson(json);
    case 'f:1:Image.asset':
      return _FlutterImageAsset.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterImage',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterImage {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<double>? get scale =>
      throw _privateConstructorUsedError; // ImageFrameBuilder? frameBuilder,
// ImageLoadingBuilder? loadingBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  ZacValue<String>? get semanticLabel => throw _privateConstructorUsedError;
  ZacValue<bool>? get excludeFromSemantics =>
      throw _privateConstructorUsedError;
  ZacValue<double>? get width => throw _privateConstructorUsedError;
  ZacValue<double>? get height => throw _privateConstructorUsedError;
  FlutterColor? get color =>
      throw _privateConstructorUsedError; // Animation<double>? opacity,
  FlutterBlendMode? get colorBlendMode => throw _privateConstructorUsedError;
  FlutterBoxFit? get fit => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterImageRepeat? get repeat => throw _privateConstructorUsedError;
  FlutterRect? get centerSlice => throw _privateConstructorUsedError;
  ZacValue<bool>? get matchTextDirection => throw _privateConstructorUsedError;
  ZacValue<bool>? get gaplessPlayback => throw _privateConstructorUsedError;
  FlutterFilterQuality? get filterQuality => throw _privateConstructorUsedError;
  ZacValue<bool>? get isAntiAlias => throw _privateConstructorUsedError;
  ZacInt? get cacheWidth => throw _privateConstructorUsedError;
  ZacInt? get cacheHeight => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageNetowrk value) network,
    required TResult Function(_FlutterImageAsset value) asset,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterImageNetowrk extends _FlutterImageNetowrk {
  _$_FlutterImageNetowrk(this.src,
      {this.key,
      this.scale,
      this.semanticLabel,
      this.excludeFromSemantics,
      this.width,
      this.height,
      this.color,
      this.colorBlendMode,
      this.fit,
      this.alignment,
      this.repeat,
      this.centerSlice,
      this.matchTextDirection,
      this.gaplessPlayback,
      this.filterQuality,
      this.isAntiAlias,
      final Map<String, String>? headers,
      this.cacheWidth,
      this.cacheHeight,
      final String? $type})
      : _headers = headers,
        $type = $type ?? 'f:1:Image.network',
        super._();

  factory _$_FlutterImageNetowrk.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterImageNetowrkFromJson(json);

  @override
  final ZacValue<String> src;
  @override
  final FlutterKey? key;
  @override
  final ZacValue<double>? scale;
// ImageFrameBuilder? frameBuilder,
// ImageLoadingBuilder? loadingBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  @override
  final ZacValue<String>? semanticLabel;
  @override
  final ZacValue<bool>? excludeFromSemantics;
  @override
  final ZacValue<double>? width;
  @override
  final ZacValue<double>? height;
  @override
  final FlutterColor? color;
// Animation<double>? opacity,
  @override
  final FlutterBlendMode? colorBlendMode;
  @override
  final FlutterBoxFit? fit;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterImageRepeat? repeat;
  @override
  final FlutterRect? centerSlice;
  @override
  final ZacValue<bool>? matchTextDirection;
  @override
  final ZacValue<bool>? gaplessPlayback;
  @override
  final FlutterFilterQuality? filterQuality;
  @override
  final ZacValue<bool>? isAntiAlias;
  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ZacInt? cacheWidth;
  @override
  final ZacInt? cacheHeight;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterImage.network(src: $src, key: $key, scale: $scale, semanticLabel: $semanticLabel, excludeFromSemantics: $excludeFromSemantics, width: $width, height: $height, color: $color, colorBlendMode: $colorBlendMode, fit: $fit, alignment: $alignment, repeat: $repeat, centerSlice: $centerSlice, matchTextDirection: $matchTextDirection, gaplessPlayback: $gaplessPlayback, filterQuality: $filterQuality, isAntiAlias: $isAntiAlias, headers: $headers, cacheWidth: $cacheWidth, cacheHeight: $cacheHeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterImageNetowrk &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.excludeFromSemantics, excludeFromSemantics) ||
                other.excludeFromSemantics == excludeFromSemantics) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.colorBlendMode, colorBlendMode) ||
                other.colorBlendMode == colorBlendMode) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.centerSlice, centerSlice) ||
                other.centerSlice == centerSlice) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.gaplessPlayback, gaplessPlayback) ||
                other.gaplessPlayback == gaplessPlayback) &&
            (identical(other.filterQuality, filterQuality) ||
                other.filterQuality == filterQuality) &&
            (identical(other.isAntiAlias, isAntiAlias) ||
                other.isAntiAlias == isAntiAlias) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.cacheWidth, cacheWidth) ||
                other.cacheWidth == cacheWidth) &&
            (identical(other.cacheHeight, cacheHeight) ||
                other.cacheHeight == cacheHeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        src,
        key,
        scale,
        semanticLabel,
        excludeFromSemantics,
        width,
        height,
        color,
        colorBlendMode,
        fit,
        alignment,
        repeat,
        centerSlice,
        matchTextDirection,
        gaplessPlayback,
        filterQuality,
        isAntiAlias,
        const DeepCollectionEquality().hash(_headers),
        cacheWidth,
        cacheHeight
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageNetowrk value) network,
    required TResult Function(_FlutterImageAsset value) asset,
  }) {
    return network(this);
  }
}

abstract class _FlutterImageNetowrk extends FlutterImage {
  factory _FlutterImageNetowrk(final ZacValue<String> src,
      {final FlutterKey? key,
      final ZacValue<double>? scale,
      final ZacValue<String>? semanticLabel,
      final ZacValue<bool>? excludeFromSemantics,
      final ZacValue<double>? width,
      final ZacValue<double>? height,
      final FlutterColor? color,
      final FlutterBlendMode? colorBlendMode,
      final FlutterBoxFit? fit,
      final FlutterAlignmentGeometry? alignment,
      final FlutterImageRepeat? repeat,
      final FlutterRect? centerSlice,
      final ZacValue<bool>? matchTextDirection,
      final ZacValue<bool>? gaplessPlayback,
      final FlutterFilterQuality? filterQuality,
      final ZacValue<bool>? isAntiAlias,
      final Map<String, String>? headers,
      final ZacInt? cacheWidth,
      final ZacInt? cacheHeight}) = _$_FlutterImageNetowrk;
  _FlutterImageNetowrk._() : super._();

  factory _FlutterImageNetowrk.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageNetowrk.fromJson;

  ZacValue<String> get src;
  @override
  FlutterKey? get key;
  @override
  ZacValue<double>? get scale;
  @override // ImageFrameBuilder? frameBuilder,
// ImageLoadingBuilder? loadingBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  ZacValue<String>? get semanticLabel;
  @override
  ZacValue<bool>? get excludeFromSemantics;
  @override
  ZacValue<double>? get width;
  @override
  ZacValue<double>? get height;
  @override
  FlutterColor? get color;
  @override // Animation<double>? opacity,
  FlutterBlendMode? get colorBlendMode;
  @override
  FlutterBoxFit? get fit;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterImageRepeat? get repeat;
  @override
  FlutterRect? get centerSlice;
  @override
  ZacValue<bool>? get matchTextDirection;
  @override
  ZacValue<bool>? get gaplessPlayback;
  @override
  FlutterFilterQuality? get filterQuality;
  @override
  ZacValue<bool>? get isAntiAlias;
  Map<String, String>? get headers;
  @override
  ZacInt? get cacheWidth;
  @override
  ZacInt? get cacheHeight;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterImageAsset extends _FlutterImageAsset {
  _$_FlutterImageAsset(this.name,
      {this.key,
      this.semanticLabel,
      this.excludeFromSemantics,
      this.scale,
      this.width,
      this.height,
      this.color,
      this.colorBlendMode,
      this.fit,
      this.alignment,
      this.repeat,
      this.centerSlice,
      this.matchTextDirection,
      this.gaplessPlayback,
      this.isAntiAlias,
      this.package,
      this.filterQuality,
      this.cacheWidth,
      this.cacheHeight,
      final String? $type})
      : $type = $type ?? 'f:1:Image.asset',
        super._();

  factory _$_FlutterImageAsset.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterImageAssetFromJson(json);

  @override
  final ZacValue<String> name;
  @override
  final FlutterKey? key;
// AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  @override
  final ZacValue<String>? semanticLabel;
  @override
  final ZacValue<bool>? excludeFromSemantics;
  @override
  final ZacValue<double>? scale;
  @override
  final ZacValue<double>? width;
  @override
  final ZacValue<double>? height;
  @override
  final FlutterColor? color;
// Animation<double>? opacity,
  @override
  final FlutterBlendMode? colorBlendMode;
  @override
  final FlutterBoxFit? fit;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterImageRepeat? repeat;
  @override
  final FlutterRect? centerSlice;
  @override
  final ZacValue<bool>? matchTextDirection;
  @override
  final ZacValue<bool>? gaplessPlayback;
  @override
  final ZacValue<bool>? isAntiAlias;
  @override
  final ZacValue<String>? package;
  @override
  final FlutterFilterQuality? filterQuality;
  @override
  final ZacInt? cacheWidth;
  @override
  final ZacInt? cacheHeight;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterImage.asset(name: $name, key: $key, semanticLabel: $semanticLabel, excludeFromSemantics: $excludeFromSemantics, scale: $scale, width: $width, height: $height, color: $color, colorBlendMode: $colorBlendMode, fit: $fit, alignment: $alignment, repeat: $repeat, centerSlice: $centerSlice, matchTextDirection: $matchTextDirection, gaplessPlayback: $gaplessPlayback, isAntiAlias: $isAntiAlias, package: $package, filterQuality: $filterQuality, cacheWidth: $cacheWidth, cacheHeight: $cacheHeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterImageAsset &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.excludeFromSemantics, excludeFromSemantics) ||
                other.excludeFromSemantics == excludeFromSemantics) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.colorBlendMode, colorBlendMode) ||
                other.colorBlendMode == colorBlendMode) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.centerSlice, centerSlice) ||
                other.centerSlice == centerSlice) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection) &&
            (identical(other.gaplessPlayback, gaplessPlayback) ||
                other.gaplessPlayback == gaplessPlayback) &&
            (identical(other.isAntiAlias, isAntiAlias) ||
                other.isAntiAlias == isAntiAlias) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.filterQuality, filterQuality) ||
                other.filterQuality == filterQuality) &&
            (identical(other.cacheWidth, cacheWidth) ||
                other.cacheWidth == cacheWidth) &&
            (identical(other.cacheHeight, cacheHeight) ||
                other.cacheHeight == cacheHeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        key,
        semanticLabel,
        excludeFromSemantics,
        scale,
        width,
        height,
        color,
        colorBlendMode,
        fit,
        alignment,
        repeat,
        centerSlice,
        matchTextDirection,
        gaplessPlayback,
        isAntiAlias,
        package,
        filterQuality,
        cacheWidth,
        cacheHeight
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageNetowrk value) network,
    required TResult Function(_FlutterImageAsset value) asset,
  }) {
    return asset(this);
  }
}

abstract class _FlutterImageAsset extends FlutterImage {
  factory _FlutterImageAsset(final ZacValue<String> name,
      {final FlutterKey? key,
      final ZacValue<String>? semanticLabel,
      final ZacValue<bool>? excludeFromSemantics,
      final ZacValue<double>? scale,
      final ZacValue<double>? width,
      final ZacValue<double>? height,
      final FlutterColor? color,
      final FlutterBlendMode? colorBlendMode,
      final FlutterBoxFit? fit,
      final FlutterAlignmentGeometry? alignment,
      final FlutterImageRepeat? repeat,
      final FlutterRect? centerSlice,
      final ZacValue<bool>? matchTextDirection,
      final ZacValue<bool>? gaplessPlayback,
      final ZacValue<bool>? isAntiAlias,
      final ZacValue<String>? package,
      final FlutterFilterQuality? filterQuality,
      final ZacInt? cacheWidth,
      final ZacInt? cacheHeight}) = _$_FlutterImageAsset;
  _FlutterImageAsset._() : super._();

  factory _FlutterImageAsset.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageAsset.fromJson;

  ZacValue<String> get name;
  @override
  FlutterKey? get key;
  @override // AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  ZacValue<String>? get semanticLabel;
  @override
  ZacValue<bool>? get excludeFromSemantics;
  @override
  ZacValue<double>? get scale;
  @override
  ZacValue<double>? get width;
  @override
  ZacValue<double>? get height;
  @override
  FlutterColor? get color;
  @override // Animation<double>? opacity,
  FlutterBlendMode? get colorBlendMode;
  @override
  FlutterBoxFit? get fit;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterImageRepeat? get repeat;
  @override
  FlutterRect? get centerSlice;
  @override
  ZacValue<bool>? get matchTextDirection;
  @override
  ZacValue<bool>? get gaplessPlayback;
  @override
  ZacValue<bool>? get isAntiAlias;
  ZacValue<String>? get package;
  @override
  FlutterFilterQuality? get filterQuality;
  @override
  ZacInt? get cacheWidth;
  @override
  ZacInt? get cacheHeight;
}
