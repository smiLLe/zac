// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'divider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterDivider _$FlutterDividerFromJson(Map<String, dynamic> json) {
  return _FlutterDivider.fromJson(json);
}

/// @nodoc
mixin _$FlutterDivider {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get height => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get thickness => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get indent => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get endIndent => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDivider value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDivider extends _FlutterDivider {
  _$_FlutterDivider(
      {this.key,
      this.height,
      this.thickness,
      this.indent,
      this.endIndent,
      this.color})
      : super._();

  factory _$_FlutterDivider.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDividerFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<double?>? height;
  @override
  final ZacBuilder<double?>? thickness;
  @override
  final ZacBuilder<double?>? indent;
  @override
  final ZacBuilder<double?>? endIndent;
  @override
  final ZacBuilder<Color?>? color;

  @override
  String toString() {
    return 'FlutterDivider(key: $key, height: $height, thickness: $thickness, indent: $indent, endIndent: $endIndent, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDivider &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.indent, indent) || other.indent == indent) &&
            (identical(other.endIndent, endIndent) ||
                other.endIndent == endIndent) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, height, thickness, indent, endIndent, color);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDivider value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterDivider extends FlutterDivider {
  factory _FlutterDivider(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<double?>? height,
      final ZacBuilder<double?>? thickness,
      final ZacBuilder<double?>? indent,
      final ZacBuilder<double?>? endIndent,
      final ZacBuilder<Color?>? color}) = _$_FlutterDivider;
  _FlutterDivider._() : super._();

  factory _FlutterDivider.fromJson(Map<String, dynamic> json) =
      _$_FlutterDivider.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<double?>? get height;
  @override
  ZacBuilder<double?>? get thickness;
  @override
  ZacBuilder<double?>? get indent;
  @override
  ZacBuilder<double?>? get endIndent;
  @override
  ZacBuilder<Color?>? get color;
}
