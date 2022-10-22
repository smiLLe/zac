// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacFlutterGlobalKeyNavigatorStateProvide
    _$$_ZacFlutterGlobalKeyNavigatorStateProvideFromJson(
            Map<String, dynamic> json) =>
        _$_ZacFlutterGlobalKeyNavigatorStateProvide(
          family: json['family'] as Object,
          child: FlutterWidget.fromJson(json['child'] as Object),
          debugLabel: json['debugLabel'] == null
              ? null
              : ZacValue<String>.fromJson(json['debugLabel'] as Object),
          $type: json['converter'] as String?,
        );

_$_ZacFlutterGlobalKeyNavigatorStateConsume
    _$$_ZacFlutterGlobalKeyNavigatorStateConsumeFromJson(
            Map<String, dynamic> json) =>
        _$_ZacFlutterGlobalKeyNavigatorStateConsume(
          json['family'] as Object,
          transformer: json['transformer'] == null
              ? null
              : ZacTransformers.fromJson(json['transformer'] as Object),
          consumeType: json['consumeType'] == null
              ? const SharedValueConsumeType.watch()
              : SharedValueConsumeType.fromJson(
                  json['consumeType'] as Map<String, dynamic>),
          $type: json['converter'] as String?,
        );

_$_PopUntilRouteName _$$_PopUntilRouteNameFromJson(Map<String, dynamic> json) =>
    _$_PopUntilRouteName(
      routeName: ZacValue<String>.fromJson(json['routeName'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : GetFlutterNavigatorState.fromJson(json['navigatorState'] as Object),
    );

_$_RouteFactoryConfig _$$_RouteFactoryConfigFromJson(
        Map<String, dynamic> json) =>
    _$_RouteFactoryConfig(
      route: FlutterRoute.fromJson(json['route'] as Object),
      provideArgsName: json['provideArgsName'] == null
          ? null
          : ZacValue<String>.fromJson(json['provideArgsName'] as Object),
      transform: json['transform'] == null
          ? null
          : ZacTransformers.fromJson(json['transform'] as Object),
    );

_$_RouteFactorySingleRoute _$$_RouteFactorySingleRouteFromJson(
        Map<String, dynamic> json) =>
    _$_RouteFactorySingleRoute(
      routeConfig: RouteFactoryRouteConfig.fromJson(
          json['routeConfig'] as Map<String, dynamic>),
      provideArgsNamePrefix: json['provideArgsNamePrefix'] as String?,
    );

_$_RouteFactoryFromRoutes _$$_RouteFactoryFromRoutesFromJson(
        Map<String, dynamic> json) =>
    _$_RouteFactoryFromRoutes(
      routes: (json['routes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, RouteFactoryRouteConfig.fromJson(e as Map<String, dynamic>)),
      ),
      provideArgsNamePrefix: json['provideArgsNamePrefix'] as String?,
    );
