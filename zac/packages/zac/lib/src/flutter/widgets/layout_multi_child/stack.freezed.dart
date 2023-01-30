// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterStack _$FlutterStackFromJson(Map<String, dynamic> json) {
  return _FlutterStack.fromJson(json);
}

/// @nodoc
mixin _$FlutterStack {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<TextDirection?>? get textDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<StackFit?>? get fit => throw _privateConstructorUsedError;
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;
  ZacBuilder<List<Widget>?>? get children => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterStack value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterStack extends _FlutterStack {
  _$_FlutterStack(
      {this.key,
      this.alignment,
      this.textDirection,
      this.fit,
      this.clipBehavior,
      this.children})
      : super._();

  factory _$_FlutterStack.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterStackFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<TextDirection?>? textDirection;
  @override
  final ZacBuilder<StackFit?>? fit;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<List<Widget>?>? children;

  @override
  String toString() {
    return 'FlutterStack(key: $key, alignment: $alignment, textDirection: $textDirection, fit: $fit, clipBehavior: $clipBehavior, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterStack &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, alignment, textDirection, fit, clipBehavior, children);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterStack value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterStack extends FlutterStack {
  factory _FlutterStack(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<TextDirection?>? textDirection,
      final ZacBuilder<StackFit?>? fit,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<List<Widget>?>? children}) = _$_FlutterStack;
  _FlutterStack._() : super._();

  factory _FlutterStack.fromJson(Map<String, dynamic> json) =
      _$_FlutterStack.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<TextDirection?>? get textDirection;
  @override
  ZacBuilder<StackFit?>? get fit;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<List<Widget>?>? get children;
}
