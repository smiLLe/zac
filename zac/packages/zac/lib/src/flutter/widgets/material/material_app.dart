import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';

part 'material_app.freezed.dart';
part 'material_app.g.dart';

@freezedZacBuilder
class FlutterMaterialApp
    with _$FlutterMaterialApp
    implements ZacBuild<MaterialApp> {
  const FlutterMaterialApp._();

  static const String unionValue = 'f:1:MaterialApp';

  factory FlutterMaterialApp.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialAppFromJson(json);

  @FreezedUnionValue(FlutterMaterialApp.unionValue)
  factory FlutterMaterialApp({
    ZacValue<Key?>? key,
    ZacValueConsume<GlobalKey<NavigatorState>>? navigatorKey,
    ZacValueConsume<GlobalKey<ScaffoldMessengerState>>? scaffoldMessengerKey,
    ZacValue<Widget?>? home,
    // Map<String, WidgetBuilder> routes = const <String, WidgetBuilder>{},
    ZacValue<String?>? initialRoute,
    FlutterRouteFactory? onGenerateRoute,
    // InitialRouteListFactory? onGenerateInitialRoutes,
    FlutterRouteFactory? onUnknownRoute,
    // List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
    // TransitionBuilder? builder,
    ZacValue<String?>? title,
    // GenerateAppTitle? onGenerateTitle,
    ZacValue<Color?>? color,
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
    ZacValue<bool?>? debugShowMaterialGrid,
    ZacValue<bool?>? showPerformanceOverlay,
    ZacValue<bool?>? checkerboardRasterCacheImages,
    ZacValue<bool?>? checkerboardOffscreenLayers,
    ZacValue<bool?>? showSemanticsDebugger,
    ZacValue<bool?>? debugShowCheckedModeBanner,
    // Map<ShortcutActivator, Intent>? shortcuts,
    // Map<Type, Action<Intent>>? actions,
    ZacValue<String?>? restorationScopeId,
    // ScrollBehavior? scrollBehavior,
    ZacValue<bool?>? useInheritedMediaQuery,
  }) = _FlutterMaterialApp;

  MaterialApp _buildWidget(ZacContext zacContext) {
    return MaterialApp(
      key: key?.getValue(zacContext),
      navigatorKey: navigatorKey?.getValue(zacContext),
      scaffoldMessengerKey: scaffoldMessengerKey?.getValue(zacContext),
      home: home?.getValue(zacContext),
      initialRoute: initialRoute?.getValue(zacContext),
      onGenerateRoute: onGenerateRoute?.build(zacContext),
      onUnknownRoute: onUnknownRoute?.build(zacContext),
      title: title?.getValue(zacContext) ?? '',
      color: color?.getValue(zacContext),
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

  @override
  MaterialApp build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
