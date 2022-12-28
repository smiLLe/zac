import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
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
    implements ZacBuild<Route<Object?>>, RouteWithArgs {
  const FlutterMaterialPageRoute._();

  factory FlutterMaterialPageRoute.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialPageRouteFromJson(json);

  @FreezedUnionValue('f:1:MaterialPageRoute')
  factory FlutterMaterialPageRoute({
    ZacValue<RouteSettings?>? settings,
    ZacValue<bool?>? maintainState,
    ZacValue<bool?>? fullscreenDialog,

    /// Used instead of WidgetBuilder builder
    required ZacValue<Widget> child,

    /// [FlutterRouteSettings] arguments are shared using this name or as a
    /// fallback using [nameOfSharedArgumentsInRoute]
    ZacValue<String?>? nameOfSharedArguments,
  }) = _FlutterMaterialPageRoute;

  MaterialPageRoute<Object?> _build(
    ZacContext zacContext, {
    required String familyName,
    required Object? arguments,
  }) {
    return MaterialPageRoute<Object?>(
      builder: (_) => SharedValueProvider(
        childBuilder: child.getValue,
        valueBuilder: (_, __) => arguments,
        family: familyName,
        autoCreate: true,
      ),
      settings: settings?.getValue(zacContext),
      fullscreenDialog: fullscreenDialog?.getValue(zacContext) ?? false,
      maintainState: maintainState?.getValue(zacContext) ?? true,
    );
  }

  @override
  MaterialPageRoute<Object?> build(ZacContext zacContext) {
    return _build(
      zacContext,
      familyName: nameOfSharedArguments?.getValue(zacContext) ??
          nameOfSharedArgumentsInRoute,
      arguments: settings?.getValue(zacContext)?.arguments,
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
    implements ZacBuild<Route<Object?>>, RouteWithArgs {
  const FlutterPageRouteBuilder._();

  factory FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterPageRouteBuilderFromJson(json);

  @FreezedUnionValue('f:1:PageRouteBuilder')
  factory FlutterPageRouteBuilder({
    ZacValue<RouteSettings?>? settings,
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
    ZacValue<bool?>? opaque,
    ZacValue<bool?>? barrierDismissible,
    ZacValue<Color?>? barrierColor,
    ZacValue<String?>? barrierLabel,
    ZacValue<bool?>? maintainState,
    ZacValue<bool?>? fullscreenDialog,

    /// Used instead of WidgetBuilder builder
    required ZacValue<Widget> child,

    /// [FlutterRouteSettings] arguments are shared using this name or as a
    /// fallback using [nameOfSharedArgumentsInRoute]
    ZacValue<String?>? nameOfSharedArguments,
  }) = _FlutterPageRouteBuilder;

  PageRouteBuilder<Object?> _build(
    ZacContext zacContext, {
    required String familyName,
    required Object? arguments,
  }) {
    return PageRouteBuilder<ZacActions?>(
      pageBuilder: (_, __, ___) => SharedValueProvider(
        childBuilder: child.getValue,
        valueBuilder: (ref, zacContext) => arguments,
        family: familyName,
        autoCreate: true,
      ),
      settings: settings?.getValue(zacContext),
      opaque: opaque?.getValue(zacContext) ?? true,
      barrierDismissible: barrierDismissible?.getValue(zacContext) ?? false,
      barrierColor: barrierColor?.getValue(zacContext),
      barrierLabel: barrierLabel?.getValue(zacContext),
      maintainState: maintainState?.getValue(zacContext) ?? true,
      fullscreenDialog: fullscreenDialog?.getValue(zacContext) ?? false,
    );
  }

  @override
  PageRouteBuilder<Object?> build(ZacContext zacContext) {
    return _build(
      zacContext,
      familyName: nameOfSharedArguments?.getValue(zacContext) ??
          nameOfSharedArgumentsInRoute,
      arguments: settings?.getValue(zacContext)?.arguments,
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
class FlutterNavigatorState with _$FlutterNavigatorState {
  const FlutterNavigatorState._();

  factory FlutterNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorStateFromJson(json);

  @FreezedUnionValue('f:1:NavigatorState.closest')
  factory FlutterNavigatorState.closest() = _ZacNavigatorStateClosest;

  @FreezedUnionValue('f:1:NavigatorState.root')
  factory FlutterNavigatorState.root() = _ZacNavigatorStateRoot;

  @FreezedUnionValue('z:1:NavigatorState.shared')
  factory FlutterNavigatorState.shared({
    required ZacValue<GlobalKey<NavigatorState>> value,
  }) = _ZacNavigatorStateSharedValue;

  NavigatorState getNavigatorState(ZacContext zacContext) {
    return map(
      closest: (_) => Navigator.of(zacContext.context, rootNavigator: false),
      root: (_) => Navigator.of(zacContext.context, rootNavigator: true),
      shared: (obj) {
        final key = obj.value.getValue(zacContext);
        if (null != key.currentState) {
          return key.currentState!;
        }
        throw StateError('');
      },
    );
  }
}

@freezedZacBuilder
class FlutterNavigator with _$FlutterNavigator implements ZacBuild<Navigator> {
  const FlutterNavigator._();

  factory FlutterNavigator.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorFromJson(json);

  @FreezedUnionValue('f:1:Navigator')
  factory FlutterNavigator({
    ZacValue<Key?>? key,
    FlutterRouteFactory? onGenerateRoute,
    FlutterRouteFactory? onUnknownRoute,
    ZacValue<String?>? initialRoute,
    ZacValue<bool?>? requestFocus,
  }) = _FlutterNavigator;

  Navigator _buildWidget(ZacContext zacContext) {
    return map(
      (obj) => Navigator(
        key: obj.key?.getValue(zacContext),
        onGenerateRoute: obj.onGenerateRoute?.build(zacContext),
        onUnknownRoute: obj.onUnknownRoute?.build(zacContext),
        initialRoute: obj.initialRoute?.getValue(zacContext),
        requestFocus: obj.requestFocus?.getValue(zacContext) ?? true,
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
    required ZacValue<Route<Object?>> route,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPush;

  @FreezedUnionValue('f:1:Navigator.pushNamed')
  factory FlutterNavigatorActions.pushNamed(
          {required ZacValue<String> routeName,
          Object? arguments,
          FlutterNavigatorState? navigatorState}) =
      _FlutterNavigatorActionsPushNamed;

  @FreezedUnionValue('f:1:Navigator.pop')
  factory FlutterNavigatorActions.pop({
    ZacActions? actions,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPop;

  @FreezedUnionValue('f:1:Navigator.maybePop')
  factory FlutterNavigatorActions.maybePop({
    ZacActions? actions,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsMaybePop;

  @FreezedUnionValue('f:1:Navigator.pushReplacement')
  factory FlutterNavigatorActions.pushReplacement({
    required ZacValue<Route<Object?>> route,
    ZacActions? result,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPushReplacement;

  @FreezedUnionValue('f:1:Navigator.pushReplacementNamed')
  factory FlutterNavigatorActions.pushReplacementNamed({
    required ZacValue<String> routeName,
    Object? arguments,
    FlutterNavigatorState? navigatorState,
    ZacActions? result,
  }) = _FlutterNavigatorActionsPushReplacementNamed;

  @FreezedUnionValue('z:1:Navigator.popUntilRouteName')
  factory FlutterNavigatorActions.popUntilRouteName({
    required ZacValue<String> routeName,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPopUntilRouteName;

  NavigatorState? _getState(ZacContext zacContext) {
    return map(
          push: (obj) => obj.navigatorState?.getNavigatorState(zacContext),
          pushNamed: (obj) => obj.navigatorState?.getNavigatorState(zacContext),
          pop: (obj) => obj.navigatorState?.getNavigatorState(zacContext),
          maybePop: (obj) => obj.navigatorState?.getNavigatorState(zacContext),
          pushReplacement: (obj) =>
              obj.navigatorState?.getNavigatorState(zacContext),
          pushReplacementNamed: (obj) =>
              obj.navigatorState?.getNavigatorState(zacContext),
          popUntilRouteName: (obj) =>
              obj.navigatorState?.getNavigatorState(zacContext),
        ) ??
        Navigator.maybeOf(zacContext.context);
  }

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      push: (obj) {
        final state = _getState(zacContext);
        if (null == state) return null;
        state.push(obj.route.getValue(zacContext)).then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value.execute(
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
          obj.routeName.getValue(
            zacContext,
            onConsume: const SharedValueConsumeType.read(),
          ),
          arguments: obj.arguments,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value.execute(const ZacActionPayload(), zacContext);
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
          obj.route.getValue(zacContext),
          result: obj.result,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value.execute(const ZacActionPayload(), zacContext);
          }
        });
      },
      pushReplacementNamed: (obj) {
        final state = _getState(zacContext);
        if (null == state) return;
        state
            .pushReplacementNamed(
          obj.routeName.getValue(
            zacContext,
            onConsume: const SharedValueConsumeType.read(),
          ),
          arguments: obj.arguments,
          result: obj.result,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value.execute(const ZacActionPayload(), zacContext);
          }
        });
      },
      popUntilRouteName: (obj) {
        final state = _getState(zacContext);
        if (null == state) return;

        /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
        state.popUntil(ModalRoute.withName(obj.routeName.getValue(
          zacContext,
          onConsume: const SharedValueConsumeType.read(),
        )));
      },
    );
  }
}

@freezedZacBuilder
class FlutterRouteFactory with _$FlutterRouteFactory, ZacBuild<RouteFactory> {
  const FlutterRouteFactory._();

  factory FlutterRouteFactory.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteFactoryFromJson(json);

  @FreezedUnionValue('f:1:RouteFactory')
  factory FlutterRouteFactory({
    required Map<String, ZacBuild<Route<Object?>>> routes,

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
    with _$FlutterRouteSettings, ZacBuild<RouteSettings> {
  const FlutterRouteSettings._();

  factory FlutterRouteSettings.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteSettingsFromJson(json);

  @FreezedUnionValue('f:1:RouteSettings')
  factory FlutterRouteSettings({
    ZacValue<String?>? name,
    ZacValue<Object?>? arguments,
  }) = _FlutterRouteSettings;

  RouteSettings _build(ZacContext zacContext) {
    return RouteSettings(
      arguments: arguments?.getValue(zacContext),
      name: name?.getValue(zacContext),
    );
  }

  @override
  RouteSettings build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
