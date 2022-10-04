// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterSize get size => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final FlutterSize size;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterWidget? child;

  @override
  String toString() {
    return 'FlutterSizedOverflowBox(key: $key, size: $size, alignment: $alignment, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSizedOverflowBox &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.alignment, alignment) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(alignment),
      const DeepCollectionEquality().hash(child));

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
      {final FlutterKey? key,
      required final FlutterSize size,
      final FlutterAlignmentGeometry? alignment,
      final FlutterWidget? child}) = _$_FlutterSizedOverflowBox;
  _FlutterSizedOverflowBox._() : super._();

  factory _FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterSizedOverflowBox.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterSize get size;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterWidget? get child;
}
