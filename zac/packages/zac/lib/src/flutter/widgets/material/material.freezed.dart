// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get elevation => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get shadowColor => throw _privateConstructorUsedError;
  ZacBuilder<TextStyle?>? get textStyle => throw _privateConstructorUsedError;
  ZacBuilder<BorderRadiusGeometry?>? get borderRadius =>
      throw _privateConstructorUsedError;
  ZacBuilder<ShapeBorder?>? get shape => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get borderOnForeground =>
      throw _privateConstructorUsedError;
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;

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
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<Color?>? color;
  @override
  final ZacBuilder<Color?>? shadowColor;
  @override
  final ZacBuilder<TextStyle?>? textStyle;
  @override
  final ZacBuilder<BorderRadiusGeometry?>? borderRadius;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<bool?>? borderOnForeground;
  @override
  final ZacBuilder<Clip?>? clipBehavior;

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
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? child,
      final ZacBuilder<double?>? elevation,
      final ZacBuilder<Color?>? color,
      final ZacBuilder<Color?>? shadowColor,
      final ZacBuilder<TextStyle?>? textStyle,
      final ZacBuilder<BorderRadiusGeometry?>? borderRadius,
      final ZacBuilder<ShapeBorder?>? shape,
      final ZacBuilder<bool?>? borderOnForeground,
      final ZacBuilder<Clip?>? clipBehavior}) = _$_FlutterMaterial;
  _FlutterMaterial._() : super._();

  factory _FlutterMaterial.fromJson(Map<String, dynamic> json) =
      _$_FlutterMaterial.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<double?>? get elevation;
  @override
  ZacBuilder<Color?>? get color;
  @override
  ZacBuilder<Color?>? get shadowColor;
  @override
  ZacBuilder<TextStyle?>? get textStyle;
  @override
  ZacBuilder<BorderRadiusGeometry?>? get borderRadius;
  @override
  ZacBuilder<ShapeBorder?>? get shape;
  @override
  ZacBuilder<bool?>? get borderOnForeground;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
}
