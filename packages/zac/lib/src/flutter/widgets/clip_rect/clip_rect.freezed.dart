// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clip_rect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterClipRect _$FlutterClipRectFromJson(Map<String, dynamic> json) {
  return _FlutterClipRect.fromJson(json);
}

/// @nodoc
mixin _$FlutterClipRect {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacWidget? get child =>
      throw _privateConstructorUsedError; // CustomClipper<Rect>? clipper,
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterClipRect value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterClipRect extends _FlutterClipRect {
  _$_FlutterClipRect({this.key, this.child, this.clipBehavior}) : super._();

  factory _$_FlutterClipRect.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterClipRectFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacWidget? child;
// CustomClipper<Rect>? clipper,
  @override
  final FlutterClip? clipBehavior;

  @override
  String toString() {
    return 'FlutterClipRect(key: $key, child: $child, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterClipRect &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.clipBehavior, clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(clipBehavior));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterClipRect value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterClipRect extends FlutterClipRect {
  factory _FlutterClipRect(
      {final FlutterKey? key,
      final ZacWidget? child,
      final FlutterClip? clipBehavior}) = _$_FlutterClipRect;
  _FlutterClipRect._() : super._();

  factory _FlutterClipRect.fromJson(Map<String, dynamic> json) =
      _$_FlutterClipRect.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacWidget? get child;
  @override // CustomClipper<Rect>? clipper,
  FlutterClip? get clipBehavior;
}
