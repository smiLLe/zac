// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget? get child =>
      throw _privateConstructorUsedError; // CustomClipper<Rect>? clipper,
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final FlutterWidget? child;
// CustomClipper<Rect>? clipper,
  @override
  final FlutterClip? clipBehavior;

  @override
  String toString() {
    return 'FlutterClipOval(key: $key, child: $child, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterClipOval &&
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
    TResult Function(_FlutterClipOval value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterClipOval extends FlutterClipOval {
  factory _FlutterClipOval(
      {final FlutterKey? key,
      final FlutterWidget? child,
      final FlutterClip? clipBehavior}) = _$_FlutterClipOval;
  _FlutterClipOval._() : super._();

  factory _FlutterClipOval.fromJson(Map<String, dynamic> json) =
      _$_FlutterClipOval.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
  @override // CustomClipper<Rect>? clipper,
  FlutterClip? get clipBehavior;
}
