// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get left => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get top => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get right => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get bottom => throw _privateConstructorUsedError;
  ZacBuilder<EdgeInsets?>? get minimum => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get maintainBottomViewPadding =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

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
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<bool?>? left;
  @override
  final ZacBuilder<bool?>? top;
  @override
  final ZacBuilder<bool?>? right;
  @override
  final ZacBuilder<bool?>? bottom;
  @override
  final ZacBuilder<EdgeInsets?>? minimum;
  @override
  final ZacBuilder<bool?>? maintainBottomViewPadding;
  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'FlutterSafeArea(key: $key, left: $left, top: $top, right: $right, bottom: $bottom, minimum: $minimum, maintainBottomViewPadding: $maintainBottomViewPadding, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSafeArea &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maintainBottomViewPadding,
                    maintainBottomViewPadding) ||
                other.maintainBottomViewPadding == maintainBottomViewPadding) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, left, top, right, bottom,
      minimum, maintainBottomViewPadding, child);

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
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<bool?>? left,
      final ZacBuilder<bool?>? top,
      final ZacBuilder<bool?>? right,
      final ZacBuilder<bool?>? bottom,
      final ZacBuilder<EdgeInsets?>? minimum,
      final ZacBuilder<bool?>? maintainBottomViewPadding,
      required final ZacBuilder<Widget> child}) = _$_FlutterSafeArea;
  _FlutterSafeArea._() : super._();

  factory _FlutterSafeArea.fromJson(Map<String, dynamic> json) =
      _$_FlutterSafeArea.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<bool?>? get left;
  @override
  ZacBuilder<bool?>? get top;
  @override
  ZacBuilder<bool?>? get right;
  @override
  ZacBuilder<bool?>? get bottom;
  @override
  ZacBuilder<EdgeInsets?>? get minimum;
  @override
  ZacBuilder<bool?>? get maintainBottomViewPadding;
  @override
  ZacBuilder<Widget> get child;
}
