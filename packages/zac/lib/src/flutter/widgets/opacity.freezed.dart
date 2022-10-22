// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'opacity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterOpacity _$FlutterOpacityFromJson(Map<String, dynamic> json) {
  return _FlutterOpacity.fromJson(json);
}

/// @nodoc
mixin _$FlutterOpacity {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<double> get opacity => throw _privateConstructorUsedError;
  ZacBool? get alwaysIncludeSemantics => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOpacity value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOpacity extends _FlutterOpacity {
  _$_FlutterOpacity(
      {this.key,
      required this.opacity,
      this.alwaysIncludeSemantics,
      this.child})
      : super._();

  factory _$_FlutterOpacity.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOpacityFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacValue<double> opacity;
  @override
  final ZacBool? alwaysIncludeSemantics;
  @override
  final FlutterWidget? child;

  @override
  String toString() {
    return 'FlutterOpacity(key: $key, opacity: $opacity, alwaysIncludeSemantics: $alwaysIncludeSemantics, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOpacity &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.opacity, opacity) &&
            const DeepCollectionEquality()
                .equals(other.alwaysIncludeSemantics, alwaysIncludeSemantics) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(opacity),
      const DeepCollectionEquality().hash(alwaysIncludeSemantics),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOpacity value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterOpacity extends FlutterOpacity {
  factory _FlutterOpacity(
      {final FlutterKey? key,
      required final ZacValue<double> opacity,
      final ZacBool? alwaysIncludeSemantics,
      final FlutterWidget? child}) = _$_FlutterOpacity;
  _FlutterOpacity._() : super._();

  factory _FlutterOpacity.fromJson(Map<String, dynamic> json) =
      _$_FlutterOpacity.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<double> get opacity;
  @override
  ZacBool? get alwaysIncludeSemantics;
  @override
  FlutterWidget? get child;
}
