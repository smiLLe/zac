// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overflow_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterOverflowBox _$FlutterOverflowBoxFromJson(Map<String, dynamic> json) {
  return _FlutterOverflowBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterOverflowBox {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get minWidth => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get maxWidth => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get minHeight => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get maxHeight => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOverflowBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOverflowBox extends _FlutterOverflowBox {
  _$_FlutterOverflowBox(
      {this.key,
      this.alignment,
      this.minWidth,
      this.maxWidth,
      this.minHeight,
      this.maxHeight,
      this.child})
      : super._();

  factory _$_FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOverflowBoxFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<double?>? minWidth;
  @override
  final ZacBuilder<double?>? maxWidth;
  @override
  final ZacBuilder<double?>? minHeight;
  @override
  final ZacBuilder<double?>? maxHeight;
  @override
  final ZacBuilder<Widget?>? child;

  @override
  String toString() {
    return 'FlutterOverflowBox(key: $key, alignment: $alignment, minWidth: $minWidth, maxWidth: $maxWidth, minHeight: $minHeight, maxHeight: $maxHeight, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOverflowBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, alignment, minWidth,
      maxWidth, minHeight, maxHeight, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOverflowBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterOverflowBox extends FlutterOverflowBox {
  factory _FlutterOverflowBox(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<double?>? minWidth,
      final ZacBuilder<double?>? maxWidth,
      final ZacBuilder<double?>? minHeight,
      final ZacBuilder<double?>? maxHeight,
      final ZacBuilder<Widget?>? child}) = _$_FlutterOverflowBox;
  _FlutterOverflowBox._() : super._();

  factory _FlutterOverflowBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterOverflowBox.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<double?>? get minWidth;
  @override
  ZacBuilder<double?>? get maxWidth;
  @override
  ZacBuilder<double?>? get minHeight;
  @override
  ZacBuilder<double?>? get maxHeight;
  @override
  ZacBuilder<Widget?>? get child;
}
