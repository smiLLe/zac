// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterMaterialPageRoute _$$_FlutterMaterialPageRouteFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterMaterialPageRoute(
      settings: json['settings'] == null
          ? null
          : ZacBuilder<RouteSettings?>.fromJson(json['settings'] as Object),
      maintainState: json['maintainState'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['maintainState'] as Object),
      fullscreenDialog: json['fullscreenDialog'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['fullscreenDialog'] as Object),
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      nameOfSharedArguments: json['nameOfSharedArguments'] == null
          ? null
          : ZacBuilder<String?>.fromJson(
              json['nameOfSharedArguments'] as Object),
    );

_$_FlutterPageRouteBuilder _$$_FlutterPageRouteBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterPageRouteBuilder(
      settings: json['settings'] == null
          ? null
          : ZacBuilder<RouteSettings?>.fromJson(json['settings'] as Object),
      opaque: json['opaque'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['opaque'] as Object),
      barrierDismissible: json['barrierDismissible'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['barrierDismissible'] as Object),
      barrierColor: json['barrierColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['barrierColor'] as Object),
      barrierLabel: json['barrierLabel'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['barrierLabel'] as Object),
      maintainState: json['maintainState'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['maintainState'] as Object),
      fullscreenDialog: json['fullscreenDialog'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['fullscreenDialog'] as Object),
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      nameOfSharedArguments: json['nameOfSharedArguments'] == null
          ? null
          : ZacBuilder<String?>.fromJson(
              json['nameOfSharedArguments'] as Object),
    );

_$_ZacNavigatorStateClosest _$$_ZacNavigatorStateClosestFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateClosest(
      $type: json['builder'] as String?,
    );

_$_ZacNavigatorStateRoot _$$_ZacNavigatorStateRootFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateRoot(
      $type: json['builder'] as String?,
    );

_$_ZacNavigatorStateSharedValue _$$_ZacNavigatorStateSharedValueFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateSharedValue(
      value: ZacBuilder<GlobalKey<NavigatorState>>.fromJson(
          json['value'] as Object),
      $type: json['builder'] as String?,
    );

_$_FlutterNavigator _$$_FlutterNavigatorFromJson(Map<String, dynamic> json) =>
    _$_FlutterNavigator(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      onGenerateRoute: json['onGenerateRoute'] == null
          ? null
          : FlutterRouteFactory.fromJson(
              json['onGenerateRoute'] as Map<String, dynamic>),
      onUnknownRoute: json['onUnknownRoute'] == null
          ? null
          : FlutterRouteFactory.fromJson(
              json['onUnknownRoute'] as Map<String, dynamic>),
      initialRoute: json['initialRoute'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['initialRoute'] as Object),
      requestFocus: json['requestFocus'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['requestFocus'] as Object),
    );

_$_FlutterNavigatorActionsPush _$$_FlutterNavigatorActionsPushFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorActionsPush(
      route: ZacBuilder<Route<Object?>>.fromJson(json['route'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : FlutterNavigatorState.fromJson(
              json['navigatorState'] as Map<String, dynamic>),
      $type: json['builder'] as String?,
    );

_$_FlutterNavigatorActionsPushNamed
    _$$_FlutterNavigatorActionsPushNamedFromJson(Map<String, dynamic> json) =>
        _$_FlutterNavigatorActionsPushNamed(
          routeName: ZacBuilder<String>.fromJson(json['routeName'] as Object),
          arguments: json['arguments'],
          navigatorState: json['navigatorState'] == null
              ? null
              : FlutterNavigatorState.fromJson(
                  json['navigatorState'] as Map<String, dynamic>),
          $type: json['builder'] as String?,
        );

_$_FlutterNavigatorActionsPop _$$_FlutterNavigatorActionsPopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorActionsPop(
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : FlutterNavigatorState.fromJson(
              json['navigatorState'] as Map<String, dynamic>),
      $type: json['builder'] as String?,
    );

_$_FlutterNavigatorActionsMaybePop _$$_FlutterNavigatorActionsMaybePopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorActionsMaybePop(
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : FlutterNavigatorState.fromJson(
              json['navigatorState'] as Map<String, dynamic>),
      $type: json['builder'] as String?,
    );

_$_FlutterNavigatorActionsPushReplacement
    _$$_FlutterNavigatorActionsPushReplacementFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterNavigatorActionsPushReplacement(
          route: ZacBuilder<Route<Object?>>.fromJson(json['route'] as Object),
          result: json['result'] == null
              ? null
              : ZacActions.fromJson(json['result'] as Object),
          navigatorState: json['navigatorState'] == null
              ? null
              : FlutterNavigatorState.fromJson(
                  json['navigatorState'] as Map<String, dynamic>),
          $type: json['builder'] as String?,
        );

_$_FlutterNavigatorActionsPushReplacementNamed
    _$$_FlutterNavigatorActionsPushReplacementNamedFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterNavigatorActionsPushReplacementNamed(
          routeName: ZacBuilder<String>.fromJson(json['routeName'] as Object),
          arguments: json['arguments'],
          navigatorState: json['navigatorState'] == null
              ? null
              : FlutterNavigatorState.fromJson(
                  json['navigatorState'] as Map<String, dynamic>),
          result: json['result'] == null
              ? null
              : ZacActions.fromJson(json['result'] as Object),
          $type: json['builder'] as String?,
        );

_$_FlutterNavigatorActionsPopUntilRouteName
    _$$_FlutterNavigatorActionsPopUntilRouteNameFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterNavigatorActionsPopUntilRouteName(
          routeName: ZacBuilder<String>.fromJson(json['routeName'] as Object),
          navigatorState: json['navigatorState'] == null
              ? null
              : FlutterNavigatorState.fromJson(
                  json['navigatorState'] as Map<String, dynamic>),
          $type: json['builder'] as String?,
        );

_$_FlutterRouteFactory _$$_FlutterRouteFactoryFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterRouteFactory(
      routes: (json['routes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ZacBuilder<Route<Object?>>.fromJson(e as Object)),
      ),
      familyNameOfArguments:
          (json['familyNameOfArguments'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

_$_FlutterRouteSettings _$$_FlutterRouteSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterRouteSettings(
      name: json['name'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['name'] as Object),
      arguments: json['arguments'] == null
          ? null
          : ZacBuilder<Object?>.fromJson(json['arguments'] as Object),
    );
