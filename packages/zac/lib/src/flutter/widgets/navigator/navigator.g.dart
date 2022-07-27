// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnyNavigatorStateClosest _$$_AnyNavigatorStateClosestFromJson(
        Map<String, dynamic> json) =>
    _$_AnyNavigatorStateClosest(
      $type: json['_converter'] as String?,
    );

_$_AnyNavigatorStateRoot _$$_AnyNavigatorStateRootFromJson(
        Map<String, dynamic> json) =>
    _$_AnyNavigatorStateRoot(
      $type: json['_converter'] as String?,
    );

_$_AnyNavigatorStateConsumeFromGlobalKey
    _$$_AnyNavigatorStateConsumeFromGlobalKeyFromJson(
            Map<String, dynamic> json) =>
        _$_AnyNavigatorStateConsumeFromGlobalKey(
          name: json['name'] as String,
          consumeType: json['consumeType'] == null
              ? null
              : SharedValueConsumeType.fromJson(
                  json['consumeType'] as Map<String, dynamic>),
          mapper: (json['mapper'] as List<dynamic>?)
              ?.map((e) =>
                  SharedValueTransformer.fromJson(e as Map<String, dynamic>))
              .toList(),
          $type: json['_converter'] as String?,
        );

_$_AnyNavigatorStateBuilder _$$_AnyNavigatorStateBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_AnyNavigatorStateBuilder(
      debugLabel: json['debugLabel'] as String?,
      $type: json['_converter'] as String?,
    );

_$_AnyNavigatorStateTransformBuilder
    _$$_AnyNavigatorStateTransformBuilderFromJson(Map<String, dynamic> json) =>
        _$_AnyNavigatorStateTransformBuilder(
          $type: json['_converter'] as String?,
        );

_$_FlutterNavigator _$$_FlutterNavigatorFromJson(Map<String, dynamic> json) =>
    _$_FlutterNavigator(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      onGenerateRoute: json['onGenerateRoute'] == null
          ? null
          : FlutterRouteFactory.fromJson(json['onGenerateRoute'] as Object),
      onUnknownRoute: json['onUnknownRoute'] == null
          ? null
          : FlutterRouteFactory.fromJson(json['onUnknownRoute'] as Object),
      initialRoute: json['initialRoute'] == null
          ? null
          : ZacString.fromJson(json['initialRoute'] as Object),
      requestFocus: json['requestFocus'] == null
          ? null
          : ZacBool.fromJson(json['requestFocus'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPush _$$_FlutterNavigatorPushFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorPush(
      route: FlutterRoute.fromJson(json['route'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : AnyNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPushNamed _$$_FlutterNavigatorPushNamedFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorPushNamed(
      routeName: ZacString.fromJson(json['routeName'] as Object),
      arguments: json['arguments'],
      navigatorState: json['navigatorState'] == null
          ? null
          : AnyNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPop _$$_FlutterNavigatorPopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorPop(
      actions: json['actions'] == null
          ? null
          : AnyActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : AnyNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorMaybePop _$$_FlutterNavigatorMaybePopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorMaybePop(
      actions: json['actions'] == null
          ? null
          : AnyActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : AnyNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPushReplacement _$$_FlutterNavigatorPushReplacementFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorPushReplacement(
      route: FlutterRoute.fromJson(json['route'] as Object),
      result: json['result'] == null
          ? null
          : AnyActions.fromJson(json['result'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : AnyNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPushReplacementNamed
    _$$_FlutterNavigatorPushReplacementNamedFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterNavigatorPushReplacementNamed(
          routeName: ZacString.fromJson(json['routeName'] as Object),
          arguments: json['arguments'],
          navigatorState: json['navigatorState'] == null
              ? null
              : AnyNavigatorState.fromJson(json['navigatorState'] as Object),
          result: json['result'] == null
              ? null
              : AnyActions.fromJson(json['result'] as Object),
          $type: json['_converter'] as String?,
        );

_$_FlutterNavigatorPopUntilRouteName
    _$$_FlutterNavigatorPopUntilRouteNameFromJson(Map<String, dynamic> json) =>
        _$_FlutterNavigatorPopUntilRouteName(
          routeName: ZacString.fromJson(json['routeName'] as Object),
          navigatorState: json['navigatorState'] == null
              ? null
              : AnyNavigatorState.fromJson(json['navigatorState'] as Object),
          $type: json['_converter'] as String?,
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
