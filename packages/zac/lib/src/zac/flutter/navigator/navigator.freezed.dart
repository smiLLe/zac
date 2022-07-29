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

ZacFlutterNavigatorState _$ZacFlutterNavigatorStateFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:NavigatorState.consumeFromGlobalKey':
      return _ConsumeFromGlobalKey.fromJson(json);
    case 'z:1:GlobalKeyNavigatorState':
      return _Builder.fromJson(json);
    case 'z:1:GlobalKeyNavigatorState.transformToGlobalKey':
      return _TransformBuilder.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'ZacFlutterNavigatorState',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacFlutterNavigatorState {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsumeFromGlobalKey value) consumeFromGlobalKey,
    required TResult Function(_Builder value) builder,
    required TResult Function(_TransformBuilder value) transform,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ConsumeFromGlobalKey extends _ConsumeFromGlobalKey
    with ConsumeValue<GlobalKey<NavigatorState>> {
  _$_ConsumeFromGlobalKey(
      {required this.name,
      this.consumeType,
      final List<SharedValueTransformer>? mapper,
      final String? $type})
      : _mapper = mapper,
        $type = $type ?? 'z:1:NavigatorState.consumeFromGlobalKey',
        super._();

  factory _$_ConsumeFromGlobalKey.fromJson(Map<String, dynamic> json) =>
      _$$_ConsumeFromGlobalKeyFromJson(json);

  @override
  final String name;
  @override
  final SharedValueConsumeType? consumeType;
  final List<SharedValueTransformer>? _mapper;
  @override
  List<SharedValueTransformer>? get mapper {
    final value = _mapper;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacFlutterNavigatorState.consumeFromGlobalKey(name: $name, consumeType: $consumeType, mapper: $mapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsumeFromGlobalKey &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality().equals(other._mapper, _mapper));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_mapper));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsumeFromGlobalKey value) consumeFromGlobalKey,
    required TResult Function(_Builder value) builder,
    required TResult Function(_TransformBuilder value) transform,
  }) {
    return consumeFromGlobalKey(this);
  }
}

abstract class _ConsumeFromGlobalKey extends ZacFlutterNavigatorState
    implements ConsumeValue<GlobalKey<NavigatorState>> {
  factory _ConsumeFromGlobalKey(
      {required final String name,
      final SharedValueConsumeType? consumeType,
      final List<SharedValueTransformer>? mapper}) = _$_ConsumeFromGlobalKey;
  _ConsumeFromGlobalKey._() : super._();

  factory _ConsumeFromGlobalKey.fromJson(Map<String, dynamic> json) =
      _$_ConsumeFromGlobalKey.fromJson;

  String get name;
  SharedValueConsumeType? get consumeType;
  List<SharedValueTransformer>? get mapper;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Builder extends _Builder {
  _$_Builder({this.debugLabel, final String? $type})
      : $type = $type ?? 'z:1:GlobalKeyNavigatorState',
        super._();

  factory _$_Builder.fromJson(Map<String, dynamic> json) =>
      _$$_BuilderFromJson(json);

  @override
  final String? debugLabel;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacFlutterNavigatorState.builder(debugLabel: $debugLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Builder &&
            const DeepCollectionEquality()
                .equals(other.debugLabel, debugLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(debugLabel));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsumeFromGlobalKey value) consumeFromGlobalKey,
    required TResult Function(_Builder value) builder,
    required TResult Function(_TransformBuilder value) transform,
  }) {
    return builder(this);
  }
}

abstract class _Builder extends ZacFlutterNavigatorState {
  factory _Builder({final String? debugLabel}) = _$_Builder;
  _Builder._() : super._();

  factory _Builder.fromJson(Map<String, dynamic> json) = _$_Builder.fromJson;

  String? get debugLabel;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_TransformBuilder extends _TransformBuilder {
  _$_TransformBuilder({final String? $type})
      : $type = $type ?? 'z:1:GlobalKeyNavigatorState.transformToGlobalKey',
        super._();

  factory _$_TransformBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_TransformBuilderFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacFlutterNavigatorState.transform()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TransformBuilder);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConsumeFromGlobalKey value) consumeFromGlobalKey,
    required TResult Function(_Builder value) builder,
    required TResult Function(_TransformBuilder value) transform,
  }) {
    return transform(this);
  }
}

abstract class _TransformBuilder extends ZacFlutterNavigatorState {
  factory _TransformBuilder() = _$_TransformBuilder;
  _TransformBuilder._() : super._();

  factory _TransformBuilder.fromJson(Map<String, dynamic> json) =
      _$_TransformBuilder.fromJson;
}

ZacFlutterNavigatorActions _$ZacFlutterNavigatorActionsFromJson(
    Map<String, dynamic> json) {
  return _PopUntilRouteName.fromJson(json);
}

/// @nodoc
mixin _$ZacFlutterNavigatorActions {
  ZacString get routeName => throw _privateConstructorUsedError;
  GetFlutterNavigatorState? get navigatorState =>
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
  final ZacString routeName;
  @override
  final GetFlutterNavigatorState? navigatorState;

  @override
  String toString() {
    return 'ZacFlutterNavigatorActions.popUntilRouteName(routeName: $routeName, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopUntilRouteName &&
            const DeepCollectionEquality().equals(other.routeName, routeName) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeName),
      const DeepCollectionEquality().hash(navigatorState));

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
      {required final ZacString routeName,
      final GetFlutterNavigatorState? navigatorState}) = _$_PopUntilRouteName;
  _PopUntilRouteName._() : super._();

  factory _PopUntilRouteName.fromJson(Map<String, dynamic> json) =
      _$_PopUntilRouteName.fromJson;

  @override
  ZacString get routeName;
  @override
  GetFlutterNavigatorState? get navigatorState;
}

RouteFactoryRouteConfig _$RouteFactoryRouteConfigFromJson(
    Map<String, dynamic> json) {
  return _RouteFactoryConfig.fromJson(json);
}

/// @nodoc
mixin _$RouteFactoryRouteConfig {
  FlutterRoute get route => throw _privateConstructorUsedError;
  ZacString? get provideArgsName => throw _privateConstructorUsedError;
  List<SharedValueTransformer>? get transform =>
      throw _privateConstructorUsedError;

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
      {required this.route,
      this.provideArgsName,
      final List<SharedValueTransformer>? transform})
      : _transform = transform,
        super._();

  factory _$_RouteFactoryConfig.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFactoryConfigFromJson(json);

  @override
  final FlutterRoute route;
  @override
  final ZacString? provideArgsName;
  final List<SharedValueTransformer>? _transform;
  @override
  List<SharedValueTransformer>? get transform {
    final value = _transform;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RouteFactoryRouteConfig(route: $route, provideArgsName: $provideArgsName, transform: $transform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteFactoryConfig &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality()
                .equals(other.provideArgsName, provideArgsName) &&
            const DeepCollectionEquality()
                .equals(other._transform, _transform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(provideArgsName),
      const DeepCollectionEquality().hash(_transform));

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
      final ZacString? provideArgsName,
      final List<SharedValueTransformer>? transform}) = _$_RouteFactoryConfig;
  _RouteFactoryConfig._() : super._();

  factory _RouteFactoryConfig.fromJson(Map<String, dynamic> json) =
      _$_RouteFactoryConfig.fromJson;

  @override
  FlutterRoute get route;
  @override
  ZacString? get provideArgsName;
  @override
  List<SharedValueTransformer>? get transform;
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
            const DeepCollectionEquality()
                .equals(other.routeConfig, routeConfig) &&
            const DeepCollectionEquality()
                .equals(other.provideArgsNamePrefix, provideArgsNamePrefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeConfig),
      const DeepCollectionEquality().hash(provideArgsNamePrefix));

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
            const DeepCollectionEquality()
                .equals(other.provideArgsNamePrefix, provideArgsNamePrefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(provideArgsNamePrefix));

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
