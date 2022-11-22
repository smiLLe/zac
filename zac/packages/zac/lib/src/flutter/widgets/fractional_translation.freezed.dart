// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fractional_translation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterFractionalTranslation _$FlutterFractionalTranslationFromJson(
    Map<String, dynamic> json) {
  return _FlutterFractionalTranslation.fromJson(json);
}

/// @nodoc
mixin _$FlutterFractionalTranslation {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;
  FlutterOffset get translation => throw _privateConstructorUsedError;
  ZacBool? get transformHitTests => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFractionalTranslation value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFractionalTranslation extends _FlutterFractionalTranslation {
  _$_FlutterFractionalTranslation(
      {this.key, this.child, required this.translation, this.transformHitTests})
      : super._();

  factory _$_FlutterFractionalTranslation.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFractionalTranslationFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget? child;
  @override
  final FlutterOffset translation;
  @override
  final ZacBool? transformHitTests;

  @override
  String toString() {
    return 'FlutterFractionalTranslation(key: $key, child: $child, translation: $translation, transformHitTests: $transformHitTests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFractionalTranslation &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.transformHitTests, transformHitTests) ||
                other.transformHitTests == transformHitTests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, child, translation, transformHitTests);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFractionalTranslation value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterFractionalTranslation
    extends FlutterFractionalTranslation {
  factory _FlutterFractionalTranslation(
      {final FlutterKey? key,
      final FlutterWidget? child,
      required final FlutterOffset translation,
      final ZacBool? transformHitTests}) = _$_FlutterFractionalTranslation;
  _FlutterFractionalTranslation._() : super._();

  factory _FlutterFractionalTranslation.fromJson(Map<String, dynamic> json) =
      _$_FlutterFractionalTranslation.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
  @override
  FlutterOffset get translation;
  @override
  ZacBool? get transformHitTests;
}
