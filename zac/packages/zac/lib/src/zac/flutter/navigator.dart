import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/transformers.dart';

part 'navigator.freezed.dart';
part 'navigator.g.dart';

@defaultConverterFreezed
@TsClass()
class ZacFlutterGlobalKeyNavigatorStateProvider
    with _$ZacFlutterGlobalKeyNavigatorStateProvider
    implements FlutterWidget {
  const ZacFlutterGlobalKeyNavigatorStateProvider._();
  static const String unionValue = 'z:1:GlobalKeyNavigatorStateProvider';

  factory ZacFlutterGlobalKeyNavigatorStateProvider.fromJson(
          Map<String, dynamic> json) =>
      _$ZacFlutterGlobalKeyNavigatorStateProviderFromJson(json);

  @FreezedUnionValue(ZacFlutterGlobalKeyNavigatorStateProvider.unionValue)
  factory ZacFlutterGlobalKeyNavigatorStateProvider({
    required SharedValueFamily family,
    required FlutterWidget child,
    ZacValue<String>? debugLabel,
  }) = _ZacFlutterGlobalKeyNavigatorStateProvider;

  SharedValueType _valueBuilder(
      AutoDisposeStateProviderRef<SharedValueType> ref, ZacContext zacContext) {
    return GlobalKey<NavigatorState>(
      debugLabel: map(
        (obj) => obj.debugLabel?.getValue(zacContext),
      ),
    );
  }

  @override
  Widget buildWidget(ZacContext zacContext) {
    return map(
      (obj) => SharedValueProvider(
        autoCreate: true,
        valueBuilder: _valueBuilder,
        family: obj.family,
        childBuilder: obj.child.buildWidget,
      ),
    );
  }
}

@defaultConverterFreezed
@TsClass()
class ZacFlutterNavigatorActions
    with _$ZacFlutterNavigatorActions
    implements ZacAction {
  const ZacFlutterNavigatorActions._();

  static const String unionValuePopUntilRouteName =
      'z:1:Navigator.popUntilRouteName';

  factory ZacFlutterNavigatorActions.fromJson(Map<String, dynamic> json) =>
      _$ZacFlutterNavigatorActionsFromJson(json);

  @FreezedUnionValue(ZacFlutterNavigatorActions.unionValuePopUntilRouteName)
  factory ZacFlutterNavigatorActions.popUntilRouteName({
    required ZacValue<String> routeName,
    FlutterNavigatorState? navigatorState,
  }) = _PopUntilRouteName;

  NavigatorState? _getState(ZacContext zacContext) {
    return map(
          popUntilRouteName: (obj) {
            return obj.navigatorState?.getNavigatorState(zacContext);
          },
        ) ??
        Navigator.maybeOf(zacContext.context);
  }

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    final state = _getState(zacContext);
    if (null == state) return;

    /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
    state.popUntil(ModalRoute.withName(routeName.getValue(zacContext,
        prefered: ZacValuePreferedConsume.read)));
  }
}

@defaultConverterFreezed
@TsClass()
class RouteFactoryRouteConfig with _$RouteFactoryRouteConfig {
  const RouteFactoryRouteConfig._();

  static const String unionValue = 'z:1:RouteFactoryRouteConfig';

  factory RouteFactoryRouteConfig.fromJson(Map<String, dynamic> json) =>
      _$RouteFactoryRouteConfigFromJson(json);

  @FreezedUnionValue(RouteFactoryRouteConfig.unionValue)
  factory RouteFactoryRouteConfig({
    required FlutterRoute route,
    ZacValue<String>? provideArgsName,
    ZacTransformers? transform,
  }) = _RouteFactoryConfig;
}

@defaultConverterFreezed
@TsClass()
class RouteFactorySingleRoute
    with _$RouteFactorySingleRoute
    implements FlutterRouteFactory {
  const RouteFactorySingleRoute._();

  static const String unionValue = 'z:1:RouteFactorySingleRoute';

  factory RouteFactorySingleRoute.fromJson(Map<String, dynamic> json) =>
      _$RouteFactorySingleRouteFromJson(json);

  @FreezedUnionValue(RouteFactorySingleRoute.unionValue)
  factory RouteFactorySingleRoute({
    required RouteFactoryRouteConfig routeConfig,
    String? provideArgsNamePrefix,
  }) = _RouteFactorySingleRoute;

  @override
  RouteFactory buildRouteFactory(ZacContext zacContext) {
    return (settings) {
      final name = settings.name;
      if (null == name) {
        throw UnimplementedError(
            '$RouteFactorySingleRoute does currently not support settings without a name');
      }

      return routeConfig.route.build(
        zacContext,
        wrap: (origin, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(zacContext);
          }

          return SharedValueProviderBuilder(
            child: zacWidget,
            family: RouteFactoryFromRoutes.providerName(
              origin,
              routeConfig,
              provideArgsNamePrefix,
            ),
            value: args,
            transformer: routeConfig.transform,
          ).buildWidget(zacContext);
        },
      );
    };
  }
}

@defaultConverterFreezed
@TsClass()
class RouteFactoryFromRoutes
    with _$RouteFactoryFromRoutes
    implements FlutterRouteFactory {
  const RouteFactoryFromRoutes._();

  static const defaultProviderName = 'routeArgs';

  static const String unionValue = 'z:1:RouteFactoryFromRoutes';

  factory RouteFactoryFromRoutes.fromJson(Map<String, dynamic> json) =>
      _$RouteFactoryFromRoutesFromJson(json);

  @FreezedUnionValue(RouteFactoryFromRoutes.unionValue)
  factory RouteFactoryFromRoutes({
    required Map<String, RouteFactoryRouteConfig> routes,
    String? provideArgsNamePrefix,
  }) = _RouteFactoryFromRoutes;

  static String providerName(
      ZacContext zacContext, RouteFactoryRouteConfig config, String? prefix) {
    final name = config.provideArgsName?.getValue(zacContext) ??
        RouteFactoryFromRoutes.defaultProviderName;
    return '${null == prefix ? "" : "$prefix."}$name';
  }

  @override
  RouteFactory buildRouteFactory(ZacContext zacContext) {
    return (settings) {
      final name = settings.name;
      if (null == name) {
        throw Exception(
            '$RouteFactoryFromRoutes does currently not support $RouteSettings without a name');
      }
      if (!routes.containsKey(name)) {
        return null;
      }
      final config = routes[name]!;
      return config.route.build(
        zacContext,
        wrap: (origin, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(zacContext);
          }

          return SharedValueProviderBuilder(
            child: zacWidget,
            family: RouteFactoryFromRoutes.providerName(
              origin,
              config,
              provideArgsNamePrefix,
            ),
            value: args,
            transformer: config.transform,
          ).buildWidget(zacContext);
        },
      );
    };
  }
}
