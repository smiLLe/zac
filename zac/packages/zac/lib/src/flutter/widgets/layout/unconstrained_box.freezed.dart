// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unconstrained_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterUnconstrainedBox _$FlutterUnconstrainedBoxFromJson(
    Map<String, dynamic> json) {
  return _FlutterUnconstrainedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterUnconstrainedBox {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;
  FlutterTextDirection? get textDirection => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterAxis? get constrainedAxis => throw _privateConstructorUsedError;
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUnconstrainedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterUnconstrainedBox extends _FlutterUnconstrainedBox {
  _$_FlutterUnconstrainedBox(
      {this.key,
      this.child,
      this.textDirection,
      this.alignment,
      this.constrainedAxis,
      this.clipBehavior})
      : super._();

  factory _$_FlutterUnconstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterUnconstrainedBoxFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacValue<Widget?>? child;
  @override
  final FlutterTextDirection? textDirection;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterAxis? constrainedAxis;
  @override
  final FlutterClip? clipBehavior;

  @override
  String toString() {
    return 'FlutterUnconstrainedBox(key: $key, child: $child, textDirection: $textDirection, alignment: $alignment, constrainedAxis: $constrainedAxis, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterUnconstrainedBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.constrainedAxis, constrainedAxis) ||
                other.constrainedAxis == constrainedAxis) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child, textDirection,
      alignment, constrainedAxis, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUnconstrainedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterUnconstrainedBox extends FlutterUnconstrainedBox {
  factory _FlutterUnconstrainedBox(
      {final FlutterKey? key,
      final ZacValue<Widget?>? child,
      final FlutterTextDirection? textDirection,
      final FlutterAlignmentGeometry? alignment,
      final FlutterAxis? constrainedAxis,
      final FlutterClip? clipBehavior}) = _$_FlutterUnconstrainedBox;
  _FlutterUnconstrainedBox._() : super._();

  factory _FlutterUnconstrainedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterUnconstrainedBox.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<Widget?>? get child;
  @override
  FlutterTextDirection? get textDirection;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterAxis? get constrainedAxis;
  @override
  FlutterClip? get clipBehavior;
}
