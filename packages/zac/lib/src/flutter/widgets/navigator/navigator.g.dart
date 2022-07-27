// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacNavigatorStateClosest _$$_ZacNavigatorStateClosestFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateClosest(
      $type: json['_converter'] as String?,
    );

_$_ZacNavigatorStateRoot _$$_ZacNavigatorStateRootFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateRoot(
      $type: json['_converter'] as String?,
    );

_$_ZacNavigatorStateConsumeFromGlobalKey
    _$$_ZacNavigatorStateConsumeFromGlobalKeyFromJson(
            Map<String, dynamic> json) =>
        _$_ZacNavigatorStateConsumeFromGlobalKey(
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

_$_ZacNavigatorStateBuilder _$$_ZacNavigatorStateBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateBuilder(
      debugLabel: json['debugLabel'] as String?,
      $type: json['_converter'] as String?,
    );

_$_ZacNavigatorStateTransformBuilder
    _$$_ZacNavigatorStateTransformBuilderFromJson(Map<String, dynamic> json) =>
        _$_ZacNavigatorStateTransformBuilder(
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
          : ZacNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPushNamed _$$_FlutterNavigatorPushNamedFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorPushNamed(
      routeName: ZacString.fromJson(json['routeName'] as Object),
      arguments: json['arguments'],
      navigatorState: json['navigatorState'] == null
          ? null
          : ZacNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPop _$$_FlutterNavigatorPopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorPop(
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : ZacNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorMaybePop _$$_FlutterNavigatorMaybePopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorMaybePop(
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : ZacNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterNavigatorPushReplacement _$$_FlutterNavigatorPushReplacementFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorPushReplacement(
      route: FlutterRoute.fromJson(json['route'] as Object),
      result: json['result'] == null
          ? null
          : ZacActions.fromJson(json['result'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : ZacNavigatorState.fromJson(json['navigatorState'] as Object),
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
              : ZacNavigatorState.fromJson(json['navigatorState'] as Object),
          result: json['result'] == null
              ? null
              : ZacActions.fromJson(json['result'] as Object),
          $type: json['_converter'] as String?,
        );

_$_FlutterNavigatorPopUntilRouteName
    _$$_FlutterNavigatorPopUntilRouteNameFromJson(Map<String, dynamic> json) =>
        _$_FlutterNavigatorPopUntilRouteName(
          routeName: ZacString.fromJson(json['routeName'] as Object),
          navigatorState: json['navigatorState'] == null
              ? null
              : ZacNavigatorState.fromJson(json['navigatorState'] as Object),
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

_$_FlutterPageRouteBuilder _$$_FlutterPageRouteBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterPageRouteBuilder(
      child: ZacWidget.fromJson(json['child'] as Object),
      settings: json['settings'] == null
          ? null
          : FlutterRouteSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      opaque: json['opaque'] == null
          ? null
          : ZacBool.fromJson(json['opaque'] as Object),
      barrierDismissible: json['barrierDismissible'] == null
          ? null
          : ZacBool.fromJson(json['barrierDismissible'] as Object),
      barrierColor: json['barrierColor'] == null
          ? null
          : FlutterColor.fromJson(json['barrierColor'] as Map<String, dynamic>),
      barrierLabel: json['barrierLabel'] == null
          ? null
          : ZacString.fromJson(json['barrierLabel'] as Object),
      maintainState: json['maintainState'] == null
          ? null
          : ZacBool.fromJson(json['maintainState'] as Object),
      fullscreenDialog: json['fullscreenDialog'] == null
          ? null
          : ZacBool.fromJson(json['fullscreenDialog'] as Object),
    );

_$_FlutterRouteSettings _$$_FlutterRouteSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterRouteSettings(
      name: json['name'] == null
          ? null
          : ZacString.fromJson(json['name'] as Object),
      arguments: json['arguments'],
    );
