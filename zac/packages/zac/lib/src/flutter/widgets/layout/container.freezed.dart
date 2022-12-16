// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterContainer _$FlutterContainerFromJson(Map<String, dynamic> json) {
  return _FlutterContainer.fromJson(json);
}

/// @nodoc
mixin _$FlutterContainer {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get margin => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get padding => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterDecoration? get decoration => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterContainer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterContainer extends _FlutterContainer {
  _$_FlutterContainer(
      {this.key,
      this.child,
      this.color,
      this.margin,
      this.padding,
      this.alignment,
      this.decoration})
      : super._();

  factory _$_FlutterContainer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterContainerFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacValue<Widget?>? child;
  @override
  final FlutterColor? color;
  @override
  final FlutterEdgeInsetsGeometry? margin;
  @override
  final FlutterEdgeInsetsGeometry? padding;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterDecoration? decoration;

  @override
  String toString() {
    return 'FlutterContainer(key: $key, child: $child, color: $color, margin: $margin, padding: $padding, alignment: $alignment, decoration: $decoration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterContainer &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, child, color, margin, padding, alignment, decoration);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterContainer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterContainer extends FlutterContainer {
  factory _FlutterContainer(
      {final FlutterKey? key,
      final ZacValue<Widget?>? child,
      final FlutterColor? color,
      final FlutterEdgeInsetsGeometry? margin,
      final FlutterEdgeInsetsGeometry? padding,
      final FlutterAlignmentGeometry? alignment,
      final FlutterDecoration? decoration}) = _$_FlutterContainer;
  _FlutterContainer._() : super._();

  factory _FlutterContainer.fromJson(Map<String, dynamic> json) =
      _$_FlutterContainer.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<Widget?>? get child;
  @override
  FlutterColor? get color;
  @override
  FlutterEdgeInsetsGeometry? get margin;
  @override
  FlutterEdgeInsetsGeometry? get padding;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterDecoration? get decoration;
}
