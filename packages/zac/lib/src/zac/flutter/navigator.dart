import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/transformers.dart';

part 'navigator.freezed.dart';
part 'navigator.g.dart';

Type _typeOf<T>() => T;

@defaultConverterFreezed
class ZacFlutterGlobalKeyNavigatorState
    with _$ZacFlutterGlobalKeyNavigatorState
    implements
        FlutterWidget,
        GetFlutterNavigatorState,
        FlutterGlobalKeyNavigatorState {
  const ZacFlutterGlobalKeyNavigatorState._();
  static const String unionValueConsume = 'z:1:GlobalKeyNavigatorState.consume';
  static const String unionValueProvide = 'z:1:GlobalKeyNavigatorState.provide';

  factory ZacFlutterGlobalKeyNavigatorState.fromJson(
          Map<String, dynamic> json) =>
      _$ZacFlutterGlobalKeyNavigatorStateFromJson(json);

  @FreezedUnionValue(ZacFlutterGlobalKeyNavigatorState.unionValueProvide)
  factory ZacFlutterGlobalKeyNavigatorState.provide({
    required SharedValueFamily family,
    required FlutterWidget child,
    ZacString? debugLabel,
  }) = _ZacFlutterGlobalKeyNavigatorStateProvide;

  @FreezedUnionValue(ZacFlutterGlobalKeyNavigatorState.unionValueConsume)
  @With<ConsumeValue<GlobalKey<NavigatorState>>>()
  factory ZacFlutterGlobalKeyNavigatorState.consume(
    SharedValueFamily family, {
    ZacTransformers? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  }) = _ZacFlutterGlobalKeyNavigatorStateConsume;

  @override
  Widget buildWidget(ZacOriginWidgetTree origin) {
    return map(
      provide: (obj) => GlobalKeyNavigatorStateProvider(builder: obj),
      consume: (_) => throw StateError(''),
    );
  }

  @override
  NavigatorState getNavigatorState(ZacOrigin origin) {
    return map(
      consume: (obj) {
        if (null != obj.getSharedValue(origin).currentState) {
          return obj.getSharedValue(origin).currentState!;
        }
        throw StateError('');
      },
      provide: (_) => throw StateError(''),
    );
  }

  @override
  GlobalKey<NavigatorState> buildKey(ZacOrigin origin) {
    return map(
      consume: (obj) => obj.getSharedValue(origin),
      provide: (_) => throw StateError(''),
    );
  }
}

/// Special Provider that will only share a [GlobalKey] of NavigatorState
class GlobalKeyNavigatorStateProvider extends HookConsumerWidget {
  const GlobalKeyNavigatorStateProvider({required this.builder, Key? key})
      : super(key: key);

  final _ZacFlutterGlobalKeyNavigatorStateProvide builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final origin = useZacOrigin(ref);
    return SharedValueProvider(
      value: GlobalKey<NavigatorState>(
        debugLabel: builder.debugLabel?.getValue(origin),
      ),
      family: builder.family,
      builder: builder.child.buildWidget,
    );
  }
}

@defaultConverterFreezed
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
    GetFlutterNavigatorState? navigatorState,
  }) = _PopUntilRouteName;

  NavigatorState? _getState(ZacOriginWidgetTree origin) {
    return map(
          popUntilRouteName: (obj) =>
              obj.navigatorState?.getNavigatorState(origin),
        ) ??
        Navigator.maybeOf(origin.context);
  }

  @override
  void execute(ZacOrigin origin, ContextBag bag) {
    assert(null != origin.mapOrNull(widgetTree: (obj) => obj));
    origin as ZacOriginWidgetTree;

    final state = _getState(origin);
    if (null == state) return;

    /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
    state.popUntil(ModalRoute.withName(routeName.getValue(origin)));
  }
}

@defaultConverterFreezed
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

@defaultConverterFreezed
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
  RouteFactory buildRouteFactory(ZacOriginWidgetTree origin) {
    return (settings) {
      final name = settings.name;
      if (null == name) {
        throw UnimplementedError(
            '${_typeOf<RouteFactorySingleRoute>()} does currently not support settings without a name');
      }

      return routeConfig.route.build(
        origin,
        wrap: (origin, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(origin);
          }

          return SharedValueProvider(
            builder: zacWidget.buildWidget,
            family: RouteFactoryFromRoutes.providerName(
              origin,
              routeConfig,
              provideArgsNamePrefix,
            ),
            value: args,
            transformer: routeConfig.transform,
          );
        },
      );
    };
  }
}

@defaultConverterFreezed
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

  static String providerName(ZacOriginWidgetTree origin,
      RouteFactoryRouteConfig config, String? prefix) {
    final name = config.provideArgsName?.getValue(origin) ??
        RouteFactoryFromRoutes.defaultProviderName;
    return '${null == prefix ? "" : "$prefix."}$name';
  }

  @override
  RouteFactory buildRouteFactory(ZacOrigin origin) {
    assert(null != origin.mapOrNull(widgetTree: (obj) => obj));
    origin as ZacOriginWidgetTree;

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
        origin,
        wrap: (origin, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(origin);
          }

          return SharedValueProvider(
            builder: zacWidget.buildWidget,
            family: RouteFactoryFromRoutes.providerName(
              origin,
              config,
              provideArgsNamePrefix,
            ),
            value: args,
            transformer: config.transform,
          );
        },
      );
    };
  }
}
