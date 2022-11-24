import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'material_app.freezed.dart';
part 'material_app.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterMaterialApp with _$FlutterMaterialApp implements FlutterWidget {
  const FlutterMaterialApp._();

  static const String unionValue = 'f:1:MaterialApp';

  factory FlutterMaterialApp.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialAppFromJson(json);

  @FreezedUnionValue(FlutterMaterialApp.unionValue)
  factory FlutterMaterialApp({
    FlutterKey? key,
    FlutterGlobalKeyNavigatorState? navigatorKey,
    FlutterGlobalKeyScaffoldMessengerState? scaffoldMessengerKey,
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
      navigatorKey: navigatorKey?.buildOrNull(zacContext),
      scaffoldMessengerKey: scaffoldMessengerKey?.buildOrNull(zacContext),
      home: home?.buildWidget(zacContext),
      initialRoute: initialRoute?.getValueOrNull(zacContext),
      onGenerateRoute: onGenerateRoute?.buildRouteFactory(zacContext),
      onUnknownRoute: onUnknownRoute?.buildRouteFactory(zacContext),
      title: title?.getValueOrNull(zacContext) ?? '',
      color: color?.build(zacContext),
      locale: locale?.build(zacContext),
      debugShowMaterialGrid:
          debugShowMaterialGrid?.getValueOrNull(zacContext) ?? false,
      showPerformanceOverlay:
          showPerformanceOverlay?.getValueOrNull(zacContext) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.getValueOrNull(zacContext) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.getValueOrNull(zacContext) ?? false,
      showSemanticsDebugger:
          showSemanticsDebugger?.getValueOrNull(zacContext) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.getValueOrNull(zacContext) ?? true,
      restorationScopeId: restorationScopeId?.getValueOrNull(zacContext),
      useInheritedMediaQuery:
          useInheritedMediaQuery?.getValueOrNull(zacContext) ?? false,
    );
  }
}
