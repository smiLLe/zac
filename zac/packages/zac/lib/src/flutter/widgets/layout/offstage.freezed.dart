// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offstage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterOffstage _$FlutterOffstageFromJson(Map<String, dynamic> json) {
  return _FlutterOffstage.fromJson(json);
}

/// @nodoc
mixin _$FlutterOffstage {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<bool?>? get offstage => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOffstage value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOffstage extends _FlutterOffstage {
  _$_FlutterOffstage({this.key, this.offstage, this.child}) : super._();

  factory _$_FlutterOffstage.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOffstageFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacValue<bool?>? offstage;
  @override
  final ZacValue<Widget?>? child;

  @override
  String toString() {
    return 'FlutterOffstage(key: $key, offstage: $offstage, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOffstage &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.offstage, offstage) ||
                other.offstage == offstage) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, offstage, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOffstage value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterOffstage extends FlutterOffstage {
  factory _FlutterOffstage(
      {final FlutterKey? key,
      final ZacValue<bool?>? offstage,
      final ZacValue<Widget?>? child}) = _$_FlutterOffstage;
  _FlutterOffstage._() : super._();

  factory _FlutterOffstage.fromJson(Map<String, dynamic> json) =
      _$_FlutterOffstage.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<bool?>? get offstage;
  @override
  ZacValue<Widget?>? get child;
}
