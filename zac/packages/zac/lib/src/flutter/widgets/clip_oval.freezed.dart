// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_oval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterClipOval _$FlutterClipOvalFromJson(Map<String, dynamic> json) {
  return _FlutterClipOval.fromJson(json);
}

/// @nodoc
mixin _$FlutterClipOval {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child =>
      throw _privateConstructorUsedError; // CustomClipper<Rect>? clipper,
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterClipOval value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterClipOval extends _FlutterClipOval {
  _$_FlutterClipOval({this.key, this.child, this.clipBehavior}) : super._();

  factory _$_FlutterClipOval.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterClipOvalFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
// CustomClipper<Rect>? clipper,
  @override
  final ZacBuilder<Clip?>? clipBehavior;

  @override
  String toString() {
    return 'FlutterClipOval(key: $key, child: $child, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterClipOval &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterClipOval value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterClipOval extends FlutterClipOval {
  factory _FlutterClipOval(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? child,
      final ZacBuilder<Clip?>? clipBehavior}) = _$_FlutterClipOval;
  _FlutterClipOval._() : super._();

  factory _FlutterClipOval.fromJson(Map<String, dynamic> json) =
      _$_FlutterClipOval.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Widget?>? get child;
  @override // CustomClipper<Rect>? clipper,
  ZacBuilder<Clip?>? get clipBehavior;
}
