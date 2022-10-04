// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterCard _$FlutterCardFromJson(Map<String, dynamic> json) {
  return _FlutterCard.fromJson(json);
}

/// @nodoc
mixin _$FlutterCard {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterColor? get shadowColor => throw _privateConstructorUsedError;
  ZacDouble? get elevation => throw _privateConstructorUsedError;
  FlutterShapeBorder? get shape => throw _privateConstructorUsedError;
  ZacBool? get borderOnForeground => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get margin => throw _privateConstructorUsedError;
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;
  ZacBool? get semanticContainer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCard value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCard extends _FlutterCard {
  _$_FlutterCard(
      {this.key,
      this.color,
      this.shadowColor,
      this.elevation,
      this.shape,
      this.borderOnForeground,
      this.margin,
      this.clipBehavior,
      this.child,
      this.semanticContainer})
      : super._();

  factory _$_FlutterCard.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterCardFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterColor? color;
  @override
  final FlutterColor? shadowColor;
  @override
  final ZacDouble? elevation;
  @override
  final FlutterShapeBorder? shape;
  @override
  final ZacBool? borderOnForeground;
  @override
  final FlutterEdgeInsetsGeometry? margin;
  @override
  final FlutterClip? clipBehavior;
  @override
  final FlutterWidget? child;
  @override
  final ZacBool? semanticContainer;

  @override
  String toString() {
    return 'FlutterCard(key: $key, color: $color, shadowColor: $shadowColor, elevation: $elevation, shape: $shape, borderOnForeground: $borderOnForeground, margin: $margin, clipBehavior: $clipBehavior, child: $child, semanticContainer: $semanticContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCard &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.shadowColor, shadowColor) &&
            const DeepCollectionEquality().equals(other.elevation, elevation) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality()
                .equals(other.borderOnForeground, borderOnForeground) &&
            const DeepCollectionEquality().equals(other.margin, margin) &&
            const DeepCollectionEquality()
                .equals(other.clipBehavior, clipBehavior) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.semanticContainer, semanticContainer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(shadowColor),
      const DeepCollectionEquality().hash(elevation),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(borderOnForeground),
      const DeepCollectionEquality().hash(margin),
      const DeepCollectionEquality().hash(clipBehavior),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(semanticContainer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCard value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterCard extends FlutterCard {
  factory _FlutterCard(
      {final FlutterKey? key,
      final FlutterColor? color,
      final FlutterColor? shadowColor,
      final ZacDouble? elevation,
      final FlutterShapeBorder? shape,
      final ZacBool? borderOnForeground,
      final FlutterEdgeInsetsGeometry? margin,
      final FlutterClip? clipBehavior,
      final FlutterWidget? child,
      final ZacBool? semanticContainer}) = _$_FlutterCard;
  _FlutterCard._() : super._();

  factory _FlutterCard.fromJson(Map<String, dynamic> json) =
      _$_FlutterCard.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterColor? get color;
  @override
  FlutterColor? get shadowColor;
  @override
  ZacDouble? get elevation;
  @override
  FlutterShapeBorder? get shape;
  @override
  ZacBool? get borderOnForeground;
  @override
  FlutterEdgeInsetsGeometry? get margin;
  @override
  FlutterClip? get clipBehavior;
  @override
  FlutterWidget? get child;
  @override
  ZacBool? get semanticContainer;
}
