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
    BuildContext context,
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
    BuildContext context,
    ZacContext zacContext, {
    required String familyName,
    required Object? arguments,
  }) {
    return MaterialPageRoute<Object?>(
      builder: (_) => SharedValueProvider(
        childBuilder: child.build,
        valueBuilder: (_, __, ___) => arguments,
        family: familyName,
        autoCreate: true,
      ),
      settings: settings?.build(context, zacContext),
      fullscreenDialog: fullscreenDialog?.build(context, zacContext) ?? false,
      maintainState: maintainState?.build(context, zacContext) ?? true,
    );
  }

  @override
  MaterialPageRoute<Object?> build(
      BuildContext context, ZacContext zacContext) {
    return _build(
      context,
      zacContext,
      familyName: nameOfSharedArguments?.build(context, zacContext) ??
          nameOfSharedArgumentsInRoute,
      arguments: settings?.build(context, zacContext)?.arguments,
    );
  }

  @override
  MaterialPageRoute<Object?> buildWithArgs(
    BuildContext context,
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    SharedValueConsumeType onConsume = const SharedValueConsumeType.watch(),
  }) {
    return _build(
      context,
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
    BuildContext context,
    ZacContext zacContext, {
    required String familyName,
    required Object? arguments,
  }) {
    return PageRouteBuilder<ZacBuilder<List<ZacAction>?>?>(
      pageBuilder: (_, __, ___) => SharedValueProvider(
        childBuilder: child.build,
        valueBuilder: (_, __, ___) => arguments,
        family: familyName,
        autoCreate: true,
      ),
      settings: settings?.build(context, zacContext),
      opaque: opaque?.build(context, zacContext) ?? true,
      barrierDismissible:
          barrierDismissible?.build(context, zacContext) ?? false,
      barrierColor: barrierColor?.build(context, zacContext),
      barrierLabel: barrierLabel?.build(context, zacContext),
      maintainState: maintainState?.build(context, zacContext) ?? true,
      fullscreenDialog: fullscreenDialog?.build(context, zacContext) ?? false,
    );
  }

  @override
  PageRouteBuilder<Object?> build(BuildContext context, ZacContext zacContext) {
    return _build(
      context,
      zacContext,
      familyName: nameOfSharedArguments?.build(context, zacContext) ??
          nameOfSharedArgumentsInRoute,
      arguments: settings?.build(context, zacContext)?.arguments,
    );
  }

  @override
  PageRouteBuilder<Object?> buildWithArgs(
    BuildContext context,
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    SharedValueConsumeType onConsume = const SharedValueConsumeType.watch(),
  }) {
    return _build(
      context,
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
  NavigatorState build(BuildContext context, ZacContext zacContext) {
    return map(
      closest: (_) => Navigator.of(zacContext.context, rootNavigator: false),
      root: (_) => Navigator.of(zacContext.context, rootNavigator: true),
      shared: (obj) {
        final key = obj.value.build(context, zacContext);
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

  Navigator _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      (obj) => Navigator(
        key: obj.key?.build(context, zacContext),
        onGenerateRoute: obj.onGenerateRoute?.build(context, zacContext),
        onUnknownRoute: obj.onUnknownRoute?.build(context, zacContext),
        initialRoute: obj.initialRoute?.build(context, zacContext),
        requestFocus: obj.requestFocus?.build(context, zacContext) ?? true,
      ),
    );
  }

  @override
  Navigator build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
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
    ZacBuilder<List<ZacAction>?>? actions,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPop;

  @FreezedUnionValue('f:1:Navigator.maybePop')
  factory FlutterNavigatorActions.maybePop({
    ZacBuilder<List<ZacAction>?>? actions,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsMaybePop;

  @FreezedUnionValue('f:1:Navigator.pushReplacement')
  factory FlutterNavigatorActions.pushReplacement({
    required ZacBuilder<Route<Object?>> route,
    ZacBuilder<List<ZacAction>?>? result,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPushReplacement;

  @FreezedUnionValue('f:1:Navigator.pushReplacementNamed')
  factory FlutterNavigatorActions.pushReplacementNamed({
    required ZacBuilder<String> routeName,
    Object? arguments,
    ZacBuilder<NavigatorState?>? navigatorState,
    ZacBuilder<List<ZacAction>?>? result,
  }) = _FlutterNavigatorActionsPushReplacementNamed;

  @FreezedUnionValue('z:1:Navigator.popUntilRouteName')
  factory FlutterNavigatorActions.popUntilRouteName({
    required ZacBuilder<String> routeName,
    ZacBuilder<NavigatorState?>? navigatorState,
  }) = _FlutterNavigatorActionsPopUntilRouteName;

  NavigatorState? _getState(BuildContext context, ZacContext zacContext) {
    return map(
          push: (obj) => obj.navigatorState?.build(context, zacContext),
          pushNamed: (obj) => obj.navigatorState?.build(context, zacContext),
          pop: (obj) => obj.navigatorState?.build(context, zacContext),
          maybePop: (obj) => obj.navigatorState?.build(context, zacContext),
          pushReplacement: (obj) =>
              obj.navigatorState?.build(context, zacContext),
          pushReplacementNamed: (obj) =>
              obj.navigatorState?.build(context, zacContext),
          popUntilRouteName: (obj) =>
              obj.navigatorState?.build(context, zacContext),
        ) ??
        Navigator.maybeOf(zacContext.context);
  }

  @override
  void execute(
      ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      push: (obj) {
        final state = _getState(context, zacContext);
        if (null == state) return null;
        state.push(obj.route.build(context, zacContext)).then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value.build(context, zacContext).execute(
                  const ZacActionPayload(),
                  context,
                  zacContext,
                );
          }
        });
      },
      pushNamed: (obj) {
        final state = _getState(context, zacContext);
        if (null == state) return null;
        state
            .pushNamed(
          obj.routeName.build(context, zacContext),
          arguments: obj.arguments,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value
                .build(context, zacContext)
                .execute(const ZacActionPayload(), context, zacContext);
          }
        });
      },
      pop: (obj) {
        final state = _getState(context, zacContext);
        if (null == state) return;
        state.pop(obj.actions);
      },
      maybePop: (obj) {
        final state = _getState(context, zacContext);
        if (null == state) return;
        state.maybePop(obj.actions);
      },
      pushReplacement: (obj) {
        final state = _getState(context, zacContext);
        if (null == state) return;
        state
            .pushReplacement(
          obj.route.build(context, zacContext),
          result: obj.result,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value
                .build(context, zacContext)
                .execute(const ZacActionPayload(), context, zacContext);
          }
        });
      },
      pushReplacementNamed: (obj) {
        final state = _getState(context, zacContext);
        if (null == state) return;
        state
            .pushReplacementNamed(
          obj.routeName.build(context, zacContext),
          arguments: obj.arguments,
          result: obj.result,
        )
            .then((value) {
          if (!zacContext.isMounted()) return;
          if (value is ZacActions) {
            value
                .build(context, zacContext)
                .execute(const ZacActionPayload(), context, zacContext);
          }
        });
      },
      popUntilRouteName: (obj) {
        final state = _getState(context, zacContext);
        if (null == state) return;

        /// @see https://api.flutter.dev/flutter/widgets/Navigator/popUntil.html
        state.popUntil(ModalRoute.withName(obj.routeName.build(
          context,
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

  RouteFactory _build(BuildContext context, ZacContext zacContext) {
    return (settings) {
      final route = routes[settings.name];
      assert(null != route,
          '$FlutterRouteFactory cannot handle a route without a name');

      if (route is RouteWithArgs) {
        return (route as RouteWithArgs).buildWithArgs(
          context,
          zacContext,
          argName: familyNameOfArguments?[settings.name] ??
              nameOfSharedArgumentsInRoute,
          args: settings.arguments,
        );
      } else {
        return route!.build(context, zacContext);
      }
    };
  }

  @override
  RouteFactory build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
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

  RouteSettings _build(BuildContext context, ZacContext zacContext) {
    return RouteSettings(
      arguments: arguments?.build(context, zacContext),
      name: name?.build(context, zacContext),
    );
  }

  @override
  RouteSettings build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
