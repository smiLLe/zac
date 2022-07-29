// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConsumeFromGlobalKey _$$_ConsumeFromGlobalKeyFromJson(
        Map<String, dynamic> json) =>
    _$_ConsumeFromGlobalKey(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$_Builder _$$_BuilderFromJson(Map<String, dynamic> json) => _$_Builder(
      debugLabel: json['debugLabel'] as String?,
      $type: json['_converter'] as String?,
    );

_$_TransformBuilder _$$_TransformBuilderFromJson(Map<String, dynamic> json) =>
    _$_TransformBuilder(
      $type: json['_converter'] as String?,
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
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
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
