// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterTextDirection? get textDirection => throw _privateConstructorUsedError;
  FlutterStackFit? get fit => throw _privateConstructorUsedError;
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;
  ZacValueList<FlutterWidget>? get children =>
      throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterTextDirection? textDirection;
  @override
  final FlutterStackFit? fit;
  @override
  final FlutterClip? clipBehavior;
  @override
  final ZacValueList<FlutterWidget>? children;

  @override
  String toString() {
    return 'FlutterStack(key: $key, alignment: $alignment, textDirection: $textDirection, fit: $fit, clipBehavior: $clipBehavior, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterStack &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.alignment, alignment) &&
            const DeepCollectionEquality()
                .equals(other.textDirection, textDirection) &&
            const DeepCollectionEquality().equals(other.fit, fit) &&
            const DeepCollectionEquality()
                .equals(other.clipBehavior, clipBehavior) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(alignment),
      const DeepCollectionEquality().hash(textDirection),
      const DeepCollectionEquality().hash(fit),
      const DeepCollectionEquality().hash(clipBehavior),
      const DeepCollectionEquality().hash(children));

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
      {final FlutterKey? key,
      final FlutterAlignmentGeometry? alignment,
      final FlutterTextDirection? textDirection,
      final FlutterStackFit? fit,
      final FlutterClip? clipBehavior,
      final ZacValueList<FlutterWidget>? children}) = _$_FlutterStack;
  _FlutterStack._() : super._();

  factory _FlutterStack.fromJson(Map<String, dynamic> json) =
      _$_FlutterStack.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterTextDirection? get textDirection;
  @override
  FlutterStackFit? get fit;
  @override
  FlutterClip? get clipBehavior;
  @override
  ZacValueList<FlutterWidget>? get children;
}
