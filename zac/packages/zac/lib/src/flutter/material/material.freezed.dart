// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterOutlineInputBorder _$FlutterOutlineInputBorderFromJson(
    Map<String, dynamic> json) {
  return _FlutterOutlineInputBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterOutlineInputBorder {
  FlutterBorderSide? get borderSide => throw _privateConstructorUsedError;
  FlutterBorderRadius? get borderRadius => throw _privateConstructorUsedError;
  ZacValue<double>? get gapPadding => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOutlineInputBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOutlineInputBorder extends _FlutterOutlineInputBorder {
  _$_FlutterOutlineInputBorder(
      {this.borderSide, this.borderRadius, this.gapPadding})
      : super._();

  factory _$_FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOutlineInputBorderFromJson(json);

  @override
  final FlutterBorderSide? borderSide;
  @override
  final FlutterBorderRadius? borderRadius;
  @override
  final ZacValue<double>? gapPadding;

  @override
  String toString() {
    return 'FlutterOutlineInputBorder(borderSide: $borderSide, borderRadius: $borderRadius, gapPadding: $gapPadding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOutlineInputBorder &&
            (identical(other.borderSide, borderSide) ||
                other.borderSide == borderSide) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.gapPadding, gapPadding) ||
                other.gapPadding == gapPadding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, borderSide, borderRadius, gapPadding);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOutlineInputBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterOutlineInputBorder extends FlutterOutlineInputBorder {
  factory _FlutterOutlineInputBorder(
      {final FlutterBorderSide? borderSide,
      final FlutterBorderRadius? borderRadius,
      final ZacValue<double>? gapPadding}) = _$_FlutterOutlineInputBorder;
  _FlutterOutlineInputBorder._() : super._();

  factory _FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterOutlineInputBorder.fromJson;

  @override
  FlutterBorderSide? get borderSide;
  @override
  FlutterBorderRadius? get borderRadius;
  @override
  ZacValue<double>? get gapPadding;
}

FlutterUnderlineInputBorder _$FlutterUnderlineInputBorderFromJson(
    Map<String, dynamic> json) {
  return _FlutterUnderlineInputBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterUnderlineInputBorder {
  FlutterBorderSide? get borderSide => throw _privateConstructorUsedError;
  FlutterBorderRadius? get borderRadius => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUnderlineInputBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterUnderlineInputBorder extends _FlutterUnderlineInputBorder {
  _$_FlutterUnderlineInputBorder({this.borderSide, this.borderRadius})
      : super._();

  factory _$_FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterUnderlineInputBorderFromJson(json);

  @override
  final FlutterBorderSide? borderSide;
  @override
  final FlutterBorderRadius? borderRadius;

  @override
  String toString() {
    return 'FlutterUnderlineInputBorder(borderSide: $borderSide, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterUnderlineInputBorder &&
            (identical(other.borderSide, borderSide) ||
                other.borderSide == borderSide) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, borderSide, borderRadius);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUnderlineInputBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterUnderlineInputBorder
    extends FlutterUnderlineInputBorder {
  factory _FlutterUnderlineInputBorder(
          {final FlutterBorderSide? borderSide,
          final FlutterBorderRadius? borderRadius}) =
      _$_FlutterUnderlineInputBorder;
  _FlutterUnderlineInputBorder._() : super._();

  factory _FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterUnderlineInputBorder.fromJson;

  @override
  FlutterBorderSide? get borderSide;
  @override
  FlutterBorderRadius? get borderRadius;
}

FlutterMaterialPageRoute _$FlutterMaterialPageRouteFromJson(
    Map<String, dynamic> json) {
  return _FlutterMaterialPageRoute.fromJson(json);
}

/// @nodoc
mixin _$FlutterMaterialPageRoute {
  FlutterWidget get child => throw _privateConstructorUsedError;
  FlutterRouteSettings? get settings => throw _privateConstructorUsedError;
  ZacValue<bool>? get maintainState => throw _privateConstructorUsedError;
  ZacValue<bool>? get fullscreenDialog => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterMaterialPageRoute value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMaterialPageRoute extends _FlutterMaterialPageRoute {
  _$_FlutterMaterialPageRoute(
      {required this.child,
      this.settings,
      this.maintainState,
      this.fullscreenDialog})
      : super._();

  factory _$_FlutterMaterialPageRoute.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterMaterialPageRouteFromJson(json);

  @override
  final FlutterWidget child;
  @override
  final FlutterRouteSettings? settings;
  @override
  final ZacValue<bool>? maintainState;
  @override
  final ZacValue<bool>? fullscreenDialog;

  @override
  String toString() {
    return 'FlutterMaterialPageRoute(child: $child, settings: $settings, maintainState: $maintainState, fullscreenDialog: $fullscreenDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMaterialPageRoute &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.maintainState, maintainState) ||
                other.maintainState == maintainState) &&
            (identical(other.fullscreenDialog, fullscreenDialog) ||
                other.fullscreenDialog == fullscreenDialog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, child, settings, maintainState, fullscreenDialog);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterMaterialPageRoute value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterMaterialPageRoute extends FlutterMaterialPageRoute {
  factory _FlutterMaterialPageRoute(
      {required final FlutterWidget child,
      final FlutterRouteSettings? settings,
      final ZacValue<bool>? maintainState,
      final ZacValue<bool>? fullscreenDialog}) = _$_FlutterMaterialPageRoute;
  _FlutterMaterialPageRoute._() : super._();

  factory _FlutterMaterialPageRoute.fromJson(Map<String, dynamic> json) =
      _$_FlutterMaterialPageRoute.fromJson;

  @override
  FlutterWidget get child;
  @override
  FlutterRouteSettings? get settings;
  @override
  ZacValue<bool>? get maintainState;
  @override
  ZacValue<bool>? get fullscreenDialog;
}