// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'foundation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterValueKey _$FlutterValueKeyFromJson(Map<String, dynamic> json) {
  return _FlutterValueKey.fromJson(json);
}

/// @nodoc
mixin _$FlutterValueKey {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterValueKey value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterValueKey extends _FlutterValueKey {
  _$_FlutterValueKey(this.value) : super._();

  factory _$_FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterValueKeyFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'FlutterValueKey(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterValueKey &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterValueKey value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterValueKey extends FlutterValueKey {
  factory _FlutterValueKey(final String value) = _$_FlutterValueKey;
  _FlutterValueKey._() : super._();

  factory _FlutterValueKey.fromJson(Map<String, dynamic> json) =
      _$_FlutterValueKey.fromJson;

  @override
  String get value;
}
