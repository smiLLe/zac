// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterMaterial _$FlutterMaterialFromJson(Map<String, dynamic> json) {
  return _FlutterMaterial.fromJson(json);
}

/// @nodoc
mixin _$FlutterMaterial {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;
  ZacDouble? get elevation => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterColor? get shadowColor => throw _privateConstructorUsedError;
  FlutterTextStyle? get textStyle => throw _privateConstructorUsedError;
  FlutterBorderRadiusGeometry? get borderRadius =>
      throw _privateConstructorUsedError;
  FlutterShapeBorder? get shape => throw _privateConstructorUsedError;
  ZacValue<bool>? get borderOnForeground => throw _privateConstructorUsedError;
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterMaterial value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMaterial extends _FlutterMaterial {
  _$_FlutterMaterial(
      {this.key,
      this.child,
      this.elevation,
      this.color,
      this.shadowColor,
      this.textStyle,
      this.borderRadius,
      this.shape,
      this.borderOnForeground,
      this.clipBehavior})
      : super._();

  factory _$_FlutterMaterial.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterMaterialFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget? child;
  @override
  final ZacDouble? elevation;
  @override
  final FlutterColor? color;
  @override
  final FlutterColor? shadowColor;
  @override
  final FlutterTextStyle? textStyle;
  @override
  final FlutterBorderRadiusGeometry? borderRadius;
  @override
  final FlutterShapeBorder? shape;
  @override
  final ZacValue<bool>? borderOnForeground;
  @override
  final FlutterClip? clipBehavior;

  @override
  String toString() {
    return 'FlutterMaterial(key: $key, child: $child, elevation: $elevation, color: $color, shadowColor: $shadowColor, textStyle: $textStyle, borderRadius: $borderRadius, shape: $shape, borderOnForeground: $borderOnForeground, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMaterial &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.borderOnForeground, borderOnForeground) ||
                other.borderOnForeground == borderOnForeground) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      child,
      elevation,
      color,
      shadowColor,
      textStyle,
      borderRadius,
      shape,
      borderOnForeground,
      clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterMaterial value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterMaterial extends FlutterMaterial {
  factory _FlutterMaterial(
      {final FlutterKey? key,
      final FlutterWidget? child,
      final ZacDouble? elevation,
      final FlutterColor? color,
      final FlutterColor? shadowColor,
      final FlutterTextStyle? textStyle,
      final FlutterBorderRadiusGeometry? borderRadius,
      final FlutterShapeBorder? shape,
      final ZacValue<bool>? borderOnForeground,
      final FlutterClip? clipBehavior}) = _$_FlutterMaterial;
  _FlutterMaterial._() : super._();

  factory _FlutterMaterial.fromJson(Map<String, dynamic> json) =
      _$_FlutterMaterial.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
  @override
  ZacDouble? get elevation;
  @override
  FlutterColor? get color;
  @override
  FlutterColor? get shadowColor;
  @override
  FlutterTextStyle? get textStyle;
  @override
  FlutterBorderRadiusGeometry? get borderRadius;
  @override
  FlutterShapeBorder? get shape;
  @override
  ZacValue<bool>? get borderOnForeground;
  @override
  FlutterClip? get clipBehavior;
}
