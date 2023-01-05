import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
    ZacBuilder<GlobalKey<NavigatorState>?>? navigatorKey,
    ZacBuilder<GlobalKey<ScaffoldMessengerState>?>? scaffoldMessengerKey,
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

  MaterialApp _buildWidget(BuildContext context, ZacContext zacContext) {
    return MaterialApp(
      key: key?.build(context, zacContext),
      navigatorKey: navigatorKey?.build(context, zacContext),
      scaffoldMessengerKey: scaffoldMessengerKey?.build(context, zacContext),
      home: home?.build(context, zacContext),
      initialRoute: initialRoute?.build(context, zacContext),
      onGenerateRoute: onGenerateRoute?.build(context, zacContext),
      onUnknownRoute: onUnknownRoute?.build(context, zacContext),
      title: title?.build(context, zacContext) ?? '',
      color: color?.build(context, zacContext),
      locale: locale?.build(context, zacContext),
      debugShowMaterialGrid:
          debugShowMaterialGrid?.build(context, zacContext) ?? false,
      showPerformanceOverlay:
          showPerformanceOverlay?.build(context, zacContext) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.build(context, zacContext) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.build(context, zacContext) ?? false,
      showSemanticsDebugger:
          showSemanticsDebugger?.build(context, zacContext) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.build(context, zacContext) ?? true,
      restorationScopeId: restorationScopeId?.build(context, zacContext),
      useInheritedMediaQuery:
          useInheritedMediaQuery?.build(context, zacContext) ?? false,
    );
  }

  @override
  MaterialApp build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
