import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigator.freezed.dart';
part 'navigator.g.dart';

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterRoute with ZacBuilder<Route<Object?>> {
  static const String nameOfSharedArguments = 'Route.arguments';

  factory FlutterRoute.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterRoute>(data);
  }

  Route<Object?> buildWithArgs(
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    ZacBuilderConsume onConsume = const ZacBuilderConsume(),
  });
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterMaterialPageRoute
    with _$FlutterMaterialPageRoute
    implements FlutterRoute {
  const FlutterMaterialPageRoute._();

  factory FlutterMaterialPageRoute.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialPageRouteFromJson(json);

  @FreezedUnionValue('f:1:MaterialPageRoute')
  factory FlutterMaterialPageRoute({
    FlutterRouteSettings? settings,
    ZacValue<bool?>? maintainState,
    ZacValue<bool?>? fullscreenDialog,

    /// Used instead of WidgetBuilder builder
    required FlutterWidget child,

    /// [FlutterRouteSettings] arguments are shared using this name or as a
    /// fallback using [FlutterRoute.nameOfSharedArguments]
    ZacValue<String?>? nameOfSharedArguments,
  }) = _FlutterMaterialPageRoute;

  MaterialPageRoute<Object?> _build(
    ZacContext zacContext,
    ZacBuilderConsume onConsume, {
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
      settings: settings?.build(zacContext, onConsume: onConsume),
      fullscreenDialog:
          fullscreenDialog?.build(zacContext, onConsume: onConsume) ?? false,
      maintainState:
          maintainState?.build(zacContext, onConsume: onConsume) ?? true,
    );
  }

  @override
  MaterialPageRoute<Object?> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(
      zacContext,
      onConsume,
      familyName: nameOfSharedArguments?.build(zacContext) ??
          FlutterRoute.nameOfSharedArguments,
      arguments: settings?.arguments,
    );
  }

  @override
  MaterialPageRoute<Object?>? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(
      zacContext,
      onConsume,
      familyName: nameOfSharedArguments?.build(zacContext) ??
          FlutterRoute.nameOfSharedArguments,
      arguments: settings?.arguments,
    );
  }

  @override
  MaterialPageRoute<Object?> buildWithArgs(
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    ZacBuilderConsume onConsume = const ZacBuilderConsume(),
  }) {
    return _build(
      zacContext,
      onConsume,
      familyName: argName ?? FlutterRoute.nameOfSharedArguments,
      arguments: args,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterPageRouteBuilder
    with _$FlutterPageRouteBuilder
    implements FlutterRoute {
  const FlutterPageRouteBuilder._();

  factory FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterPageRouteBuilderFromJson(json);

  @FreezedUnionValue('f:1:PageRouteBuilder')
  factory FlutterPageRouteBuilder({
    FlutterRouteSettings? settings,
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
    ZacValue<bool?>? opaque,
    ZacValue<bool?>? barrierDismissible,
    FlutterColor? barrierColor,
    ZacValue<String?>? barrierLabel,
    ZacValue<bool?>? maintainState,
    ZacValue<bool?>? fullscreenDialog,

    /// Used instead of WidgetBuilder builder
    required FlutterWidget child,

    /// [FlutterRouteSettings] arguments are shared using this name or as a
    /// fallback using [FlutterRoute.nameOfSharedArguments]
    ZacValue<String?>? nameOfSharedArguments,
  }) = _FlutterPageRouteBuilder;

  PageRouteBuilder<Object?> _build(
    ZacContext zacContext,
    ZacBuilderConsume onConsume, {
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
  PageRouteBuilder<Object?> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(
      zacContext,
      onConsume,
      familyName: nameOfSharedArguments?.build(zacContext) ??
          FlutterRoute.nameOfSharedArguments,
      arguments: settings?.arguments,
    );
  }

  @override
  PageRouteBuilder<Object?>? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(
      zacContext,
      onConsume,
      familyName: nameOfSharedArguments?.build(zacContext) ??
          FlutterRoute.nameOfSharedArguments,
      arguments: settings?.arguments,
    );
  }

  @override
  PageRouteBuilder<Object?> buildWithArgs(
    ZacContext zacContext, {
    required Object? args,
    required String? argName,
    ZacBuilderConsume onConsume = const ZacBuilderConsume(),
  }) {
    return _build(
      zacContext,
      onConsume,
      familyName: argName ?? FlutterRoute.nameOfSharedArguments,
      arguments: args,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterNavigator with _$FlutterNavigator implements FlutterWidget {
  const FlutterNavigator._();

  factory FlutterNavigator.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorFromJson(json);

  @FreezedUnionValue('f:1:Navigator')
  factory FlutterNavigator({
    FlutterKey? key,
    FlutterRouteFactory? onGenerateRoute,
    FlutterRouteFactory? onUnknownRoute,
    ZacValue<String?>? initialRoute,
    ZacValue<bool?>? requestFocus,
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
  Navigator build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Navigator? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterNavigatorActions
    with _$FlutterNavigatorActions
    implements ZacAction {
  const FlutterNavigatorActions._();

  factory FlutterNavigatorActions.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorActionsFromJson(json);

  @FreezedUnionValue('f:1:Navigator.push')
  factory FlutterNavigatorActions.push(
      {required FlutterRoute route,
      FlutterNavigatorState? navigatorState}) = _FlutterNavigatorActionsPush;

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
    required FlutterRoute route,
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
        state.push(obj.route.build(zacContext)).then((value) {
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
          obj.routeName.build(
            zacContext,
            onConsume: const ZacBuilderConsume(
              type: SharedValueConsumeType.read(),
            ),
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
          obj.route.build(zacContext),
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
          obj.routeName.build(
            zacContext,
            onConsume: const ZacBuilderConsume(
              type: SharedValueConsumeType.read(),
            ),
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
        state.popUntil(ModalRoute.withName(obj.routeName.build(
          zacContext,
          onConsume: const ZacBuilderConsume(
            type: SharedValueConsumeType.read(),
          ),
        )));
      },
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterRouteFactory with _$FlutterRouteFactory, ZacBuilder<RouteFactory> {
  const FlutterRouteFactory._();

  factory FlutterRouteFactory.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteFactoryFromJson(json);

  @FreezedUnionValue('f:1:RouteFactory')
  factory FlutterRouteFactory({
    required Map<String, FlutterRoute> routes,

    /// Key of the map equals the route name. Value of the map equals the
    /// [SharedValue] family.
    required Map<String, String>? familyNameOfArguments,
  }) = _FlutterRouteFactory;

  RouteFactory _build(ZacContext zacContext,
      {required ZacBuilderConsume onConsume}) {
    return (settings) {
      final route = routes[settings.name]?.buildWithArgs(
        zacContext,
        argName: familyNameOfArguments?[settings.name] ??
            FlutterRoute.nameOfSharedArguments,
        args: settings.arguments,
        onConsume: onConsume,
      );

      assert(null != route,
          '$FlutterRouteFactory cannot handle a route without a name');

      return route;
    };
  }

  @override
  RouteFactory build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext, onConsume: onConsume);
  }

  @override
  RouteFactory? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext, onConsume: onConsume);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterRouteSettings
    with _$FlutterRouteSettings, ZacBuilder<RouteSettings> {
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
      arguments: arguments?.build(zacContext),
      name: name?.build(zacContext),
    );
  }

  @override
  RouteSettings build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  RouteSettings? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}
