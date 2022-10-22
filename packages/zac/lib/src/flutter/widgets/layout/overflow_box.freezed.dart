// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  ZacValue<double>? get minWidth => throw _privateConstructorUsedError;
  ZacValue<double>? get maxWidth => throw _privateConstructorUsedError;
  ZacValue<double>? get minHeight => throw _privateConstructorUsedError;
  ZacValue<double>? get maxHeight => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final ZacValue<double>? minWidth;
  @override
  final ZacValue<double>? maxWidth;
  @override
  final ZacValue<double>? minHeight;
  @override
  final ZacValue<double>? maxHeight;
  @override
  final FlutterWidget? child;

  @override
  String toString() {
    return 'FlutterOverflowBox(key: $key, alignment: $alignment, minWidth: $minWidth, maxWidth: $maxWidth, minHeight: $minHeight, maxHeight: $maxHeight, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOverflowBox &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.alignment, alignment) &&
            const DeepCollectionEquality().equals(other.minWidth, minWidth) &&
            const DeepCollectionEquality().equals(other.maxWidth, maxWidth) &&
            const DeepCollectionEquality().equals(other.minHeight, minHeight) &&
            const DeepCollectionEquality().equals(other.maxHeight, maxHeight) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(alignment),
      const DeepCollectionEquality().hash(minWidth),
      const DeepCollectionEquality().hash(maxWidth),
      const DeepCollectionEquality().hash(minHeight),
      const DeepCollectionEquality().hash(maxHeight),
      const DeepCollectionEquality().hash(child));

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
      {final FlutterKey? key,
      final FlutterAlignmentGeometry? alignment,
      final ZacValue<double>? minWidth,
      final ZacValue<double>? maxWidth,
      final ZacValue<double>? minHeight,
      final ZacValue<double>? maxHeight,
      final FlutterWidget? child}) = _$_FlutterOverflowBox;
  _FlutterOverflowBox._() : super._();

  factory _FlutterOverflowBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterOverflowBox.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  ZacValue<double>? get minWidth;
  @override
  ZacValue<double>? get maxWidth;
  @override
  ZacValue<double>? get minHeight;
  @override
  ZacValue<double>? get maxHeight;
  @override
  FlutterWidget? get child;
}
