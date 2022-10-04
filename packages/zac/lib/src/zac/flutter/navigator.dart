import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/interactions.dart';
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
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  }) = _ZacFlutterGlobalKeyNavigatorStateConsume;

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return map(
      provide: (obj) => GlobalKeyNavigatorStateProvider(builder: obj),
      consume: (_) => throw StateError(''),
    );
  }

  @override
  NavigatorState getNavigatorState(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      consume: (obj) {
        if (null != obj.getSharedValue(zacRef).currentState) {
          return obj.getSharedValue(zacRef).currentState!;
        }
        throw StateError('');
      },
      provide: (_) => throw StateError(''),
    );
  }

  @override
  GlobalKey<NavigatorState> buildKey(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      consume: (obj) => obj.getSharedValue(zacRef),
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
    final zacRef = ZacRef.widget(ref);
    return SharedValueProvider(
      value: GlobalKey<NavigatorState>(
        debugLabel: builder.debugLabel?.getValue(zacRef),
      ),
      family: builder.family,
      builder: builder.child.buildWidget,
    );
  }
}

@defaultConverterFreezed
class ZacFlutterNavigatorActions
    with _$ZacFlutterNavigatorActions
    implements ZacInteraction {
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

  NavigatorState? _getState(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return map(
          popUntilRouteName: (obj) =>
              obj.navigatorState?.getNavigatorState(context, ref, lifetime),
        ) ??
        Navigator.maybeOf(context);
  }

  @override
  void execute(BuildContext context, WidgetRef ref,
      ZacInteractionLifetime lifetime, ContextBag bag) {
    final state = _getState(context, ref, lifetime);
    if (null == state) return;
    final zacRef = ZacRef.widget(ref);

    /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
    state.popUntil(ModalRoute.withName(routeName.getValue(zacRef)));
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
    List<ZacTransformer>? transform,
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
  RouteFactory buildRouteFactory(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return (settings) {
      final name = settings.name;
      if (null == name) {
        throw UnimplementedError(
            '${_typeOf<RouteFactorySingleRoute>()} does currently not support settings without a name');
      }

      return routeConfig.route.build(
        context,
        ref,
        lifetime,
        wrap: (context, ref, helper, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(context, ref, lifetime);
          }

          return SharedValueProvider(
            builder: zacWidget.buildWidget,
            family: RouteFactoryFromRoutes.providerName(
              context,
              ref,
              helper,
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
      BuildContext context,
      WidgetRef ref,
      ZacInteractionLifetime lifetime,
      RouteFactoryRouteConfig config,
      String? prefix) {
    final name = config.provideArgsName?.getValue(ZacRef.widget(ref)) ??
        RouteFactoryFromRoutes.defaultProviderName;
    return '${null == prefix ? "" : "$prefix."}$name';
  }

  @override
  RouteFactory buildRouteFactory(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
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
        context,
        ref,
        lifetime,
        wrap: (context, ref, helper, zacWidget) {
          final args = settings.arguments;
          if (null == args) {
            return zacWidget.buildWidget(context, ref, lifetime);
          }

          return SharedValueProvider(
            builder: zacWidget.buildWidget,
            family: RouteFactoryFromRoutes.providerName(
              context,
              ref,
              helper,
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
