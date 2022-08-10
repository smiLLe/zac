// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'safe_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSafeArea _$FlutterSafeAreaFromJson(Map<String, dynamic> json) {
  return _FlutterSafeArea.fromJson(json);
}

/// @nodoc
mixin _$FlutterSafeArea {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacBool? get left => throw _privateConstructorUsedError;
  ZacBool? get top => throw _privateConstructorUsedError;
  ZacBool? get right => throw _privateConstructorUsedError;
  ZacBool? get bottom => throw _privateConstructorUsedError;
  FlutterEdgeInsets? get minimum => throw _privateConstructorUsedError;
  ZacBool? get maintainBottomViewPadding => throw _privateConstructorUsedError;
  ZacWidget get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSafeArea value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSafeArea extends _FlutterSafeArea {
  _$_FlutterSafeArea(
      {this.key,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.minimum,
      this.maintainBottomViewPadding,
      required this.child})
      : super._();

  factory _$_FlutterSafeArea.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSafeAreaFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacBool? left;
  @override
  final ZacBool? top;
  @override
  final ZacBool? right;
  @override
  final ZacBool? bottom;
  @override
  final FlutterEdgeInsets? minimum;
  @override
  final ZacBool? maintainBottomViewPadding;
  @override
  final ZacWidget child;

  @override
  String toString() {
    return 'FlutterSafeArea(key: $key, left: $left, top: $top, right: $right, bottom: $bottom, minimum: $minimum, maintainBottomViewPadding: $maintainBottomViewPadding, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSafeArea &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.minimum, minimum) &&
            const DeepCollectionEquality().equals(
                other.maintainBottomViewPadding, maintainBottomViewPadding) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(minimum),
      const DeepCollectionEquality().hash(maintainBottomViewPadding),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSafeArea value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSafeArea extends FlutterSafeArea {
  factory _FlutterSafeArea(
      {final FlutterKey? key,
      final ZacBool? left,
      final ZacBool? top,
      final ZacBool? right,
      final ZacBool? bottom,
      final FlutterEdgeInsets? minimum,
      final ZacBool? maintainBottomViewPadding,
      required final ZacWidget child}) = _$_FlutterSafeArea;
  _FlutterSafeArea._() : super._();

  factory _FlutterSafeArea.fromJson(Map<String, dynamic> json) =
      _$_FlutterSafeArea.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacBool? get left;
  @override
  ZacBool? get top;
  @override
  ZacBool? get right;
  @override
  ZacBool? get bottom;
  @override
  FlutterEdgeInsets? get minimum;
  @override
  ZacBool? get maintainBottomViewPadding;
  @override
  ZacWidget get child;
}