// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flexible.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterFlexible _$FlutterFlexibleFromJson(Map<String, dynamic> json) {
  return _FlutterFlexible.fromJson(json);
}

/// @nodoc
mixin _$FlutterFlexible {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<int?>? get flex => throw _privateConstructorUsedError;
  ZacBuilder<FlexFit?>? get fit => throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFlexible value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFlexible extends _FlutterFlexible {
  _$_FlutterFlexible({this.key, this.flex, this.fit, required this.child})
      : super._();

  factory _$_FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFlexibleFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<int?>? flex;
  @override
  final ZacBuilder<FlexFit?>? fit;
  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'FlutterFlexible(key: $key, flex: $flex, fit: $fit, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFlexible &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.flex, flex) || other.flex == flex) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, flex, fit, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFlexible value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterFlexible extends FlutterFlexible {
  factory _FlutterFlexible(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<int?>? flex,
      final ZacBuilder<FlexFit?>? fit,
      required final ZacBuilder<Widget> child}) = _$_FlutterFlexible;
  _FlutterFlexible._() : super._();

  factory _FlutterFlexible.fromJson(Map<String, dynamic> json) =
      _$_FlutterFlexible.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<int?>? get flex;
  @override
  ZacBuilder<FlexFit?>? get fit;
  @override
  ZacBuilder<Widget> get child;
}
