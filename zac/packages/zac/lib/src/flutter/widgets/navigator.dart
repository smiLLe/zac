import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigator.freezed.dart';
part 'navigator.g.dart';

const String nameOfSharedArgumentsInRoute = 'Route.arguments';

abstract class RouteWithArgs {
  Route<Object?> buildWithArgs(
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    SharedValueConsumeType onConsume = const SharedValueConsumeType.watch(),
  });
}

@freezedZacBuilder
class FlutterMaterialPageRoute
    with _$FlutterMaterialPageRoute
    implements ZacBuilder<Route<Object?>>, RouteWithArgs {
  const FlutterMaterialPageRoute._();

  factory FlutterMaterialPageRoute.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialPageRouteFromJson(json);

  @FreezedUnionValue('f:1:MaterialPageRoute')
  factory FlutterMaterialPageRoute({
    ZacBuilder<RouteSettings?>? settings,
    ZacBuilder<bool?>? maintainState,
    ZacBuilder<bool?>? fullscreenDialog,

    /// Used instead of WidgetBuilder builder
    required ZacBuilder<Widget> child,

    /// [FlutterRouteSettings] arguments are shared using this name or as a
    /// fallback using [nameOfSharedArgumentsInRoute]
    ZacBuilder<String?>? nameOfSharedArguments,
  }) = _FlutterMaterialPageRoute;

  MaterialPageRoute<Object?> _build(
    ZacContext zacContext, {
    required String familyName,
    required Object? arguments,
  }) {
    return MaterialPageRoute<Object?>(
      builder: (_) => SharedValueProvider(
        childBuilder: child.build,
        valueBuilder: (_, __) => arguments,
        family: familyName,
        autoCreate: true,
      ),
      settings: settings?.build(zacContext),
      fullscreenDialog: fullscreenDialog?.build(zacContext) ?? false,
      maintainState: maintainState?.build(zacContext) ?? true,
    );
  }

  @override
  MaterialPageRoute<Object?> build(ZacContext zacContext) {
    return _build(
      zacContext,
      familyName: nameOfSharedArguments?.build(zacContext) ??
          nameOfSharedArgumentsInRoute,
      arguments: settings?.build(zacContext)?.arguments,
    );
  }

  @override
  MaterialPageRoute<Object?> buildWithArgs(
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    SharedValueConsumeType onConsume = const SharedValueConsumeType.watch(),
  }) {
    return _build(
      zacContext,
      familyName: argName ?? nameOfSharedArgumentsInRoute,
      arguments: args,
    );
  }
}

@freezedZacBuilder
class FlutterPageRouteBuilder
    with _$FlutterPageRouteBuilder
    implements ZacBuilder<Route<Object?>>, RouteWithArgs {
  const FlutterPageRouteBuilder._();

  factory FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterPageRouteBuilderFromJson(json);

  @FreezedUnionValue('f:1:PageRouteBuilder')
  factory FlutterPageRouteBuilder({
    ZacBuilder<RouteSettings?>? settings,
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
    ZacBuilder<bool?>? opaque,
    ZacBuilder<bool?>? barrierDismissible,
    ZacBuilder<Color?>? barrierColor,
    ZacBuilder<String?>? barrierLabel,
    ZacBuilder<bool?>? maintainState,
    ZacBuilder<bool?>? fullscreenDialog,

    /// Used instead of WidgetBuilder builder
    required ZacBuilder<Widget> child,

    /// [FlutterRouteSettings] arguments are shared using this name or as a
    /// fallback using [nameOfSharedArgumentsInRoute]
    ZacBuilder<String?>? nameOfSharedArguments,
  }) = _FlutterPageRouteBuilder;

  PageRouteBuilder<Object?> _build(
    ZacContext zacContext, {
    required String familyName,
    required Object? arguments,
  }) {
    return PageRouteBuilder<ZacActions?>(
      pageBuilder: (_, __, ___) => SharedValueProvider(
        childBuilder: child.build,
        valueBuilder: (ref, zacContext) => arguments,
        family: familyName,
        autoCreate: true,
      ),
      settings: settings?.build(zacContext),
      opaque: opaque?.build(zacContext) ?? true,
      barrierDismissible: barrierDismissible?.build(zacContext) ?? false,
      barrierColor: barrierColor?.build(zacContext),
      barrierLabel: barrierLabel?.build(zacContext),
      maintainState: maintainState?.build(zacContext) ?? true,
      fullscreenDialog: fullscreenDialog?.build(zacContext) ?? false,
    );
  }

  @override
  PageRouteBuilder<Object?> build(ZacContext zacContext) {
    return _build(
      zacContext,
      familyName: nameOfSharedArguments?.build(zacContext) ??
          nameOfSharedArgumentsInRoute,
      arguments: settings?.build(zacContext)?.arguments,
    );
  }

  @override
  PageRouteBuilder<Object?> buildWithArgs(
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    SharedValueConsumeType onConsume = const SharedValueConsumeType.watch(),
  }) {
    return _build(
      zacContext,
      familyName: argName ?? nameOfSharedArgumentsInRoute,
      arguments: args,
    );
  }
}

@freezedZacBuilder
class FlutterNavigatorState
    with _$FlutterNavigatorState
    implements ZacBuilder<NavigatorState> {
  const FlutterNavigatorState._();

  factory FlutterNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorStateFromJson(json);

  @FreezedUnionValue('f:1:NavigatorState.closest')
  factory FlutterNavigatorState.closest() = _ZacNavigatorStateClosest;

  @FreezedUnionValue('f:1:NavigatorState.root')
  factory FlutterNavigatorState.root() = _ZacNavigatorStateRoot;

  @FreezedUnionValue('z:1:NavigatorState.shared')
  factory FlutterNavigatorState.shared({
    required ZacBuilder<GlobalKey<NavigatorState>> value,
  }) = _ZacNavigatorStateSharedValue;

  @override
  NavigatorState build(ZacContext zacContext) {
    return map(
      closest: (_) => Navigator.of(zacContext.context, rootNavigator: false),
      root: (_) => Navigator.of(zacContext.context, rootNavigator: true),
      shared: (obj) {
        final key = obj.value.build(zacContext);
        if (null != key.currentState) {
          return key.currentState!;
        }
        throw StateError('');
      },
    );
  }
}

@freezedZacBuilder
class FlutterNavigator
    with _$FlutterNavigator
    implements ZacBuilder<Navigator> {
  const FlutterNavigator._();

  factory FlutterNavigator.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorFromJson(json);

  @FreezedUnionValue('f:1:Navigator')
  factory FlutterNavigator({
    ZacBuilder<Key?>? key,
    FlutterRouteFactory? onGenerateRoute,
    FlutterRouteFactory? onUnknownRoute,
    ZacBuilder<String?>? initialRoute,
    ZacBuilder<bool?>? requestFocus,
  }) = _FlutterNavigator;

  Navigator _buildWidget(ZacContext zacContext) {
    return map(
      (obj) => Navigator(
        key: obj.key?.build(zacContext),
        onGenerateRoute: obj.onGenerateRoute?.build(zacContext),
        onUnknownRoute: obj.onUnknownRoute?.build(zacContext),
        initialRoute: obj.initialRoute?.build(zacContext),
        requestFocus: obj.requestFocus?.build(zacContext) ?? true,
      ),
    );
  }

  @override
  Navigator build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterNavigatorActions
    with _$FlutterNavigatorActions
    implements ZacAction {
  const FlutterNavigatorActions._();

  factory FlutterNavigatorActions.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorActionsFromJson(json);

  @FreezedUnionValue('f:1:Navigator.push')
  factory FlutterNavigatorActions.push({
    required ZacBuilder<Route<Object?>> route,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPush;

  @FreezedUnionValue('f:1:Navigator.pushNamed')
  factory FlutterNavigatorActions.pushNamed({
    required ZacBuilder<String> routeName,
    Object? arguments,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPushNamed;

  @FreezedUnionValue('f:1:Navigator.pop')
  factory FlutterNavigatorActions.pop({
    ZacActions? actions,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPop;

  @FreezedUnionValue('f:1:Navigator.maybePop')
  factory FlutterNavigatorActions.maybePop({
    ZacActions? actions,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsMaybePop;

  @FreezedUnionValue('f:1:Navigator.pushReplacement')
  factory FlutterNavigatorActions.pushReplacement({
    required ZacBuilder<Route<Object?>> route,
    ZacActions? result,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPushReplacement;

  @FreezedUnionValue('f:1:Navigator.pushReplacementNamed')
  factory FlutterNavigatorActions.pushReplacementNamed({
    required ZacBuilder<String> routeName,
    Object? arguments,
    ZacBuilder<NavigatorState?>? navigatorState,
    ZacActions? result,
  }) = _FlutterNavigatorActionsPushReplacementNamed;

  @FreezedUnionValue('z:1:Navigator.popUntilRouteName')
  factory FlutterNavigatorActions.popUntilRouteName({
    required ZacBuilder<String> routeName,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPopUntilRouteName;

  NavigatorState? _getState(ZacContext zacContext) {
    return map(
          push: (obj) => obj.navigatorState?.build(zacContext),
          pushNamed: (obj) => obj.navigatorState?.build(zacContext),
          pop: (obj) => obj.navigatorState?.build(zacContext),
          maybePop: (obj) => obj.navigatorState?.build(zacContext),
          pushReplacement: (obj) => obj.navigatorState?.build(zacContext),
          pushReplacementNamed: (obj) => obj.navigatorState?.build(zacContext),
          popUntilRouteName: (obj) => obj.navigatorState?.build(zacContext),
        ) ??
        Navigator.maybeOf(zacContext.context);
  }

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      push: (obj) {
        final state = _getState(zacContext);
        if (null == state) return null;
        state.push(obj.route.build(zacContext)).then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value.build(zacContext).execute(
                  const ZacActionPayload(),
                  zacContext,
                );
          }
        });
      },
      pushNamed: (obj) {
        final state = _getState(zacContext);
        if (null == state) return null;
        state
            .pushNamed(
          obj.routeName.build(
            zacContext,
          ),
          arguments: obj.arguments,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value
                .build(zacContext)
                .execute(const ZacActionPayload(), zacContext);
          }
        });
      },
      pop: (obj) {
        final state = _getState(zacContext);
        if (null == state) return;
        state.pop(obj.actions);
      },
      maybePop: (obj) {
        final state = _getState(zacContext);
        if (null == state) return;
        state.maybePop(obj.actions);
      },
      pushReplacement: (obj) {
        final state = _getState(zacContext);
        if (null == state) return;
        state
            .pushReplacement(
          obj.route.build(zacContext),
          result: obj.result,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value
                .build(zacContext)
                .execute(const ZacActionPayload(), zacContext);
          }
        });
      },
      pushReplacementNamed: (obj) {
        final state = _getState(zacContext);
        if (null == state) return;
        state
            .pushReplacementNamed(
          obj.routeName.build(
            zacContext,
          ),
          arguments: obj.arguments,
          result: obj.result,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value
                .build(zacContext)
                .execute(const ZacActionPayload(), zacContext);
          }
        });
      },
      popUntilRouteName: (obj) {
        final state = _getState(zacContext);
        if (null == state) return;

        /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
        state.popUntil(ModalRoute.withName(obj.routeName.build(
          zacContext,
        )));
      },
    );
  }
}

@freezedZacBuilder
class FlutterRouteFactory with _$FlutterRouteFactory, ZacBuilder<RouteFactory> {
  const FlutterRouteFactory._();

  factory FlutterRouteFactory.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteFactoryFromJson(json);

  @FreezedUnionValue('f:1:RouteFactory')
  factory FlutterRouteFactory({
    required Map<String, ZacBuilder<Route<Object?>>> routes,

    /// Key of the map equals the route name. Value of the map equals the
    /// [SharedValue] family.
    required Map<String, String>? familyNameOfArguments,
  }) = _FlutterRouteFactory;

  RouteFactory _build(ZacContext zacContext) {
    return (settings) {
      final route = routes[settings.name];
      assert(null != route,
          '$FlutterRouteFactory cannot handle a route without a name');

      if (route is RouteWithArgs) {
        return (route as RouteWithArgs).buildWithArgs(
          zacContext,
          argName: familyNameOfArguments?[settings.name] ??
              nameOfSharedArgumentsInRoute,
          args: settings.arguments,
        );
      } else {
        return route!.build(zacContext);
      }
    };
  }

  @override
  RouteFactory build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterRouteSettings
    with _$FlutterRouteSettings, ZacBuilder<RouteSettings> {
  const FlutterRouteSettings._();

  factory FlutterRouteSettings.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteSettingsFromJson(json);

  @FreezedUnionValue('f:1:RouteSettings')
  factory FlutterRouteSettings({
    ZacBuilder<String?>? name,
    ZacBuilder<Object?>? arguments,
  }) = _FlutterRouteSettings;

  RouteSettings _build(ZacContext zacContext) {
    return RouteSettings(
      arguments: arguments?.build(zacContext),
      name: name?.build(zacContext),
    );
  }

  @override
  RouteSettings build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
