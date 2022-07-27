// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterBuilder _$FlutterBuilderFromJson(Map<String, dynamic> json) {
  return _FlutterBuilder.fromJson(json);
}

/// @nodoc
mixin _$FlutterBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacWidget get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBuilder extends _FlutterBuilder {
  _$_FlutterBuilder({this.key, required this.child}) : super._();

  factory _$_FlutterBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacWidget child;

  @override
  String toString() {
    return 'FlutterBuilder(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBuilder extends FlutterBuilder {
  factory _FlutterBuilder(
      {final FlutterKey? key,
      required final ZacWidget child}) = _$_FlutterBuilder;
  _FlutterBuilder._() : super._();

  factory _FlutterBuilder.fromJson(Map<String, dynamic> json) =
      _$_FlutterBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacWidget get child;
}
