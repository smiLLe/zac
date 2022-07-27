import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/zac/shared_value/shared_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/mixed/route/route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigator.freezed.dart';
part 'navigator.g.dart';

Type _typeOf<T>() => T;

abstract class ZacNavigatorState {
  factory ZacNavigatorState.fromJson(Object data) {
    return ConverterHelper.convertToType<ZacNavigatorState>(data);
  }

  NavigatorState getNavigatorState(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterNavigatorState
    with _$FlutterNavigatorState
    implements SharedValueTransformer, ZacNavigatorState, FlutterKey {
  const FlutterNavigatorState._();
  static const String unionValueClosest = 'f:1:NavigatorState.closest';
  static const String unionValueRoot = 'f:1:NavigatorState.root';
  static const String unionValueConsume =
      'z:1:NavigatorState.consumeFromGlobalKey';
  static const String unionValueBuilder = 'z:1:GlobalKeyNavigatorState';
  static const String unionValueBuilderTransform =
      'z:1:GlobalKeyNavigatorState.transformToGlobalKey';

  factory FlutterNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorStateFromJson(json);

  @FreezedUnionValue(FlutterNavigatorState.unionValueClosest)
  factory FlutterNavigatorState.closest() = _ZacNavigatorStateClosest;

  @FreezedUnionValue(FlutterNavigatorState.unionValueRoot)
  factory FlutterNavigatorState.root() = _ZacNavigatorStateRoot;

  @FreezedUnionValue(FlutterNavigatorState.unionValueConsume)
  @With<ConsumeValue<GlobalKey<NavigatorState>>>()
  factory FlutterNavigatorState.consumeFromGlobalKey({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = _ZacNavigatorStateConsumeFromGlobalKey;

  @FreezedUnionValue(FlutterNavigatorState.unionValueBuilder)
  factory FlutterNavigatorState.builder({String? debugLabel}) =
      _ZacNavigatorStateBuilder;

  @FreezedUnionValue(FlutterNavigatorState.unionValueBuilderTransform)
  factory FlutterNavigatorState.transform() =
      _ZacNavigatorStateTransformBuilder;

  @override
  Object transform(Object value, SharedValueInteractionType interaction) {
    if (value is! _ZacNavigatorStateBuilder) {
      throw StateError(
          'Trying to get NavigatorState from unsupported type "$this"');
    }

    return GlobalKey<NavigatorState>(debugLabel: value.debugLabel);
  }

  @override
  NavigatorState getNavigatorState(ZacBuildContext context) {
    return map(
      closest: (_) => Navigator.of(context.context, rootNavigator: false),
      root: (_) => Navigator.of(context.context, rootNavigator: true),
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
      closest: (obj) => throw StateError(
          'Trying to create a FlutterKey from unsupported type "$obj"'),
      root: (obj) => throw StateError(
          'Trying to create a FlutterKey from unsupported type "$obj"'),
      builder: (obj) => throw StateError(
          'Trying to create a FlutterKey from unsupported type "$obj"'),
      transform: (obj) => throw StateError(
          'Trying to create a FlutterKey from unsupported type "$obj"'),
    );
  }
}

@defaultConverterFreezed
class FlutterNavigator with _$FlutterNavigator, ZacAction implements ZacWidget {
  const FlutterNavigator._();

  static const String unionValue = 'f:1:Navigator';
  static const String unionValuePush = 'f:1:Navigator.push';
  static const String unionValuePushNamed = 'f:1:Navigator.pushNamed';
  static const String unionValuePop = 'f:1:Navigator.pop';
  static const String unionValueMaybePop = 'f:1:Navigator.maybePop';
  static const String unionValuePushReplacement =
      'f:1:Navigator.pushReplacement';
  static const String unionValuePushReplacementNamed =
      'f:1:Navigator.pushReplacementNamed';

  static const String unionValuePopUntilRouteName =
      'z:1:Navigator.popUntilRouteName';

  factory FlutterNavigator.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorFromJson(json);

  @FreezedUnionValue(FlutterNavigator.unionValue)
  factory FlutterNavigator({
    FlutterKey? key,
    FlutterRouteFactory? onGenerateRoute,
    FlutterRouteFactory? onUnknownRoute,
    ZacString? initialRoute,
    ZacBool? requestFocus,
  }) = _FlutterNavigator;

  @FreezedUnionValue(FlutterNavigator.unionValuePush)
  factory FlutterNavigator.push(
      {required FlutterRoute route,
      ZacNavigatorState? navigatorState}) = _FlutterNavigatorPush;

  @FreezedUnionValue(FlutterNavigator.unionValuePushNamed)
  factory FlutterNavigator.pushNamed(
      {required ZacString routeName,
      Object? arguments,
      ZacNavigatorState? navigatorState}) = _FlutterNavigatorPushNamed;

  @FreezedUnionValue(FlutterNavigator.unionValuePop)
  factory FlutterNavigator.pop({
    ZacActions? actions,
    ZacNavigatorState? navigatorState,
  }) = _FlutterNavigatorPop;

  @FreezedUnionValue(FlutterNavigator.unionValueMaybePop)
  factory FlutterNavigator.maybePop({
    ZacActions? actions,
    ZacNavigatorState? navigatorState,
  }) = _FlutterNavigatorMaybePop;

  @FreezedUnionValue(FlutterNavigator.unionValuePushReplacement)
  factory FlutterNavigator.pushReplacement({
    required FlutterRoute route,
    ZacActions? result,
    ZacNavigatorState? navigatorState,
  }) = _FlutterNavigatorPushReplacement;

  @FreezedUnionValue(FlutterNavigator.unionValuePushReplacementNamed)
  factory FlutterNavigator.pushReplacementNamed({
    required ZacString routeName,
    Object? arguments,
    ZacNavigatorState? navigatorState,
    ZacActions? result,
  }) = _FlutterNavigatorPushReplacementNamed;

  @FreezedUnionValue(FlutterNavigator.unionValuePopUntilRouteName)
  factory FlutterNavigator.popUntilRouteName({
    required ZacString routeName,
    ZacNavigatorState? navigatorState,
  }) = _FlutterNavigatorPopUntilRouteName;

  NavigatorState? _getState(ZacBuildContext context) {
    return map(
          (_) => throw StateError('This must never happen'),
          push: (obj) => obj.navigatorState?.getNavigatorState(context),
          pushNamed: (obj) => obj.navigatorState?.getNavigatorState(context),
          pop: (obj) => obj.navigatorState?.getNavigatorState(context),
          maybePop: (obj) => obj.navigatorState?.getNavigatorState(context),
          pushReplacement: (obj) =>
              obj.navigatorState?.getNavigatorState(context),
          pushReplacementNamed: (obj) =>
              obj.navigatorState?.getNavigatorState(context),
          popUntilRouteName: (obj) =>
              obj.navigatorState?.getNavigatorState(context),
        ) ??
        Navigator.maybeOf(context.context);
  }

  @override
  void execute(ZacBuildContext context, ActionPayload payload) {
    map(
      (_) => throw StateError('This must never happen'),
      push: (obj) {
        final state = _getState(context);
        if (null == state) return null;
        state.push(obj.route.build(context)).then((value) {
          if (value is ZacActions) {
            value.execute(context, payload);
          }
        });
      },
      pushNamed: (obj) {
        final state = _getState(context);
        if (null == state) return null;
        state
            .pushNamed(
          obj.routeName.getValue(context),
          arguments: obj.arguments,
        )
            .then((value) {
          if (value is ZacActions) {
            value.execute(context, payload);
          }
        });
      },
      pop: (obj) {
        final state = _getState(context);
        if (null == state) return;
        state.pop(obj.actions);
      },
      maybePop: (obj) {
        final state = _getState(context);
        if (null == state) return;
        state.maybePop(obj.actions);
      },
      pushReplacement: (obj) {
        final state = _getState(context);
        if (null == state) return;
        state
            .pushReplacement(
          obj.route.build(context),
          result: obj.result,
        )
            .then((value) {
          if (value is ZacActions) {
            value.execute(context, payload);
          }
        });
      },
      pushReplacementNamed: (obj) {
        final state = _getState(context);
        if (null == state) return;
        state
            .pushReplacementNamed(
          obj.routeName.getValue(context),
          arguments: obj.arguments,
          result: obj.result,
        )
            .then((value) {
          if (value is ZacActions) {
            value.execute(context, payload);
          }
        });
      },
      popUntilRouteName: (obj) {
        final state = _getState(context);
        if (null == state) return;

        /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
        state.popUntil(ModalRoute.withName(obj.routeName.getValue(context)));
      },
    );
  }

  @override
  Navigator buildWidget(ZacBuildContext context) {
    return map(
      (obj) => Navigator(
        key: obj.key?.build(context),
        onGenerateRoute: obj.onGenerateRoute?.buildRouteFactory(context),
        onUnknownRoute: obj.onUnknownRoute?.buildRouteFactory(context),
        initialRoute: obj.initialRoute?.getValue(context),
        requestFocus: obj.requestFocus?.getValue(context) ?? true,
      ),
      pushNamed: (_) => throw StateError('This must never happen'),
      push: (_) => throw StateError('This must never happen'),
      pop: (_) => throw StateError('This must never happen'),
      maybePop: (_) => throw StateError('This must never happen'),
      pushReplacement: (_) => throw StateError('This must never happen'),
      pushReplacementNamed: (_) => throw StateError('This must never happen'),
      popUntilRouteName: (_) => throw StateError('This must never happen'),
    );
  }
}

abstract class FlutterRouteFactory {
  factory FlutterRouteFactory.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterRouteFactory>(data);
  }

  RouteFactory buildRouteFactory(ZacBuildContext context);
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
