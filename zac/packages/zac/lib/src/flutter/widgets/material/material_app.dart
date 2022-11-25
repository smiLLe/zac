import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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

  MaterialApp _buildWidget(ZacContext zacContext) {
    return MaterialApp(
      key: key?.buildOrNull(zacContext),
      navigatorKey: navigatorKey?.buildOrNull(zacContext),
      scaffoldMessengerKey: scaffoldMessengerKey?.buildOrNull(zacContext),
      home: home?.buildOrNull(zacContext),
      initialRoute: initialRoute?.buildOrNull(zacContext),
      onGenerateRoute: onGenerateRoute?.buildRouteFactory(zacContext),
      onUnknownRoute: onUnknownRoute?.buildRouteFactory(zacContext),
      title: title?.buildOrNull(zacContext) ?? '',
      color: color?.buildOrNull(zacContext),
      locale: locale?.buildOrNull(zacContext),
      debugShowMaterialGrid:
          debugShowMaterialGrid?.buildOrNull(zacContext) ?? false,
      showPerformanceOverlay:
          showPerformanceOverlay?.buildOrNull(zacContext) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.buildOrNull(zacContext) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.buildOrNull(zacContext) ?? false,
      showSemanticsDebugger:
          showSemanticsDebugger?.buildOrNull(zacContext) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.buildOrNull(zacContext) ?? true,
      restorationScopeId: restorationScopeId?.buildOrNull(zacContext),
      useInheritedMediaQuery:
          useInheritedMediaQuery?.buildOrNull(zacContext) ?? false,
    );
  }

  @override
  MaterialApp build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  MaterialApp? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
