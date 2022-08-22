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
          child: ZacWidget.fromJson(json['child'] as Object),
          debugLabel: json['debugLabel'] == null
              ? null
              : ZacString.fromJson(json['debugLabel'] as Object),
          $type: json['_converter'] as String?,
        );

_$_ZacFlutterGlobalKeyNavigatorStateConsume
    _$$_ZacFlutterGlobalKeyNavigatorStateConsumeFromJson(
            Map<String, dynamic> json) =>
        _$_ZacFlutterGlobalKeyNavigatorStateConsume(
          json['family'] as Object,
          (json['transformer'] as List<dynamic>?)
              ?.map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
              .toList(),
          json['consumeType'] == null
              ? const SharedValueConsumeType.watch()
              : SharedValueConsumeType.fromJson(
                  json['consumeType'] as Map<String, dynamic>),
          json['_converter'] as String?,
        );

_$_PopUntilRouteName _$$_PopUntilRouteNameFromJson(Map<String, dynamic> json) =>
    _$_PopUntilRouteName(
      routeName: ZacString.fromJson(json['routeName'] as Object),
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
          : ZacString.fromJson(json['provideArgsName'] as Object),
      transform: (json['transform'] as List<dynamic>?)
          ?.map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
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
