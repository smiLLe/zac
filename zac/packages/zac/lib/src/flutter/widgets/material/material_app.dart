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
class FlutterMaterialApp
    with _$FlutterMaterialApp
    implements ZacBuilder<MaterialApp> {
  const FlutterMaterialApp._();

  static const String unionValue = 'f:1:MaterialApp';

  factory FlutterMaterialApp.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialAppFromJson(json);

  @FreezedUnionValue(FlutterMaterialApp.unionValue)
  factory FlutterMaterialApp({
    FlutterKey? key,
    ZacValue<GlobalKey<NavigatorState>>? navigatorKey,
    ZacValue<GlobalKey<ScaffoldMessengerState>>? scaffoldMessengerKey,
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
