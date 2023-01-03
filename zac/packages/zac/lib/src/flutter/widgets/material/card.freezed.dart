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
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get shadowColor => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get elevation => throw _privateConstructorUsedError;
  ZacBuilder<ShapeBorder?>? get shape => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get borderOnForeground =>
      throw _privateConstructorUsedError;
  ZacBuilder<EdgeInsetsGeometry?>? get margin =>
      throw _privateConstructorUsedError;
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get semanticContainer =>
      throw _privateConstructorUsedError;

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
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Color?>? color;
  @override
  final ZacBuilder<Color?>? shadowColor;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<bool?>? borderOnForeground;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? margin;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<bool?>? semanticContainer;

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
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Color?>? color,
      final ZacBuilder<Color?>? shadowColor,
      final ZacBuilder<double?>? elevation,
      final ZacBuilder<ShapeBorder?>? shape,
      final ZacBuilder<bool?>? borderOnForeground,
      final ZacBuilder<EdgeInsetsGeometry?>? margin,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<Widget?>? child,
      final ZacBuilder<bool?>? semanticContainer}) = _$_FlutterCard;
  _FlutterCard._() : super._();

  factory _FlutterCard.fromJson(Map<String, dynamic> json) =
      _$_FlutterCard.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Color?>? get color;
  @override
  ZacBuilder<Color?>? get shadowColor;
  @override
  ZacBuilder<double?>? get elevation;
  @override
  ZacBuilder<ShapeBorder?>? get shape;
  @override
  ZacBuilder<bool?>? get borderOnForeground;
  @override
  ZacBuilder<EdgeInsetsGeometry?>? get margin;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<bool?>? get semanticContainer;
}
