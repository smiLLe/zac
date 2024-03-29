// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<double> get opacity => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get alwaysIncludeSemantics =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;

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
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<double> opacity;
  @override
  final ZacBuilder<bool?>? alwaysIncludeSemantics;
  @override
  final ZacBuilder<Widget?>? child;

  @override
  String toString() {
    return 'FlutterOpacity(key: $key, opacity: $opacity, alwaysIncludeSemantics: $alwaysIncludeSemantics, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOpacity &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            (identical(other.alwaysIncludeSemantics, alwaysIncludeSemantics) ||
                other.alwaysIncludeSemantics == alwaysIncludeSemantics) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, opacity, alwaysIncludeSemantics, child);

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
      {final ZacBuilder<Key?>? key,
      required final ZacBuilder<double> opacity,
      final ZacBuilder<bool?>? alwaysIncludeSemantics,
      final ZacBuilder<Widget?>? child}) = _$_FlutterOpacity;
  _FlutterOpacity._() : super._();

  factory _FlutterOpacity.fromJson(Map<String, dynamic> json) =
      _$_FlutterOpacity.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<double> get opacity;
  @override
  ZacBuilder<bool?>? get alwaysIncludeSemantics;
  @override
  ZacBuilder<Widget?>? get child;
}
