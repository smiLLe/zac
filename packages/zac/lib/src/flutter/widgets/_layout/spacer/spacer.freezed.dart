// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spacer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSpacer _$FlutterSpacerFromJson(Map<String, dynamic> json) {
  return _FlutterSpacer.fromJson(json);
}

/// @nodoc
mixin _$FlutterSpacer {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacInt? get flex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSpacer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSpacer extends _FlutterSpacer {
  _$_FlutterSpacer({this.key, this.flex}) : super._();

  factory _$_FlutterSpacer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSpacerFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacInt? flex;

  @override
  String toString() {
    return 'FlutterSpacer(key: $key, flex: $flex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSpacer &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.flex, flex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(flex));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSpacer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSpacer extends FlutterSpacer {
  factory _FlutterSpacer({final FlutterKey? key, final ZacInt? flex}) =
      _$_FlutterSpacer;
  _FlutterSpacer._() : super._();

  factory _FlutterSpacer.fromJson(Map<String, dynamic> json) =
      _$_FlutterSpacer.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacInt? get flex;
}