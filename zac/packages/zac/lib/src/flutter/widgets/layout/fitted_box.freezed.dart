// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fitted_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterFittedBox _$FlutterFittedBoxFromJson(Map<String, dynamic> json) {
  return _FlutterFittedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterFittedBox {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<BoxFit?>? get fit => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFittedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFittedBox extends _FlutterFittedBox {
  _$_FlutterFittedBox(
      {this.key, this.fit, this.alignment, this.clipBehavior, this.child})
      : super._();

  factory _$_FlutterFittedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFittedBoxFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<BoxFit?>? fit;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<Widget?>? child;

  @override
  String toString() {
    return 'FlutterFittedBox(key: $key, fit: $fit, alignment: $alignment, clipBehavior: $clipBehavior, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFittedBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, fit, alignment, clipBehavior, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFittedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterFittedBox extends FlutterFittedBox {
  factory _FlutterFittedBox(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<BoxFit?>? fit,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<Widget?>? child}) = _$_FlutterFittedBox;
  _FlutterFittedBox._() : super._();

  factory _FlutterFittedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterFittedBox.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<BoxFit?>? get fit;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<Widget?>? get child;
}
