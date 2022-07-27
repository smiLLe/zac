// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterMaterialPageRoute _$FlutterMaterialPageRouteFromJson(
    Map<String, dynamic> json) {
  return _FlutterMaterialPageRoute.fromJson(json);
}

/// @nodoc
mixin _$FlutterMaterialPageRoute {
  ZacWidget get child => throw _privateConstructorUsedError;
  FlutterRouteSettings? get settings => throw _privateConstructorUsedError;
  ZacBool? get maintainState => throw _privateConstructorUsedError;
  ZacBool? get fullscreenDialog => throw _privateConstructorUsedError;

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
  final ZacWidget child;
  @override
  final FlutterRouteSettings? settings;
  @override
  final ZacBool? maintainState;
  @override
  final ZacBool? fullscreenDialog;

  @override
  String toString() {
    return 'FlutterMaterialPageRoute(child: $child, settings: $settings, maintainState: $maintainState, fullscreenDialog: $fullscreenDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMaterialPageRoute &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality()
                .equals(other.maintainState, maintainState) &&
            const DeepCollectionEquality()
                .equals(other.fullscreenDialog, fullscreenDialog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(maintainState),
      const DeepCollectionEquality().hash(fullscreenDialog));

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
      {required final ZacWidget child,
      final FlutterRouteSettings? settings,
      final ZacBool? maintainState,
      final ZacBool? fullscreenDialog}) = _$_FlutterMaterialPageRoute;
  _FlutterMaterialPageRoute._() : super._();

  factory _FlutterMaterialPageRoute.fromJson(Map<String, dynamic> json) =
      _$_FlutterMaterialPageRoute.fromJson;

  @override
  ZacWidget get child;
  @override
  FlutterRouteSettings? get settings;
  @override
  ZacBool? get maintainState;
  @override
  ZacBool? get fullscreenDialog;
}

FlutterPageRouteBuilder _$FlutterPageRouteBuilderFromJson(
    Map<String, dynamic> json) {
  return _FlutterPageRouteBuilder.fromJson(json);
}

/// @nodoc
mixin _$FlutterPageRouteBuilder {
  ZacWidget get child => throw _privateConstructorUsedError;
  FlutterRouteSettings? get settings =>
      throw _privateConstructorUsedError; //     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  ZacBool? get opaque => throw _privateConstructorUsedError;
  ZacBool? get barrierDismissible => throw _privateConstructorUsedError;
  FlutterColor? get barrierColor => throw _privateConstructorUsedError;
  ZacString? get barrierLabel => throw _privateConstructorUsedError;
  ZacBool? get maintainState => throw _privateConstructorUsedError;
  ZacBool? get fullscreenDialog => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPageRouteBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterPageRouteBuilder extends _FlutterPageRouteBuilder {
  _$_FlutterPageRouteBuilder(
      {required this.child,
      this.settings,
      this.opaque,
      this.barrierDismissible,
      this.barrierColor,
      this.barrierLabel,
      this.maintainState,
      this.fullscreenDialog})
      : super._();

  factory _$_FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterPageRouteBuilderFromJson(json);

  @override
  final ZacWidget child;
  @override
  final FlutterRouteSettings? settings;
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  @override
  final ZacBool? opaque;
  @override
  final ZacBool? barrierDismissible;
  @override
  final FlutterColor? barrierColor;
  @override
  final ZacString? barrierLabel;
  @override
  final ZacBool? maintainState;
  @override
  final ZacBool? fullscreenDialog;

  @override
  String toString() {
    return 'FlutterPageRouteBuilder(child: $child, settings: $settings, opaque: $opaque, barrierDismissible: $barrierDismissible, barrierColor: $barrierColor, barrierLabel: $barrierLabel, maintainState: $maintainState, fullscreenDialog: $fullscreenDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPageRouteBuilder &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.opaque, opaque) &&
            const DeepCollectionEquality()
                .equals(other.barrierDismissible, barrierDismissible) &&
            const DeepCollectionEquality()
                .equals(other.barrierColor, barrierColor) &&
            const DeepCollectionEquality()
                .equals(other.barrierLabel, barrierLabel) &&
            const DeepCollectionEquality()
                .equals(other.maintainState, maintainState) &&
            const DeepCollectionEquality()
                .equals(other.fullscreenDialog, fullscreenDialog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(opaque),
      const DeepCollectionEquality().hash(barrierDismissible),
      const DeepCollectionEquality().hash(barrierColor),
      const DeepCollectionEquality().hash(barrierLabel),
      const DeepCollectionEquality().hash(maintainState),
      const DeepCollectionEquality().hash(fullscreenDialog));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPageRouteBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterPageRouteBuilder extends FlutterPageRouteBuilder {
  factory _FlutterPageRouteBuilder(
      {required final ZacWidget child,
      final FlutterRouteSettings? settings,
      final ZacBool? opaque,
      final ZacBool? barrierDismissible,
      final FlutterColor? barrierColor,
      final ZacString? barrierLabel,
      final ZacBool? maintainState,
      final ZacBool? fullscreenDialog}) = _$_FlutterPageRouteBuilder;
  _FlutterPageRouteBuilder._() : super._();

  factory _FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =
      _$_FlutterPageRouteBuilder.fromJson;

  @override
  ZacWidget get child;
  @override
  FlutterRouteSettings? get settings;
  @override //     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  ZacBool? get opaque;
  @override
  ZacBool? get barrierDismissible;
  @override
  FlutterColor? get barrierColor;
  @override
  ZacString? get barrierLabel;
  @override
  ZacBool? get maintainState;
  @override
  ZacBool? get fullscreenDialog;
}

FlutterRouteSettings _$FlutterRouteSettingsFromJson(Map<String, dynamic> json) {
  return _FlutterRouteSettings.fromJson(json);
}

/// @nodoc
mixin _$FlutterRouteSettings {
  ZacString? get name => throw _privateConstructorUsedError;
  Object? get arguments => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRouteSettings value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRouteSettings extends _FlutterRouteSettings {
  _$_FlutterRouteSettings({this.name, this.arguments}) : super._();

  factory _$_FlutterRouteSettings.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRouteSettingsFromJson(json);

  @override
  final ZacString? name;
  @override
  final Object? arguments;

  @override
  String toString() {
    return 'FlutterRouteSettings(name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRouteSettings &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(arguments));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRouteSettings value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRouteSettings extends FlutterRouteSettings {
  factory _FlutterRouteSettings(
      {final ZacString? name,
      final Object? arguments}) = _$_FlutterRouteSettings;
  _FlutterRouteSettings._() : super._();

  factory _FlutterRouteSettings.fromJson(Map<String, dynamic> json) =
      _$_FlutterRouteSettings.fromJson;

  @override
  ZacString? get name;
  @override
  Object? get arguments;
}
