import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'material_app.freezed.dart';
part 'material_app.g.dart';

@freezedZacBuilder
class FlutterMaterialApp
    with _$FlutterMaterialApp
    implements ZacBuilder<MaterialApp> {
  const FlutterMaterialApp._();

  static const String unionValue = 'f:1:MaterialApp';

  factory FlutterMaterialApp.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialAppFromJson(json);

  @FreezedUnionValue(FlutterMaterialApp.unionValue)
  factory FlutterMaterialApp({
    ZacBuilder<Key?>? key,
    ConsumeSharedValue<GlobalKey<NavigatorState>?>? navigatorKey,
    ConsumeSharedValue<GlobalKey<ScaffoldMessengerState>?>?
        scaffoldMessengerKey,
    ZacBuilder<Widget?>? home,
    // Map<String, WidgetBuilder> routes = const <String, WidgetBuilder>{},
    ZacBuilder<String?>? initialRoute,
    FlutterRouteFactory? onGenerateRoute,
    // InitialRouteListFactory? onGenerateInitialRoutes,
    FlutterRouteFactory? onUnknownRoute,
    // List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
    // TransitionBuilder? builder,
    ZacBuilder<String?>? title,
    // GenerateAppTitle? onGenerateTitle,
    ZacBuilder<Color?>? color,
    // ThemeData? theme,
    // ThemeData? darkTheme,
    // ThemeData? highContrastTheme,
    // ThemeData? highContrastDarkTheme,
    // ThemeMode? themeMode = ThemeMode.system,
    ZacBuilder<Locale?>? locale,
    // Iterable<LocalizationsDelegate>? localizationsDelegates,
    // LocaleListResolutionCallback? localeListResolutionCallback,
    // LocaleResolutionCallback? localeResolutionCallback,
    // Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
    ZacBuilder<bool?>? debugShowMaterialGrid,
    ZacBuilder<bool?>? showPerformanceOverlay,
    ZacBuilder<bool?>? checkerboardRasterCacheImages,
    ZacBuilder<bool?>? checkerboardOffscreenLayers,
    ZacBuilder<bool?>? showSemanticsDebugger,
    ZacBuilder<bool?>? debugShowCheckedModeBanner,
    // Map<ShortcutActivator, Intent>? shortcuts,
    // Map<Type, Action<Intent>>? actions,
    ZacBuilder<String?>? restorationScopeId,
    // ScrollBehavior? scrollBehavior,
    ZacBuilder<bool?>? useInheritedMediaQuery,
  }) = _FlutterMaterialApp;

  MaterialApp _buildWidget(ZacContext zacContext) {
    return MaterialApp(
      key: key?.build(zacContext),
      navigatorKey: navigatorKey?.build(zacContext),
      scaffoldMessengerKey: scaffoldMessengerKey?.build(zacContext),
      home: home?.build(zacContext),
      initialRoute: initialRoute?.build(zacContext),
      onGenerateRoute: onGenerateRoute?.build(zacContext),
      onUnknownRoute: onUnknownRoute?.build(zacContext),
      title: title?.build(zacContext) ?? '',
      color: color?.build(zacContext),
      locale: locale?.build(zacContext),
      debugShowMaterialGrid: debugShowMaterialGrid?.build(zacContext) ?? false,
      showPerformanceOverlay:
          showPerformanceOverlay?.build(zacContext) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.build(zacContext) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.build(zacContext) ?? false,
      showSemanticsDebugger: showSemanticsDebugger?.build(zacContext) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.build(zacContext) ?? true,
      restorationScopeId: restorationScopeId?.build(zacContext),
      useInheritedMediaQuery:
          useInheritedMediaQuery?.build(zacContext) ?? false,
    );
  }

  @override
  MaterialApp build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
