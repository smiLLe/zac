// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacNavigatorStateClosest _$$_ZacNavigatorStateClosestFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateClosest(
      $type: json['converter'] as String?,
    );

_$_ZacNavigatorStateRoot _$$_ZacNavigatorStateRootFromJson(
        Map<String, dynamic> json) =>
    _$_ZacNavigatorStateRoot(
      $type: json['converter'] as String?,
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
          : ZacValue<String>.fromJson(json['initialRoute'] as Object),
      requestFocus: json['requestFocus'] == null
          ? null
          : ZacValue<bool>.fromJson(json['requestFocus'] as Object),
    );

_$_FlutterNavigatorActionsPush _$$_FlutterNavigatorActionsPushFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorActionsPush(
      route: FlutterRoute.fromJson(json['route'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : GetFlutterNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['converter'] as String?,
    );

_$_FlutterNavigatorActionsPushNamed
    _$$_FlutterNavigatorActionsPushNamedFromJson(Map<String, dynamic> json) =>
        _$_FlutterNavigatorActionsPushNamed(
          routeName: ZacValue<String>.fromJson(json['routeName'] as Object),
          arguments: json['arguments'],
          navigatorState: json['navigatorState'] == null
              ? null
              : GetFlutterNavigatorState.fromJson(
                  json['navigatorState'] as Object),
          $type: json['converter'] as String?,
        );

_$_FlutterNavigatorActionsPop _$$_FlutterNavigatorActionsPopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorActionsPop(
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : GetFlutterNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['converter'] as String?,
    );

_$_FlutterNavigatorActionsMaybePop _$$_FlutterNavigatorActionsMaybePopFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterNavigatorActionsMaybePop(
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
      navigatorState: json['navigatorState'] == null
          ? null
          : GetFlutterNavigatorState.fromJson(json['navigatorState'] as Object),
      $type: json['converter'] as String?,
    );

_$_FlutterNavigatorActionsPushReplacement
    _$$_FlutterNavigatorActionsPushReplacementFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterNavigatorActionsPushReplacement(
          route: FlutterRoute.fromJson(json['route'] as Object),
          result: json['result'] == null
              ? null
              : ZacActions.fromJson(json['result'] as Object),
          navigatorState: json['navigatorState'] == null
              ? null
              : GetFlutterNavigatorState.fromJson(
                  json['navigatorState'] as Object),
          $type: json['converter'] as String?,
        );

_$_FlutterNavigatorActionsPushReplacementNamed
    _$$_FlutterNavigatorActionsPushReplacementNamedFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterNavigatorActionsPushReplacementNamed(
          routeName: ZacValue<String>.fromJson(json['routeName'] as Object),
          arguments: json['arguments'],
          navigatorState: json['navigatorState'] == null
              ? null
              : GetFlutterNavigatorState.fromJson(
                  json['navigatorState'] as Object),
          result: json['result'] == null
              ? null
              : ZacActions.fromJson(json['result'] as Object),
          $type: json['converter'] as String?,
        );

_$_FlutterPageRouteBuilder _$$_FlutterPageRouteBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterPageRouteBuilder(
      child: FlutterWidget.fromJson(json['child'] as Object),
      settings: json['settings'] == null
          ? null
          : FlutterRouteSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      opaque: json['opaque'] == null
          ? null
          : ZacValue<bool>.fromJson(json['opaque'] as Object),
      barrierDismissible: json['barrierDismissible'] == null
          ? null
          : ZacValue<bool>.fromJson(json['barrierDismissible'] as Object),
      barrierColor: json['barrierColor'] == null
          ? null
          : FlutterColor.fromJson(json['barrierColor'] as Map<String, dynamic>),
      barrierLabel: json['barrierLabel'] == null
          ? null
          : ZacValue<String>.fromJson(json['barrierLabel'] as Object),
      maintainState: json['maintainState'] == null
          ? null
          : ZacValue<bool>.fromJson(json['maintainState'] as Object),
      fullscreenDialog: json['fullscreenDialog'] == null
          ? null
          : ZacValue<bool>.fromJson(json['fullscreenDialog'] as Object),
    );

_$_FlutterRouteSettings _$$_FlutterRouteSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterRouteSettings(
      name: json['name'] == null
          ? null
          : ZacValue<String>.fromJson(json['name'] as Object),
      arguments: json['arguments'],
    );