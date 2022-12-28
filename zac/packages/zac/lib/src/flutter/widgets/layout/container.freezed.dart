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
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  ZacBuilder<EdgeInsetsGeometry?>? get margin =>
      throw _privateConstructorUsedError;
  ZacBuilder<EdgeInsetsGeometry?>? get padding =>
      throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<Decoration?>? get decoration => throw _privateConstructorUsedError;

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
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<Color?>? color;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? margin;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? padding;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<Decoration?>? decoration;

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
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? child,
      final ZacBuilder<Color?>? color,
      final ZacBuilder<EdgeInsetsGeometry?>? margin,
      final ZacBuilder<EdgeInsetsGeometry?>? padding,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<Decoration?>? decoration}) = _$_FlutterContainer;
  _FlutterContainer._() : super._();

  factory _FlutterContainer.fromJson(Map<String, dynamic> json) =
      _$_FlutterContainer.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<Color?>? get color;
  @override
  ZacBuilder<EdgeInsetsGeometry?>? get margin;
  @override
  ZacBuilder<EdgeInsetsGeometry?>? get padding;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<Decoration?>? get decoration;
}
