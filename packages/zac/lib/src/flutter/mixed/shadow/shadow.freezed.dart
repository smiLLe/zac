// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shadow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterUiShadow _$FlutterUiShadowFromJson(Map<String, dynamic> json) {
  return _FlutterUiShadow.fromJson(json);
}

/// @nodoc
mixin _$FlutterUiShadow {
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterOffset? get offset => throw _privateConstructorUsedError;
  ZacDouble? get blurRadius => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUiShadow value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterUiShadow extends _FlutterUiShadow {
  _$_FlutterUiShadow({this.color, this.offset, this.blurRadius}) : super._();

  factory _$_FlutterUiShadow.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterUiShadowFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final FlutterOffset? offset;
  @override
  final ZacDouble? blurRadius;

  @override
  String toString() {
    return 'FlutterUiShadow(color: $color, offset: $offset, blurRadius: $blurRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterUiShadow &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality()
                .equals(other.blurRadius, blurRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(blurRadius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUiShadow value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterUiShadow extends FlutterUiShadow {
  factory _FlutterUiShadow(
      {final FlutterColor? color,
      final FlutterOffset? offset,
      final ZacDouble? blurRadius}) = _$_FlutterUiShadow;
  _FlutterUiShadow._() : super._();

  factory _FlutterUiShadow.fromJson(Map<String, dynamic> json) =
      _$_FlutterUiShadow.fromJson;

  @override
  FlutterColor? get color;
  @override
  FlutterOffset? get offset;
  @override
  ZacDouble? get blurRadius;
}

FlutterBoxShadow _$FlutterBoxShadowFromJson(Map<String, dynamic> json) {
  return _FlutterBoxShadow.fromJson(json);
}

/// @nodoc
mixin _$FlutterBoxShadow {
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterOffset? get offset => throw _privateConstructorUsedError;
  ZacDouble? get blurRadius => throw _privateConstructorUsedError;
  ZacDouble? get spreadRadius => throw _privateConstructorUsedError;
  FlutterBlurStyle? get blurStyle => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxShadow value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxShadow extends _FlutterBoxShadow {
  _$_FlutterBoxShadow(
      {this.color,
      this.offset,
      this.blurRadius,
      this.spreadRadius,
      this.blurStyle})
      : super._();

  factory _$_FlutterBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxShadowFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final FlutterOffset? offset;
  @override
  final ZacDouble? blurRadius;
  @override
  final ZacDouble? spreadRadius;
  @override
  final FlutterBlurStyle? blurStyle;

  @override
  String toString() {
    return 'FlutterBoxShadow(color: $color, offset: $offset, blurRadius: $blurRadius, spreadRadius: $spreadRadius, blurStyle: $blurStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxShadow &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality()
                .equals(other.blurRadius, blurRadius) &&
            const DeepCollectionEquality()
                .equals(other.spreadRadius, spreadRadius) &&
            const DeepCollectionEquality().equals(other.blurStyle, blurStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(blurRadius),
      const DeepCollectionEquality().hash(spreadRadius),
      const DeepCollectionEquality().hash(blurStyle));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxShadow value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBoxShadow extends FlutterBoxShadow {
  factory _FlutterBoxShadow(
      {final FlutterColor? color,
      final FlutterOffset? offset,
      final ZacDouble? blurRadius,
      final ZacDouble? spreadRadius,
      final FlutterBlurStyle? blurStyle}) = _$_FlutterBoxShadow;
  _FlutterBoxShadow._() : super._();

  factory _FlutterBoxShadow.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxShadow.fromJson;

  @override
  FlutterColor? get color;
  @override
  FlutterOffset? get offset;
  @override
  ZacDouble? get blurRadius;
  @override
  ZacDouble? get spreadRadius;
  @override
  FlutterBlurStyle? get blurStyle;
}
