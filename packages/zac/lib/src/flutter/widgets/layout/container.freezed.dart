// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterContainer _$FlutterContainerFromJson(Map<String, dynamic> json) {
  return _FlutterContainer.fromJson(json);
}

/// @nodoc
mixin _$FlutterContainer {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get margin => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get padding => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterDecoration? get decoration => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterContainer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterContainer extends _FlutterContainer {
  _$_FlutterContainer(
      {this.key,
      this.child,
      this.color,
      this.margin,
      this.padding,
      this.alignment,
      this.decoration})
      : super._();

  factory _$_FlutterContainer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterContainerFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacWidget? child;
  @override
  final FlutterColor? color;
  @override
  final FlutterEdgeInsetsGeometry? margin;
  @override
  final FlutterEdgeInsetsGeometry? padding;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterDecoration? decoration;

  @override
  String toString() {
    return 'FlutterContainer(key: $key, child: $child, color: $color, margin: $margin, padding: $padding, alignment: $alignment, decoration: $decoration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterContainer &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.margin, margin) &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.alignment, alignment) &&
            const DeepCollectionEquality()
                .equals(other.decoration, decoration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(margin),
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(alignment),
      const DeepCollectionEquality().hash(decoration));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterContainer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterContainer extends FlutterContainer {
  factory _FlutterContainer(
      {final FlutterKey? key,
      final ZacWidget? child,
      final FlutterColor? color,
      final FlutterEdgeInsetsGeometry? margin,
      final FlutterEdgeInsetsGeometry? padding,
      final FlutterAlignmentGeometry? alignment,
      final FlutterDecoration? decoration}) = _$_FlutterContainer;
  _FlutterContainer._() : super._();

  factory _FlutterContainer.fromJson(Map<String, dynamic> json) =
      _$_FlutterContainer.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacWidget? get child;
  @override
  FlutterColor? get color;
  @override
  FlutterEdgeInsetsGeometry? get margin;
  @override
  FlutterEdgeInsetsGeometry? get padding;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterDecoration? get decoration;
}
