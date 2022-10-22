// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<double>? get height => throw _privateConstructorUsedError;
  ZacValue<double>? get thickness => throw _privateConstructorUsedError;
  ZacValue<double>? get indent => throw _privateConstructorUsedError;
  ZacValue<double>? get endIndent => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final ZacValue<double>? height;
  @override
  final ZacValue<double>? thickness;
  @override
  final ZacValue<double>? indent;
  @override
  final ZacValue<double>? endIndent;
  @override
  final FlutterColor? color;

  @override
  String toString() {
    return 'FlutterDivider(key: $key, height: $height, thickness: $thickness, indent: $indent, endIndent: $endIndent, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDivider &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.thickness, thickness) &&
            const DeepCollectionEquality().equals(other.indent, indent) &&
            const DeepCollectionEquality().equals(other.endIndent, endIndent) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(thickness),
      const DeepCollectionEquality().hash(indent),
      const DeepCollectionEquality().hash(endIndent),
      const DeepCollectionEquality().hash(color));

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
      {final FlutterKey? key,
      final ZacValue<double>? height,
      final ZacValue<double>? thickness,
      final ZacValue<double>? indent,
      final ZacValue<double>? endIndent,
      final FlutterColor? color}) = _$_FlutterDivider;
  _FlutterDivider._() : super._();

  factory _FlutterDivider.fromJson(Map<String, dynamic> json) =
      _$_FlutterDivider.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<double>? get height;
  @override
  ZacValue<double>? get thickness;
  @override
  ZacValue<double>? get indent;
  @override
  ZacValue<double>? get endIndent;
  @override
  FlutterColor? get color;
}
