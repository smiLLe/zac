import 'package:zac/src/flutter/widgets/navigator/navigator.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'material_app.freezed.dart';
part 'material_app.g.dart';

@defaultConverterFreezed
class FlutterMaterialApp with _$FlutterMaterialApp implements ZacWidget {
  const FlutterMaterialApp._();

  static const String unionValue = 'f:1:MaterialApp';

  factory FlutterMaterialApp.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialAppFromJson(json);

  @FreezedUnionValue(FlutterMaterialApp.unionValue)
  factory FlutterMaterialApp({
    FlutterKey? key,
    FlutterGlobalKeyNavigatorState? navigatorKey,
    // GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
    ZacWidget? home,
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
  MaterialApp buildWidget(ZacBuildContext context) {
    return MaterialApp(
      key: key?.buildKey(context),
      navigatorKey: navigatorKey?.buildKey(context),
      home: home?.buildWidget(context),
      initialRoute: initialRoute?.getValue(context),
      onGenerateRoute: onGenerateRoute?.buildRouteFactory(context),
      onUnknownRoute: onUnknownRoute?.buildRouteFactory(context),
      title: title?.getValue(context) ?? '',
      color: color?.build(context),
      locale: locale?.build(context),
      debugShowMaterialGrid: debugShowMaterialGrid?.getValue(context) ?? false,
      showPerformanceOverlay:
          showPerformanceOverlay?.getValue(context) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.getValue(context) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.getValue(context) ?? false,
      showSemanticsDebugger: showSemanticsDebugger?.getValue(context) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.getValue(context) ?? true,
      restorationScopeId: restorationScopeId?.getValue(context),
      useInheritedMediaQuery:
          useInheritedMediaQuery?.getValue(context) ?? false,
    );
  }
}
