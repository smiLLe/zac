// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intrinsic_height.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterIntrinsicHeight _$FlutterIntrinsicHeightFromJson(
    Map<String, dynamic> json) {
  return _FlutterIntrinsicHeight.fromJson(json);
}

/// @nodoc
mixin _$FlutterIntrinsicHeight {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIntrinsicHeight value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterIntrinsicHeight extends _FlutterIntrinsicHeight {
  _$_FlutterIntrinsicHeight({this.key, this.child}) : super._();

  factory _$_FlutterIntrinsicHeight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterIntrinsicHeightFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;

  @override
  String toString() {
    return 'FlutterIntrinsicHeight(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIntrinsicHeight &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIntrinsicHeight value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterIntrinsicHeight extends FlutterIntrinsicHeight {
  factory _FlutterIntrinsicHeight(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? child}) = _$_FlutterIntrinsicHeight;
  _FlutterIntrinsicHeight._() : super._();

  factory _FlutterIntrinsicHeight.fromJson(Map<String, dynamic> json) =
      _$_FlutterIntrinsicHeight.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Widget?>? get child;
}
