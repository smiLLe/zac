// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'indexed_stack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterIndexedStack _$FlutterIndexedStackFromJson(Map<String, dynamic> json) {
  return _FlutterIndexedStack.fromJson(json);
}

/// @nodoc
mixin _$FlutterIndexedStack {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterTextDirection? get textDirection => throw _privateConstructorUsedError;
  FlutterStackFit? get sizing => throw _privateConstructorUsedError;
  ZacInt? get index => throw _privateConstructorUsedError;
  ZacValueList<FlutterWidget>? get children =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIndexedStack value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterIndexedStack extends _FlutterIndexedStack {
  _$_FlutterIndexedStack(
      {this.key,
      this.alignment,
      this.textDirection,
      this.sizing,
      this.index,
      this.children})
      : super._();

  factory _$_FlutterIndexedStack.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterIndexedStackFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterTextDirection? textDirection;
  @override
  final FlutterStackFit? sizing;
  @override
  final ZacInt? index;
  @override
  final ZacValueList<FlutterWidget>? children;

  @override
  String toString() {
    return 'FlutterIndexedStack(key: $key, alignment: $alignment, textDirection: $textDirection, sizing: $sizing, index: $index, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIndexedStack &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.sizing, sizing) || other.sizing == sizing) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, alignment, textDirection, sizing, index, children);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIndexedStack value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterIndexedStack extends FlutterIndexedStack {
  factory _FlutterIndexedStack(
      {final FlutterKey? key,
      final FlutterAlignmentGeometry? alignment,
      final FlutterTextDirection? textDirection,
      final FlutterStackFit? sizing,
      final ZacInt? index,
      final ZacValueList<FlutterWidget>? children}) = _$_FlutterIndexedStack;
  _FlutterIndexedStack._() : super._();

  factory _FlutterIndexedStack.fromJson(Map<String, dynamic> json) =
      _$_FlutterIndexedStack.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterTextDirection? get textDirection;
  @override
  FlutterStackFit? get sizing;
  @override
  ZacInt? get index;
  @override
  ZacValueList<FlutterWidget>? get children;
}
