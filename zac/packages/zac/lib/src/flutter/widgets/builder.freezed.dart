// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<Widget> get child => throw _privateConstructorUsedError;

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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget> child;

  @override
  String toString() {
    return 'FlutterBuilder(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBuilder &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child);

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
      {final ZacValue<Key?>? key,
      required final ZacValue<Widget> child}) = _$_FlutterBuilder;
  _FlutterBuilder._() : super._();

  factory _FlutterBuilder.fromJson(Map<String, dynamic> json) =
      _$_FlutterBuilder.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget> get child;
}
