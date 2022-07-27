// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'decoration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterBoxDecoration _$FlutterBoxDecorationFromJson(Map<String, dynamic> json) {
  return _FlutterBoxDecoration.fromJson(json);
}

/// @nodoc
mixin _$FlutterBoxDecoration {
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterBoxBorder? get border => throw _privateConstructorUsedError;
  FlutterBorderRadiusGeometry? get borderRadius =>
      throw _privateConstructorUsedError;
  List<FlutterBoxShadow>? get boxShadow => throw _privateConstructorUsedError;
  FlutterBoxShape? get shape => throw _privateConstructorUsedError;
  FlutterBlendMode? get backgroundBlendMode =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxDecoration value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxDecoration extends _FlutterBoxDecoration {
  _$_FlutterBoxDecoration(
      {this.color,
      this.border,
      this.borderRadius,
      final List<FlutterBoxShadow>? boxShadow,
      this.shape,
      this.backgroundBlendMode})
      : _boxShadow = boxShadow,
        super._();

  factory _$_FlutterBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxDecorationFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final FlutterBoxBorder? border;
  @override
  final FlutterBorderRadiusGeometry? borderRadius;
  final List<FlutterBoxShadow>? _boxShadow;
  @override
  List<FlutterBoxShadow>? get boxShadow {
    final value = _boxShadow;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FlutterBoxShape? shape;
  @override
  final FlutterBlendMode? backgroundBlendMode;

  @override
  String toString() {
    return 'FlutterBoxDecoration(color: $color, border: $border, borderRadius: $borderRadius, boxShadow: $boxShadow, shape: $shape, backgroundBlendMode: $backgroundBlendMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxDecoration &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.border, border) &&
            const DeepCollectionEquality()
                .equals(other.borderRadius, borderRadius) &&
            const DeepCollectionEquality()
                .equals(other._boxShadow, _boxShadow) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality()
                .equals(other.backgroundBlendMode, backgroundBlendMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(border),
      const DeepCollectionEquality().hash(borderRadius),
      const DeepCollectionEquality().hash(_boxShadow),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(backgroundBlendMode));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxDecoration value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBoxDecoration extends FlutterBoxDecoration {
  factory _FlutterBoxDecoration(
      {final FlutterColor? color,
      final FlutterBoxBorder? border,
      final FlutterBorderRadiusGeometry? borderRadius,
      final List<FlutterBoxShadow>? boxShadow,
      final FlutterBoxShape? shape,
      final FlutterBlendMode? backgroundBlendMode}) = _$_FlutterBoxDecoration;
  _FlutterBoxDecoration._() : super._();

  factory _FlutterBoxDecoration.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxDecoration.fromJson;

  @override
  FlutterColor? get color;
  @override
  FlutterBoxBorder? get border;
  @override
  FlutterBorderRadiusGeometry? get borderRadius;
  @override
  List<FlutterBoxShadow>? get boxShadow;
  @override
  FlutterBoxShape? get shape;
  @override
  FlutterBlendMode? get backgroundBlendMode;
}

FlutterShapeDecoration _$FlutterShapeDecorationFromJson(
    Map<String, dynamic> json) {
  return _FlutterShapeDecoration.fromJson(json);
}

/// @nodoc
mixin _$FlutterShapeDecoration {
  FlutterColor? get color =>
      throw _privateConstructorUsedError; // FlutterDecorationImage? image,
// FlutterGradient? gradient,
  List<FlutterBoxShadow>? get shadows => throw _privateConstructorUsedError;
  FlutterShapeBorder get shape => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterShapeDecoration value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterShapeDecoration extends _FlutterShapeDecoration {
  _$_FlutterShapeDecoration(
      {this.color, final List<FlutterBoxShadow>? shadows, required this.shape})
      : _shadows = shadows,
        super._();

  factory _$_FlutterShapeDecoration.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterShapeDecorationFromJson(json);

  @override
  final FlutterColor? color;
// FlutterDecorationImage? image,
// FlutterGradient? gradient,
  final List<FlutterBoxShadow>? _shadows;
// FlutterDecorationImage? image,
// FlutterGradient? gradient,
  @override
  List<FlutterBoxShadow>? get shadows {
    final value = _shadows;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FlutterShapeBorder shape;

  @override
  String toString() {
    return 'FlutterShapeDecoration(color: $color, shadows: $shadows, shape: $shape)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterShapeDecoration &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other._shadows, _shadows) &&
            const DeepCollectionEquality().equals(other.shape, shape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(_shadows),
      const DeepCollectionEquality().hash(shape));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterShapeDecoration value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterShapeDecoration extends FlutterShapeDecoration {
  factory _FlutterShapeDecoration(
      {final FlutterColor? color,
      final List<FlutterBoxShadow>? shadows,
      required final FlutterShapeBorder shape}) = _$_FlutterShapeDecoration;
  _FlutterShapeDecoration._() : super._();

  factory _FlutterShapeDecoration.fromJson(Map<String, dynamic> json) =
      _$_FlutterShapeDecoration.fromJson;

  @override
  FlutterColor? get color;
  @override // FlutterDecorationImage? image,
// FlutterGradient? gradient,
  List<FlutterBoxShadow>? get shadows;
  @override
  FlutterShapeBorder get shape;
}
