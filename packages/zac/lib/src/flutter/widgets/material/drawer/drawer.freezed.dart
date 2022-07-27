// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterDrawer _$FlutterDrawerFromJson(Map<String, dynamic> json) {
  return _FlutterDrawer.fromJson(json);
}

/// @nodoc
mixin _$FlutterDrawer {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterColor? get backgroundColor => throw _privateConstructorUsedError;
  ZacDouble? get elevation => throw _privateConstructorUsedError;
  FlutterShapeBorder? get shape => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;
  ZacString? get semanticLabel => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDrawer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDrawer extends _FlutterDrawer {
  _$_FlutterDrawer(
      {this.key,
      this.backgroundColor,
      this.elevation,
      this.shape,
      this.child,
      this.semanticLabel})
      : super._();

  factory _$_FlutterDrawer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDrawerFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterColor? backgroundColor;
  @override
  final ZacDouble? elevation;
  @override
  final FlutterShapeBorder? shape;
  @override
  final ZacWidget? child;
  @override
  final ZacString? semanticLabel;

  @override
  String toString() {
    return 'FlutterDrawer(key: $key, backgroundColor: $backgroundColor, elevation: $elevation, shape: $shape, child: $child, semanticLabel: $semanticLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDrawer &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.elevation, elevation) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.semanticLabel, semanticLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(elevation),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(semanticLabel));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDrawer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterDrawer extends FlutterDrawer {
  factory _FlutterDrawer(
      {final FlutterKey? key,
      final FlutterColor? backgroundColor,
      final ZacDouble? elevation,
      final FlutterShapeBorder? shape,
      final ZacWidget? child,
      final ZacString? semanticLabel}) = _$_FlutterDrawer;
  _FlutterDrawer._() : super._();

  factory _FlutterDrawer.fromJson(Map<String, dynamic> json) =
      _$_FlutterDrawer.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterColor? get backgroundColor;
  @override
  ZacDouble? get elevation;
  @override
  FlutterShapeBorder? get shape;
  @override
  ZacWidget? get child;
  @override
  ZacString? get semanticLabel;
}
