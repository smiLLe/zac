// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sized_overflow_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSizedOverflowBox _$FlutterSizedOverflowBoxFromJson(
    Map<String, dynamic> json) {
  return _FlutterSizedOverflowBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterSizedOverflowBox {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Size> get size => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSizedOverflowBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSizedOverflowBox extends _FlutterSizedOverflowBox {
  _$_FlutterSizedOverflowBox(
      {this.key, required this.size, this.alignment, this.child})
      : super._();

  factory _$_FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSizedOverflowBoxFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Size> size;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<Widget?>? child;

  @override
  String toString() {
    return 'FlutterSizedOverflowBox(key: $key, size: $size, alignment: $alignment, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSizedOverflowBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, size, alignment, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSizedOverflowBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSizedOverflowBox extends FlutterSizedOverflowBox {
  factory _FlutterSizedOverflowBox(
      {final ZacBuilder<Key?>? key,
      required final ZacBuilder<Size> size,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<Widget?>? child}) = _$_FlutterSizedOverflowBox;
  _FlutterSizedOverflowBox._() : super._();

  factory _FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterSizedOverflowBox.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Size> get size;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<Widget?>? get child;
}
