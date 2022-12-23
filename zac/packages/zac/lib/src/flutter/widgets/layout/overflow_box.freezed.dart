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
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacValue<double?>? get minWidth => throw _privateConstructorUsedError;
  ZacValue<double?>? get maxWidth => throw _privateConstructorUsedError;
  ZacValue<double?>? get minHeight => throw _privateConstructorUsedError;
  ZacValue<double?>? get maxHeight => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;

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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<AlignmentGeometry?>? alignment;
  @override
  final ZacValue<double?>? minWidth;
  @override
  final ZacValue<double?>? maxWidth;
  @override
  final ZacValue<double?>? minHeight;
  @override
  final ZacValue<double?>? maxHeight;
  @override
  final ZacValue<Widget?>? child;

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
      {final ZacValue<Key?>? key,
      final ZacValue<AlignmentGeometry?>? alignment,
      final ZacValue<double?>? minWidth,
      final ZacValue<double?>? maxWidth,
      final ZacValue<double?>? minHeight,
      final ZacValue<double?>? maxHeight,
      final ZacValue<Widget?>? child}) = _$_FlutterOverflowBox;
  _FlutterOverflowBox._() : super._();

  factory _FlutterOverflowBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterOverflowBox.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<AlignmentGeometry?>? get alignment;
  @override
  ZacValue<double?>? get minWidth;
  @override
  ZacValue<double?>? get maxWidth;
  @override
  ZacValue<double?>? get minHeight;
  @override
  ZacValue<double?>? get maxHeight;
  @override
  ZacValue<Widget?>? get child;
}
