// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterMaterialApp _$$_FlutterMaterialAppFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterMaterialApp(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      navigatorKey: json['navigatorKey'] == null
          ? null
          : FlutterGlobalKeyNavigatorState.fromJson(
              json['navigatorKey'] as Map<String, dynamic>),
      scaffoldMessengerKey: json['scaffoldMessengerKey'] == null
          ? null
          : FlutterGlobalKeyScaffoldMessengerState.fromJson(
              json['scaffoldMessengerKey'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : FlutterWidget.fromJson(json['home'] as Object),
      initialRoute: json['initialRoute'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['initialRoute'] as Object, (value) => value as String),
      onGenerateRoute: json['onGenerateRoute'] == null
          ? null
          : FlutterRouteFactory.fromJson(
              json['onGenerateRoute'] as Map<String, dynamic>),
      onUnknownRoute: json['onUnknownRoute'] == null
          ? null
          : FlutterRouteFactory.fromJson(
              json['onUnknownRoute'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['title'] as Object, (value) => value as String),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      locale: json['locale'] == null
          ? null
          : FlutterLocale.fromJson(json['locale'] as Map<String, dynamic>),
      debugShowMaterialGrid: json['debugShowMaterialGrid'] == null
          ? null
          : ZacValue<bool>.fromJson(json['debugShowMaterialGrid'] as Object,
              (value) => value as bool),
      showPerformanceOverlay: json['showPerformanceOverlay'] == null
          ? null
          : ZacValue<bool>.fromJson(json['showPerformanceOverlay'] as Object,
              (value) => value as bool),
      checkerboardRasterCacheImages:
          json['checkerboardRasterCacheImages'] == null
              ? null
              : ZacValue<bool>.fromJson(
                  json['checkerboardRasterCacheImages'] as Object,
                  (value) => value as bool),
      checkerboardOffscreenLayers: json['checkerboardOffscreenLayers'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['checkerboardOffscreenLayers'] as Object,
              (value) => value as bool),
      showSemanticsDebugger: json['showSemanticsDebugger'] == null
          ? null
          : ZacValue<bool>.fromJson(json['showSemanticsDebugger'] as Object,
              (value) => value as bool),
      debugShowCheckedModeBanner: json['debugShowCheckedModeBanner'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['debugShowCheckedModeBanner'] as Object,
              (value) => value as bool),
      restorationScopeId: json['restorationScopeId'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['restorationScopeId'] as Object, (value) => value as String),
      useInheritedMediaQuery: json['useInheritedMediaQuery'] == null
          ? null
          : ZacValue<bool>.fromJson(json['useInheritedMediaQuery'] as Object,
              (value) => value as bool),
    );
