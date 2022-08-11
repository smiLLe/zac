import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/update_context.dart';
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
        ZacWidget,
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
    required ZacWidget child,
    ZacString? debugLabel,
  }) = _ZacFlutterGlobalKeyNavigatorStateProvide;

  @FreezedUnionValue(ZacFlutterGlobalKeyNavigatorState.unionValueConsume)
  @With<ConsumeValue<GlobalKey<NavigatorState>>>()
  factory ZacFlutterGlobalKeyNavigatorState.consume({
    required SharedValueFamily family,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? transformer,
  }) = _ZacFlutterGlobalKeyNavigatorStateConsume;

  @override
  Widget buildWidget(ZacBuildContext context) {
    return map(
      provide: (obj) => GlobalKeyNavigatorStateProvider(builder: obj),
      consume: (_) => throw StateError(''),
    );
  }

  @override
  NavigatorState getNavigatorState(ZacBuildContext context) {
    return map(
      consume: (obj) {
        if (null != obj.getSharedValue(context).currentState) {
          return obj.getSharedValue(context).currentState!;
        }
        throw StateError('');
      },
      provide: (_) => throw StateError(''),
    );
  }

  @override
  GlobalKey<NavigatorState> buildKey(ZacBuildContext context) {
    return map(
      consume: (obj) => obj.getSharedValue(context),
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
    final zacContext = useZacBuildContext(ref);
    return SharedValueProvider(
      value: GlobalKey<NavigatorState>(
        debugLabel: builder.debugLabel?.getValue(zacContext),
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

  NavigatorState? _getState(ZacBuildContext context) {
    return map(
          popUntilRouteName: (obj) =>
              obj.navigatorState?.getNavigatorState(context),
        ) ??
        Navigator.maybeOf(context.context);
  }

  @override
  void execute(ZacBuildContext context, ActionPayload payload) {
    final state = _getState(context);
    if (null == state) return;

    /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
    state.popUntil(ModalRoute.withName(routeName.getValue(context)));
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
    List<SharedValueTransformer>? transform,
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
  RouteFactory buildRouteFactory(ZacBuildContext context) {
    return (settings) {
      final name = settings.name;
      if (null == name) {
        throw UnimplementedError(
            '${_typeOf<RouteFactorySingleRoute>()} does currently not support settings without a name');
      }

      return routeConfig.route.build(
        context,
        wrap: (context, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(context);
          }

          return SharedValueProvider(
            builder: zacWidget.buildWidget,
            family: RouteFactoryFromRoutes.providerName(
              context,
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

  static String providerName(
      ZacBuildContext context, RouteFactoryRouteConfig config, String? prefix) {
    final name = config.provideArgsName?.getValue(context) ??
        RouteFactoryFromRoutes.defaultProviderName;
    return '${null == prefix ? "" : "$prefix."}$name';
  }

  @override
  RouteFactory buildRouteFactory(ZacBuildContext context) {
    return (settings) {
      final name = settings.name;
      if (null == name) {
        throw Exception(
            '${_typeOf<RouteFactoryFromRoutes>()} does currently not support settings without a name');
      }
      if (!routes.containsKey(name)) {
        return null;
      }
      final config = routes[name]!;
      return config.route.build(
        context,
        wrap: (context, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(context);
          }

          return SharedValueProvider(
            builder: zacWidget.buildWidget,
            family: RouteFactoryFromRoutes.providerName(
              context,
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
