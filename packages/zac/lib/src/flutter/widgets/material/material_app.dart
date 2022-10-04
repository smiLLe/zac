import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  MaterialApp buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return MaterialApp(
      key: key?.buildKey(context, ref, lifetime),
      navigatorKey: navigatorKey?.buildKey(context, ref, lifetime),
      home: home?.buildWidget(context, ref, lifetime),
      initialRoute: initialRoute?.getValue(zacRef),
      onGenerateRoute:
          onGenerateRoute?.buildRouteFactory(context, ref, lifetime),
      onUnknownRoute: onUnknownRoute?.buildRouteFactory(context, ref, lifetime),
      title: title?.getValue(zacRef) ?? '',
      color: color?.build(context, ref, lifetime),
      locale: locale?.build(context, ref, lifetime),
      debugShowMaterialGrid: debugShowMaterialGrid?.getValue(zacRef) ?? false,
      showPerformanceOverlay: showPerformanceOverlay?.getValue(zacRef) ?? false,
      checkerboardRasterCacheImages:
          checkerboardRasterCacheImages?.getValue(zacRef) ?? false,
      checkerboardOffscreenLayers:
          checkerboardOffscreenLayers?.getValue(zacRef) ?? false,
      showSemanticsDebugger: showSemanticsDebugger?.getValue(zacRef) ?? false,
      debugShowCheckedModeBanner:
          debugShowCheckedModeBanner?.getValue(zacRef) ?? true,
      restorationScopeId: restorationScopeId?.getValue(zacRef),
      useInheritedMediaQuery: useInheritedMediaQuery?.getValue(zacRef) ?? false,
    );
  }
}
