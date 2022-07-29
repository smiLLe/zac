import 'package:zac/src/flutter/widgets/navigator/navigator.dart';
import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/zac/shared_value/shared_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigator.freezed.dart';
part 'navigator.g.dart';

Type _typeOf<T>() => T;

@defaultConverterFreezed
class ZacFlutterNavigatorState
    with _$ZacFlutterNavigatorState
    implements SharedValueTransformer, GetFlutterNavigatorState, FlutterKey {
  const ZacFlutterNavigatorState._();
  static const String unionValueConsume =
      'z:1:NavigatorState.consumeFromGlobalKey';
  static const String unionValueBuilder = 'z:1:GlobalKeyNavigatorState';
  static const String unionValueBuilderTransform =
      'z:1:GlobalKeyNavigatorState.transformToGlobalKey';

  factory ZacFlutterNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$ZacFlutterNavigatorStateFromJson(json);

  @FreezedUnionValue(ZacFlutterNavigatorState.unionValueConsume)
  @With<ConsumeValue<GlobalKey<NavigatorState>>>()
  factory ZacFlutterNavigatorState.consumeFromGlobalKey({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = _ConsumeFromGlobalKey;

  @FreezedUnionValue(ZacFlutterNavigatorState.unionValueBuilder)
  factory ZacFlutterNavigatorState.builder({String? debugLabel}) = _Builder;

  @FreezedUnionValue(ZacFlutterNavigatorState.unionValueBuilderTransform)
  factory ZacFlutterNavigatorState.transform() = _TransformBuilder;

  @override
  Object transform(Object value, SharedValueInteractionType interaction) {
    if (value is! _Builder) {
      throw StateError(
          'Trying to get NavigatorState from unsupported type "$this"');
    }

    return GlobalKey<NavigatorState>(debugLabel: value.debugLabel);
  }

  @override
  NavigatorState getNavigatorState(ZacBuildContext context) {
    return map(
      consumeFromGlobalKey: (obj) {
        if (null != obj.getSharedValue(context).currentState) {
          return obj.getSharedValue(context).currentState!;
        }
        throw StateError('');
      },
      builder: (obj) => throw StateError(
          'Trying to get NavigatorState from unsupported type "$obj"'),
      transform: (obj) => throw StateError(
          'Trying to get NavigatorState from unsupported type "$obj"'),
    );
  }

  @override
  Key build(ZacBuildContext context) {
    return map(
      consumeFromGlobalKey: (obj) => obj.getSharedValue(context),
      builder: (obj) => throw StateError(
          'Trying to create a FlutterKey from unsupported type "$obj"'),
      transform: (obj) => throw StateError(
          'Trying to create a FlutterKey from unsupported type "$obj"'),
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
            child: zacWidget,
            name: RouteFactoryFromRoutes.providerName(
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
            child: zacWidget,
            name: RouteFactoryFromRoutes.providerName(
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
