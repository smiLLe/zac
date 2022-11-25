import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/transformers.dart';

part 'navigator.freezed.dart';
part 'navigator.g.dart';

@freezedZacBuilder
@ZacGenerate()
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
    required ZacString routeName,
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
    state.popUntil(ModalRoute.withName(routeName.build(
      zacContext,
      onConsume: const ZacBuilderConsume(
        type: SharedValueConsumeType.read(),
      ),
    )));
  }
}

@freezedZacBuilder
@ZacGenerate()
class RouteFactoryRouteConfig with _$RouteFactoryRouteConfig {
  const RouteFactoryRouteConfig._();

  static const String unionValue = 'z:1:RouteFactoryRouteConfig';

  factory RouteFactoryRouteConfig.fromJson(Map<String, dynamic> json) =>
      _$RouteFactoryRouteConfigFromJson(json);

  @FreezedUnionValue(RouteFactoryRouteConfig.unionValue)
  factory RouteFactoryRouteConfig({
    required FlutterRoute route,
    ZacString? provideArgsName,
    ZacTransformers? transform,
  }) = _RouteFactoryConfig;
}

@freezedZacBuilder
@ZacGenerate()
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
            return zacWidget.build(zacContext);
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
          ).build(zacContext);
        },
      );
    };
  }
}

@freezedZacBuilder
@ZacGenerate()
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
    final name = config.provideArgsName?.buildOrNull(zacContext) ??
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
            return zacWidget.build(zacContext);
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
          ).build(zacContext);
        },
      );
    };
  }
}
