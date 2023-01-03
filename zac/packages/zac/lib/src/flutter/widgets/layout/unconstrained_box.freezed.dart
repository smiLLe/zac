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
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;
  ZacBuilder<TextDirection?>? get textDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<Axis?>? get constrainedAxis => throw _privateConstructorUsedError;
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;

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
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<TextDirection?>? textDirection;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<Axis?>? constrainedAxis;
  @override
  final ZacBuilder<Clip?>? clipBehavior;

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
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? child,
      final ZacBuilder<TextDirection?>? textDirection,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<Axis?>? constrainedAxis,
      final ZacBuilder<Clip?>? clipBehavior}) = _$_FlutterUnconstrainedBox;
  _FlutterUnconstrainedBox._() : super._();

  factory _FlutterUnconstrainedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterUnconstrainedBox.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<TextDirection?>? get textDirection;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<Axis?>? get constrainedAxis;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
}
