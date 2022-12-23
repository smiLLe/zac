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
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;
  ZacValue<double?>? get elevation => throw _privateConstructorUsedError;
  ZacValue<Color?>? get color => throw _privateConstructorUsedError;
  ZacValue<Color?>? get shadowColor => throw _privateConstructorUsedError;
  ZacValue<TextStyle?>? get textStyle => throw _privateConstructorUsedError;
  ZacValue<BorderRadiusGeometry?>? get borderRadius =>
      throw _privateConstructorUsedError;
  ZacValue<ShapeBorder?>? get shape => throw _privateConstructorUsedError;
  ZacValue<bool?>? get borderOnForeground => throw _privateConstructorUsedError;
  ZacValue<Clip?>? get clipBehavior => throw _privateConstructorUsedError;

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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;
  @override
  final ZacValue<double?>? elevation;
  @override
  final ZacValue<Color?>? color;
  @override
  final ZacValue<Color?>? shadowColor;
  @override
  final ZacValue<TextStyle?>? textStyle;
  @override
  final ZacValue<BorderRadiusGeometry?>? borderRadius;
  @override
  final ZacValue<ShapeBorder?>? shape;
  @override
  final ZacValue<bool?>? borderOnForeground;
  @override
  final ZacValue<Clip?>? clipBehavior;

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
      {final ZacValue<Key?>? key,
      final ZacValue<Widget?>? child,
      final ZacValue<double?>? elevation,
      final ZacValue<Color?>? color,
      final ZacValue<Color?>? shadowColor,
      final ZacValue<TextStyle?>? textStyle,
      final ZacValue<BorderRadiusGeometry?>? borderRadius,
      final ZacValue<ShapeBorder?>? shape,
      final ZacValue<bool?>? borderOnForeground,
      final ZacValue<Clip?>? clipBehavior}) = _$_FlutterMaterial;
  _FlutterMaterial._() : super._();

  factory _FlutterMaterial.fromJson(Map<String, dynamic> json) =
      _$_FlutterMaterial.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget?>? get child;
  @override
  ZacValue<double?>? get elevation;
  @override
  ZacValue<Color?>? get color;
  @override
  ZacValue<Color?>? get shadowColor;
  @override
  ZacValue<TextStyle?>? get textStyle;
  @override
  ZacValue<BorderRadiusGeometry?>? get borderRadius;
  @override
  ZacValue<ShapeBorder?>? get shape;
  @override
  ZacValue<bool?>? get borderOnForeground;
  @override
  ZacValue<Clip?>? get clipBehavior;
}
