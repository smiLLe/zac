// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<TextDirection?>? get textDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<StackFit?>? get sizing => throw _privateConstructorUsedError;
  ZacBuilder<int?>? get index => throw _privateConstructorUsedError;
  ZacListBuilder<Widget, List<Widget>?>? get children =>
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
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<TextDirection?>? textDirection;
  @override
  final ZacBuilder<StackFit?>? sizing;
  @override
  final ZacBuilder<int?>? index;
  @override
  final ZacListBuilder<Widget, List<Widget>?>? children;

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
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<AlignmentGeometry?>? alignment,
          final ZacBuilder<TextDirection?>? textDirection,
          final ZacBuilder<StackFit?>? sizing,
          final ZacBuilder<int?>? index,
          final ZacListBuilder<Widget, List<Widget>?>? children}) =
      _$_FlutterIndexedStack;
  _FlutterIndexedStack._() : super._();

  factory _FlutterIndexedStack.fromJson(Map<String, dynamic> json) =
      _$_FlutterIndexedStack.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<TextDirection?>? get textDirection;
  @override
  ZacBuilder<StackFit?>? get sizing;
  @override
  ZacBuilder<int?>? get index;
  @override
  ZacListBuilder<Widget, List<Widget>?>? get children;
}
