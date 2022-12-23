// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intrinsic_width.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterIntrinsicWidth _$FlutterIntrinsicWidthFromJson(
    Map<String, dynamic> json) {
  return _FlutterIntrinsicWidth.fromJson(json);
}

/// @nodoc
mixin _$FlutterIntrinsicWidth {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIntrinsicWidth value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterIntrinsicWidth extends _FlutterIntrinsicWidth {
  _$_FlutterIntrinsicWidth({this.key, this.child}) : super._();

  factory _$_FlutterIntrinsicWidth.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterIntrinsicWidthFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;

  @override
  String toString() {
    return 'FlutterIntrinsicWidth(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIntrinsicWidth &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIntrinsicWidth value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterIntrinsicWidth extends FlutterIntrinsicWidth {
  factory _FlutterIntrinsicWidth(
      {final ZacValue<Key?>? key,
      final ZacValue<Widget?>? child}) = _$_FlutterIntrinsicWidth;
  _FlutterIntrinsicWidth._() : super._();

  factory _FlutterIntrinsicWidth.fromJson(Map<String, dynamic> json) =
      _$_FlutterIntrinsicWidth.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget?>? get child;
}
