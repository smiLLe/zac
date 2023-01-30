// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterMaterialApp _$$_FlutterMaterialAppFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterMaterialApp',
      json,
      ($checkedConvert) {
        final val = _$_FlutterMaterialApp(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          navigatorKey: $checkedConvert(
              'navigatorKey',
              (v) => v == null
                  ? null
                  : ZacBuilder<GlobalKey<NavigatorState>?>.fromJson(
                      v as Object)),
          scaffoldMessengerKey: $checkedConvert(
              'scaffoldMessengerKey',
              (v) => v == null
                  ? null
                  : ZacBuilder<GlobalKey<ScaffoldMessengerState>?>.fromJson(
                      v as Object)),
          home: $checkedConvert(
              'home',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          initialRoute: $checkedConvert(
              'initialRoute',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          onGenerateRoute: $checkedConvert(
              'onGenerateRoute',
              (v) => v == null
                  ? null
                  : FlutterRouteFactory.fromJson(v as Map<String, dynamic>)),
          onUnknownRoute: $checkedConvert(
              'onUnknownRoute',
              (v) => v == null
                  ? null
                  : FlutterRouteFactory.fromJson(v as Map<String, dynamic>)),
          title: $checkedConvert(
              'title',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          color: $checkedConvert(
              'color',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          locale: $checkedConvert(
              'locale',
              (v) =>
                  v == null ? null : ZacBuilder<Locale?>.fromJson(v as Object)),
          debugShowMaterialGrid: $checkedConvert(
              'debugShowMaterialGrid',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          showPerformanceOverlay: $checkedConvert(
              'showPerformanceOverlay',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          checkerboardRasterCacheImages: $checkedConvert(
              'checkerboardRasterCacheImages',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          checkerboardOffscreenLayers: $checkedConvert(
              'checkerboardOffscreenLayers',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          showSemanticsDebugger: $checkedConvert(
              'showSemanticsDebugger',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          debugShowCheckedModeBanner: $checkedConvert(
              'debugShowCheckedModeBanner',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          restorationScopeId: $checkedConvert(
              'restorationScopeId',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          useInheritedMediaQuery: $checkedConvert(
              'useInheritedMediaQuery',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
        );
        return val;
      },
    );
