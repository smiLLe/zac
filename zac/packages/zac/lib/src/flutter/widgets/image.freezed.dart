// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterImage _$FlutterImageFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:Image.network':
      return _FlutterImageNetowrk.fromJson(json);
    case 'f:1:Image.asset':
      return _FlutterImageAsset.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterImage',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterImage {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get scale =>
      throw _privateConstructorUsedError; // ImageFrameBuilder? frameBuilder,
// ImageLoadingBuilder? loadingBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  ZacBuilder<String?>? get semanticLabel => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get excludeFromSemantics =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get width => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get height => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get color =>
      throw _privateConstructorUsedError; // Animation<double>? opacity,
  ZacBuilder<BlendMode?>? get colorBlendMode =>
      throw _privateConstructorUsedError;
  ZacBuilder<BoxFit?>? get fit => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<ImageRepeat?>? get repeat => throw _privateConstructorUsedError;
  ZacBuilder<Rect?>? get centerSlice => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get matchTextDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get gaplessPlayback => throw _privateConstructorUsedError;
  ZacBuilder<FilterQuality?>? get filterQuality =>
      throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get isAntiAlias => throw _privateConstructorUsedError;
  ZacBuilder<int?>? get cacheWidth => throw _privateConstructorUsedError;
  ZacBuilder<int?>? get cacheHeight => throw _privateConstructorUsedError;

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
  final ZacBuilder<String> src;
  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<double?>? scale;
// ImageFrameBuilder? frameBuilder,
// ImageLoadingBuilder? loadingBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  @override
  final ZacBuilder<String?>? semanticLabel;
  @override
  final ZacBuilder<bool?>? excludeFromSemantics;
  @override
  final ZacBuilder<double?>? width;
  @override
  final ZacBuilder<double?>? height;
  @override
  final ZacBuilder<Color?>? color;
// Animation<double>? opacity,
  @override
  final ZacBuilder<BlendMode?>? colorBlendMode;
  @override
  final ZacBuilder<BoxFit?>? fit;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<ImageRepeat?>? repeat;
  @override
  final ZacBuilder<Rect?>? centerSlice;
  @override
  final ZacBuilder<bool?>? matchTextDirection;
  @override
  final ZacBuilder<bool?>? gaplessPlayback;
  @override
  final ZacBuilder<FilterQuality?>? filterQuality;
  @override
  final ZacBuilder<bool?>? isAntiAlias;
  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ZacBuilder<int?>? cacheWidth;
  @override
  final ZacBuilder<int?>? cacheHeight;

  @JsonKey(name: 'builder')
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
  factory _FlutterImageNetowrk(final ZacBuilder<String> src,
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<double?>? scale,
      final ZacBuilder<String?>? semanticLabel,
      final ZacBuilder<bool?>? excludeFromSemantics,
      final ZacBuilder<double?>? width,
      final ZacBuilder<double?>? height,
      final ZacBuilder<Color?>? color,
      final ZacBuilder<BlendMode?>? colorBlendMode,
      final ZacBuilder<BoxFit?>? fit,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<ImageRepeat?>? repeat,
      final ZacBuilder<Rect?>? centerSlice,
      final ZacBuilder<bool?>? matchTextDirection,
      final ZacBuilder<bool?>? gaplessPlayback,
      final ZacBuilder<FilterQuality?>? filterQuality,
      final ZacBuilder<bool?>? isAntiAlias,
      final Map<String, String>? headers,
      final ZacBuilder<int?>? cacheWidth,
      final ZacBuilder<int?>? cacheHeight}) = _$_FlutterImageNetowrk;
  _FlutterImageNetowrk._() : super._();

  factory _FlutterImageNetowrk.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageNetowrk.fromJson;

  ZacBuilder<String> get src;
  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<double?>? get scale;
  @override // ImageFrameBuilder? frameBuilder,
// ImageLoadingBuilder? loadingBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  ZacBuilder<String?>? get semanticLabel;
  @override
  ZacBuilder<bool?>? get excludeFromSemantics;
  @override
  ZacBuilder<double?>? get width;
  @override
  ZacBuilder<double?>? get height;
  @override
  ZacBuilder<Color?>? get color;
  @override // Animation<double>? opacity,
  ZacBuilder<BlendMode?>? get colorBlendMode;
  @override
  ZacBuilder<BoxFit?>? get fit;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<ImageRepeat?>? get repeat;
  @override
  ZacBuilder<Rect?>? get centerSlice;
  @override
  ZacBuilder<bool?>? get matchTextDirection;
  @override
  ZacBuilder<bool?>? get gaplessPlayback;
  @override
  ZacBuilder<FilterQuality?>? get filterQuality;
  @override
  ZacBuilder<bool?>? get isAntiAlias;
  Map<String, String>? get headers;
  @override
  ZacBuilder<int?>? get cacheWidth;
  @override
  ZacBuilder<int?>? get cacheHeight;
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
  final ZacBuilder<String> name;
  @override
  final ZacBuilder<Key?>? key;
// AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  @override
  final ZacBuilder<String?>? semanticLabel;
  @override
  final ZacBuilder<bool?>? excludeFromSemantics;
  @override
  final ZacBuilder<double?>? scale;
  @override
  final ZacBuilder<double?>? width;
  @override
  final ZacBuilder<double?>? height;
  @override
  final ZacBuilder<Color?>? color;
// Animation<double>? opacity,
  @override
  final ZacBuilder<BlendMode?>? colorBlendMode;
  @override
  final ZacBuilder<BoxFit?>? fit;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<ImageRepeat?>? repeat;
  @override
  final ZacBuilder<Rect?>? centerSlice;
  @override
  final ZacBuilder<bool?>? matchTextDirection;
  @override
  final ZacBuilder<bool?>? gaplessPlayback;
  @override
  final ZacBuilder<bool?>? isAntiAlias;
  @override
  final ZacBuilder<String?>? package;
  @override
  final ZacBuilder<FilterQuality?>? filterQuality;
  @override
  final ZacBuilder<int?>? cacheWidth;
  @override
  final ZacBuilder<int?>? cacheHeight;

  @JsonKey(name: 'builder')
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
  factory _FlutterImageAsset(final ZacBuilder<String> name,
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<String?>? semanticLabel,
      final ZacBuilder<bool?>? excludeFromSemantics,
      final ZacBuilder<double?>? scale,
      final ZacBuilder<double?>? width,
      final ZacBuilder<double?>? height,
      final ZacBuilder<Color?>? color,
      final ZacBuilder<BlendMode?>? colorBlendMode,
      final ZacBuilder<BoxFit?>? fit,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<ImageRepeat?>? repeat,
      final ZacBuilder<Rect?>? centerSlice,
      final ZacBuilder<bool?>? matchTextDirection,
      final ZacBuilder<bool?>? gaplessPlayback,
      final ZacBuilder<bool?>? isAntiAlias,
      final ZacBuilder<String?>? package,
      final ZacBuilder<FilterQuality?>? filterQuality,
      final ZacBuilder<int?>? cacheWidth,
      final ZacBuilder<int?>? cacheHeight}) = _$_FlutterImageAsset;
  _FlutterImageAsset._() : super._();

  factory _FlutterImageAsset.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageAsset.fromJson;

  ZacBuilder<String> get name;
  @override
  ZacBuilder<Key?>? get key;
  @override // AssetBundle? bundle,
// ImageFrameBuilder? frameBuilder,
// ImageErrorWidgetBuilder? errorBuilder,
  ZacBuilder<String?>? get semanticLabel;
  @override
  ZacBuilder<bool?>? get excludeFromSemantics;
  @override
  ZacBuilder<double?>? get scale;
  @override
  ZacBuilder<double?>? get width;
  @override
  ZacBuilder<double?>? get height;
  @override
  ZacBuilder<Color?>? get color;
  @override // Animation<double>? opacity,
  ZacBuilder<BlendMode?>? get colorBlendMode;
  @override
  ZacBuilder<BoxFit?>? get fit;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<ImageRepeat?>? get repeat;
  @override
  ZacBuilder<Rect?>? get centerSlice;
  @override
  ZacBuilder<bool?>? get matchTextDirection;
  @override
  ZacBuilder<bool?>? get gaplessPlayback;
  @override
  ZacBuilder<bool?>? get isAntiAlias;
  ZacBuilder<String?>? get package;
  @override
  ZacBuilder<FilterQuality?>? get filterQuality;
  @override
  ZacBuilder<int?>? get cacheWidth;
  @override
  ZacBuilder<int?>? get cacheHeight;
}
