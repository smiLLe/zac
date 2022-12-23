// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<Color?>? get color => throw _privateConstructorUsedError;
  ZacValue<Color?>? get shadowColor => throw _privateConstructorUsedError;
  ZacValue<double?>? get elevation => throw _privateConstructorUsedError;
  ZacValue<ShapeBorder?>? get shape => throw _privateConstructorUsedError;
  ZacValue<bool?>? get borderOnForeground => throw _privateConstructorUsedError;
  ZacValue<EdgeInsetsGeometry?>? get margin =>
      throw _privateConstructorUsedError;
  ZacValue<Clip?>? get clipBehavior => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;
  ZacValue<bool?>? get semanticContainer => throw _privateConstructorUsedError;

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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Color?>? color;
  @override
  final ZacValue<Color?>? shadowColor;
  @override
  final ZacValue<double?>? elevation;
  @override
  final ZacValue<ShapeBorder?>? shape;
  @override
  final ZacValue<bool?>? borderOnForeground;
  @override
  final ZacValue<EdgeInsetsGeometry?>? margin;
  @override
  final ZacValue<Clip?>? clipBehavior;
  @override
  final ZacValue<Widget?>? child;
  @override
  final ZacValue<bool?>? semanticContainer;

  @override
  String toString() {
    return 'FlutterCard(key: $key, color: $color, shadowColor: $shadowColor, elevation: $elevation, shape: $shape, borderOnForeground: $borderOnForeground, margin: $margin, clipBehavior: $clipBehavior, child: $child, semanticContainer: $semanticContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCard &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.borderOnForeground, borderOnForeground) ||
                other.borderOnForeground == borderOnForeground) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.semanticContainer, semanticContainer) ||
                other.semanticContainer == semanticContainer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      color,
      shadowColor,
      elevation,
      shape,
      borderOnForeground,
      margin,
      clipBehavior,
      child,
      semanticContainer);

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
      {final ZacValue<Key?>? key,
      final ZacValue<Color?>? color,
      final ZacValue<Color?>? shadowColor,
      final ZacValue<double?>? elevation,
      final ZacValue<ShapeBorder?>? shape,
      final ZacValue<bool?>? borderOnForeground,
      final ZacValue<EdgeInsetsGeometry?>? margin,
      final ZacValue<Clip?>? clipBehavior,
      final ZacValue<Widget?>? child,
      final ZacValue<bool?>? semanticContainer}) = _$_FlutterCard;
  _FlutterCard._() : super._();

  factory _FlutterCard.fromJson(Map<String, dynamic> json) =
      _$_FlutterCard.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Color?>? get color;
  @override
  ZacValue<Color?>? get shadowColor;
  @override
  ZacValue<double?>? get elevation;
  @override
  ZacValue<ShapeBorder?>? get shape;
  @override
  ZacValue<bool?>? get borderOnForeground;
  @override
  ZacValue<EdgeInsetsGeometry?>? get margin;
  @override
  ZacValue<Clip?>? get clipBehavior;
  @override
  ZacValue<Widget?>? get child;
  @override
  ZacValue<bool?>? get semanticContainer;
}
