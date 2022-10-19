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
  MaterialApp buildWidget(ZacContext zacContext) {
    return MaterialApp(
      key: key?.buildKey(zacContext),
      navigatorKey: navigatorKey?.buildKey(zacContext),
      home: home?.buildWidget(zacContext),
      initialRoute: initialRoute?.getValue(zacContext),
      onGenerateRoute: onGenerateRoute?.buildRouteFactory(zacContext),
      onUnknownRoute: onUnknownRoute?.buildRouteFactory(zacContext),
      title: title?.getValue(zacContext) ?? '',
      color: color?.build(zacContext),
      locale: locale?.build(zacContext),
      debugShowMaterialGrid:
          debugShowMaterialGrid?.getValue(zacContext) ?? false,
      showPerformanceOverlay:
          showPerformanceOverlay?.getValue(zacContext) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.getValue(zacContext) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.getValue(zacContext) ?? false,
      showSemanticsDebugger:
          showSemanticsDebugger?.getValue(zacContext) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.getValue(zacContext) ?? true,
      restorationScopeId: restorationScopeId?.getValue(zacContext),
      useInheritedMediaQuery:
          useInheritedMediaQuery?.getValue(zacContext) ?? false,
    );
  }
}
