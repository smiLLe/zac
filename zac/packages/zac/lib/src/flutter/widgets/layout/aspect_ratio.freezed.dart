// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aspect_ratio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterAspectRatio _$FlutterAspectRatioFromJson(Map<String, dynamic> json) {
  return _FlutterAspectRatio.fromJson(json);
}

/// @nodoc
mixin _$FlutterAspectRatio {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<double> get aspectRatio => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAspectRatio value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAspectRatio extends _FlutterAspectRatio {
  _$_FlutterAspectRatio({this.key, required this.aspectRatio, this.child})
      : super._();

  factory _$_FlutterAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAspectRatioFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<double> aspectRatio;
  @override
  final ZacBuilder<Widget?>? child;

  @override
  String toString() {
    return 'FlutterAspectRatio(key: $key, aspectRatio: $aspectRatio, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAspectRatio &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, aspectRatio, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAspectRatio value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterAspectRatio extends FlutterAspectRatio {
  factory _FlutterAspectRatio(
      {final ZacBuilder<Key?>? key,
      required final ZacBuilder<double> aspectRatio,
      final ZacBuilder<Widget?>? child}) = _$_FlutterAspectRatio;
  _FlutterAspectRatio._() : super._();

  factory _FlutterAspectRatio.fromJson(Map<String, dynamic> json) =
      _$_FlutterAspectRatio.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<double> get aspectRatio;
  @override
  ZacBuilder<Widget?>? get child;
}
