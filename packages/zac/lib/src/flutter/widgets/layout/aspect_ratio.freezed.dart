// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<double> get aspectRatio => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final ZacValue<double> aspectRatio;
  @override
  final FlutterWidget? child;

  @override
  String toString() {
    return 'FlutterAspectRatio(key: $key, aspectRatio: $aspectRatio, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAspectRatio &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.aspectRatio, aspectRatio) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(aspectRatio),
      const DeepCollectionEquality().hash(child));

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
      {final FlutterKey? key,
      required final ZacValue<double> aspectRatio,
      final FlutterWidget? child}) = _$_FlutterAspectRatio;
  _FlutterAspectRatio._() : super._();

  factory _FlutterAspectRatio.fromJson(Map<String, dynamic> json) =
      _$_FlutterAspectRatio.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<double> get aspectRatio;
  @override
  FlutterWidget? get child;
}
