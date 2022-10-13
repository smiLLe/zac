import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'material_app.freezed.dart';
part 'material_app.g.dart';

@defaultConverterFreezed
class FlutterMaterialApp with _$FlutterMaterialApp implements FlutterWidget {
  const FlutterMaterialApp._();

  static const String unionValue = 'f:1:MaterialApp';

  factory FlutterMaterialApp.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialAppFromJson(json);

  @FreezedUnionValue(FlutterMaterialApp.unionValue)
  factory FlutterMaterialApp({
    FlutterKey? key,
    FlutterGlobalKeyNavigatorState? navigatorKey,
    // GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
    FlutterWidget? home,
    // Map<String, WidgetBuilder> routes = const <String, WidgetBuilder>{},
    ZacString? initialRoute,
    FlutterRouteFactory? onGenerateRoute,
    // InitialRouteListFactory? onGenerateInitialRoutes,
    FlutterRouteFactory? onUnknownRoute,
    // List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
    // TransitionBuilder? builder,
    ZacString? title,
    // GenerateAppTitle? onGenerateTitle,
    FlutterColor? color,
    // ThemeData? theme,
    // ThemeData? darkTheme,
    // ThemeData? highContrastTheme,
    // ThemeData? highContrastDarkTheme,
    // ThemeMode? themeMode = ThemeMode.system,
    FlutterLocale? locale,
    // Iterable<LocalizationsDelegate>? localizationsDelegates,
    // LocaleListResolutionCallback? localeListResolutionCallback,
    // LocaleResolutionCallback? localeResolutionCallback,
    // Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
    ZacBool? debugShowMaterialGrid,
    ZacBool? showPerformanceOverlay,
    ZacBool? checkerboardRasterCacheImages,
    ZacBool? checkerboardOffscreenLayers,
    ZacBool? showSemanticsDebugger,
    ZacBool? debugShowCheckedModeBanner,
    // Map<ShortcutActivator, Intent>? shortcuts,
    // Map<Type, Action<Intent>>? actions,
    ZacString? restorationScopeId,
    // ScrollBehavior? scrollBehavior,
    ZacBool? useInheritedMediaQuery,
  }) = _FlutterMaterialApp;

  @override
  MaterialApp buildWidget(ZacOriginWidgetTree origin) {
    return MaterialApp(
      key: key?.buildKey(origin),
      navigatorKey: navigatorKey?.buildKey(origin),
      home: home?.buildWidget(origin),
      initialRoute: initialRoute?.getValue(origin),
      onGenerateRoute: onGenerateRoute?.buildRouteFactory(origin),
      onUnknownRoute: onUnknownRoute?.buildRouteFactory(origin),
      title: title?.getValue(origin) ?? '',
      color: color?.build(origin),
      locale: locale?.build(origin),
      debugShowMaterialGrid: debugShowMaterialGrid?.getValue(origin) ?? false,
      showPerformanceOverlay: showPerformanceOverlay?.getValue(origin) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.getValue(origin) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.getValue(origin) ?? false,
      showSemanticsDebugger: showSemanticsDebugger?.getValue(origin) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.getValue(origin) ?? true,
      restorationScopeId: restorationScopeId?.getValue(origin),
      useInheritedMediaQuery: useInheritedMediaQuery?.getValue(origin) ?? false,
    );
  }
}
