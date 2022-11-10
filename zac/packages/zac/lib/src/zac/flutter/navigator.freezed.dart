// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacFlutterNavigatorActions _$ZacFlutterNavigatorActionsFromJson(
    Map<String, dynamic> json) {
  return _PopUntilRouteName.fromJson(json);
}

/// @nodoc
mixin _$ZacFlutterNavigatorActions {
  ZacValue<String> get routeName => throw _privateConstructorUsedError;
  FlutterNavigatorState? get navigatorState =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopUntilRouteName value) popUntilRouteName,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_PopUntilRouteName extends _PopUntilRouteName {
  _$_PopUntilRouteName({required this.routeName, this.navigatorState})
      : super._();

  factory _$_PopUntilRouteName.fromJson(Map<String, dynamic> json) =>
      _$$_PopUntilRouteNameFromJson(json);

  @override
  final ZacValue<String> routeName;
  @override
  final FlutterNavigatorState? navigatorState;

  @override
  String toString() {
    return 'ZacFlutterNavigatorActions.popUntilRouteName(routeName: $routeName, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopUntilRouteName &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.navigatorState, navigatorState) ||
                other.navigatorState == navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, routeName, navigatorState);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PopUntilRouteName value) popUntilRouteName,
  }) {
    return popUntilRouteName(this);
  }
}

abstract class _PopUntilRouteName extends ZacFlutterNavigatorActions {
  factory _PopUntilRouteName(
      {required final ZacValue<String> routeName,
      final FlutterNavigatorState? navigatorState}) = _$_PopUntilRouteName;
  _PopUntilRouteName._() : super._();

  factory _PopUntilRouteName.fromJson(Map<String, dynamic> json) =
      _$_PopUntilRouteName.fromJson;

  @override
  ZacValue<String> get routeName;
  @override
  FlutterNavigatorState? get navigatorState;
}

RouteFactoryRouteConfig _$RouteFactoryRouteConfigFromJson(
    Map<String, dynamic> json) {
  return _RouteFactoryConfig.fromJson(json);
}

/// @nodoc
mixin _$RouteFactoryRouteConfig {
  FlutterRoute get route => throw _privateConstructorUsedError;
  ZacValue<String>? get provideArgsName => throw _privateConstructorUsedError;
  ZacTransformers? get transform => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RouteFactoryConfig extends _RouteFactoryConfig {
  _$_RouteFactoryConfig(
      {required this.route, this.provideArgsName, this.transform})
      : super._();

  factory _$_RouteFactoryConfig.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFactoryConfigFromJson(json);

  @override
  final FlutterRoute route;
  @override
  final ZacValue<String>? provideArgsName;
  @override
  final ZacTransformers? transform;

  @override
  String toString() {
    return 'RouteFactoryRouteConfig(route: $route, provideArgsName: $provideArgsName, transform: $transform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteFactoryConfig &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.provideArgsName, provideArgsName) ||
                other.provideArgsName == provideArgsName) &&
            (identical(other.transform, transform) ||
                other.transform == transform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, route, provideArgsName, transform);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryConfig value) $default,
  ) {
    return $default(this);
  }
}

abstract class _RouteFactoryConfig extends RouteFactoryRouteConfig {
  factory _RouteFactoryConfig(
      {required final FlutterRoute route,
      final ZacValue<String>? provideArgsName,
      final ZacTransformers? transform}) = _$_RouteFactoryConfig;
  _RouteFactoryConfig._() : super._();

  factory _RouteFactoryConfig.fromJson(Map<String, dynamic> json) =
      _$_RouteFactoryConfig.fromJson;

  @override
  FlutterRoute get route;
  @override
  ZacValue<String>? get provideArgsName;
  @override
  ZacTransformers? get transform;
}

RouteFactorySingleRoute _$RouteFactorySingleRouteFromJson(
    Map<String, dynamic> json) {
  return _RouteFactorySingleRoute.fromJson(json);
}

/// @nodoc
mixin _$RouteFactorySingleRoute {
  RouteFactoryRouteConfig get routeConfig => throw _privateConstructorUsedError;
  String? get provideArgsNamePrefix => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactorySingleRoute value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RouteFactorySingleRoute extends _RouteFactorySingleRoute {
  _$_RouteFactorySingleRoute(
      {required this.routeConfig, this.provideArgsNamePrefix})
      : super._();

  factory _$_RouteFactorySingleRoute.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFactorySingleRouteFromJson(json);

  @override
  final RouteFactoryRouteConfig routeConfig;
  @override
  final String? provideArgsNamePrefix;

  @override
  String toString() {
    return 'RouteFactorySingleRoute(routeConfig: $routeConfig, provideArgsNamePrefix: $provideArgsNamePrefix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteFactorySingleRoute &&
            (identical(other.routeConfig, routeConfig) ||
                other.routeConfig == routeConfig) &&
            (identical(other.provideArgsNamePrefix, provideArgsNamePrefix) ||
                other.provideArgsNamePrefix == provideArgsNamePrefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, routeConfig, provideArgsNamePrefix);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactorySingleRoute value) $default,
  ) {
    return $default(this);
  }
}

abstract class _RouteFactorySingleRoute extends RouteFactorySingleRoute {
  factory _RouteFactorySingleRoute(
      {required final RouteFactoryRouteConfig routeConfig,
      final String? provideArgsNamePrefix}) = _$_RouteFactorySingleRoute;
  _RouteFactorySingleRoute._() : super._();

  factory _RouteFactorySingleRoute.fromJson(Map<String, dynamic> json) =
      _$_RouteFactorySingleRoute.fromJson;

  @override
  RouteFactoryRouteConfig get routeConfig;
  @override
  String? get provideArgsNamePrefix;
}

RouteFactoryFromRoutes _$RouteFactoryFromRoutesFromJson(
    Map<String, dynamic> json) {
  return _RouteFactoryFromRoutes.fromJson(json);
}

/// @nodoc
mixin _$RouteFactoryFromRoutes {
  Map<String, RouteFactoryRouteConfig> get routes =>
      throw _privateConstructorUsedError;
  String? get provideArgsNamePrefix => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryFromRoutes value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RouteFactoryFromRoutes extends _RouteFactoryFromRoutes {
  _$_RouteFactoryFromRoutes(
      {required final Map<String, RouteFactoryRouteConfig> routes,
      this.provideArgsNamePrefix})
      : _routes = routes,
        super._();

  factory _$_RouteFactoryFromRoutes.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFactoryFromRoutesFromJson(json);

  final Map<String, RouteFactoryRouteConfig> _routes;
  @override
  Map<String, RouteFactoryRouteConfig> get routes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_routes);
  }

  @override
  final String? provideArgsNamePrefix;

  @override
  String toString() {
    return 'RouteFactoryFromRoutes(routes: $routes, provideArgsNamePrefix: $provideArgsNamePrefix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteFactoryFromRoutes &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            (identical(other.provideArgsNamePrefix, provideArgsNamePrefix) ||
                other.provideArgsNamePrefix == provideArgsNamePrefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_routes), provideArgsNamePrefix);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryFromRoutes value) $default,
  ) {
    return $default(this);
  }
}

abstract class _RouteFactoryFromRoutes extends RouteFactoryFromRoutes {
  factory _RouteFactoryFromRoutes(
      {required final Map<String, RouteFactoryRouteConfig> routes,
      final String? provideArgsNamePrefix}) = _$_RouteFactoryFromRoutes;
  _RouteFactoryFromRoutes._() : super._();

  factory _RouteFactoryFromRoutes.fromJson(Map<String, dynamic> json) =
      _$_RouteFactoryFromRoutes.fromJson;

  @override
  Map<String, RouteFactoryRouteConfig> get routes;
  @override
  String? get provideArgsNamePrefix;
}
