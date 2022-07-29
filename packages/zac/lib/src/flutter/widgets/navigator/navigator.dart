import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigator.freezed.dart';
part 'navigator.g.dart';

abstract class FlutterRoute {
  factory FlutterRoute.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterRoute>(data);
  }

  Route<ZacActions?> build(ZacBuildContext context,
      {Widget Function(ZacBuildContext context, ZacWidget zacWidget)? wrap});
}

abstract class GetFlutterNavigatorState {
  factory GetFlutterNavigatorState.fromJson(Object data) {
    return ConverterHelper.convertToType<GetFlutterNavigatorState>(data);
  }

  NavigatorState getNavigatorState(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterNavigatorState
    with _$FlutterNavigatorState
    implements GetFlutterNavigatorState {
  const FlutterNavigatorState._();
  static const String unionValueClosest = 'f:1:NavigatorState.closest';
  static const String unionValueRoot = 'f:1:NavigatorState.root';

  factory FlutterNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorStateFromJson(json);

  @FreezedUnionValue(FlutterNavigatorState.unionValueClosest)
  factory FlutterNavigatorState.closest() = _ZacNavigatorStateClosest;

  @FreezedUnionValue(FlutterNavigatorState.unionValueRoot)
  factory FlutterNavigatorState.root() = _ZacNavigatorStateRoot;

  @override
  NavigatorState getNavigatorState(ZacBuildContext context) {
    return map(
      closest: (_) => Navigator.of(context.context, rootNavigator: false),
      root: (_) => Navigator.of(context.context, rootNavigator: true),
    );
  }
}

@defaultConverterFreezed
class FlutterNavigator with _$FlutterNavigator implements ZacWidget {
  const FlutterNavigator._();

  static const String unionValue = 'f:1:Navigator';

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

  @override
  Navigator buildWidget(ZacBuildContext context) {
    return map(
      (obj) => Navigator(
        key: obj.key?.buildKey(context),
        onGenerateRoute: obj.onGenerateRoute?.buildRouteFactory(context),
        onUnknownRoute: obj.onUnknownRoute?.buildRouteFactory(context),
        initialRoute: obj.initialRoute?.getValue(context),
        requestFocus: obj.requestFocus?.getValue(context) ?? true,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterNavigatorActions
    with _$FlutterNavigatorActions
    implements ZacAction {
  const FlutterNavigatorActions._();

  static const String unionValuePush = 'f:1:Navigator.push';
  static const String unionValuePushNamed = 'f:1:Navigator.pushNamed';
  static const String unionValuePop = 'f:1:Navigator.pop';
  static const String unionValueMaybePop = 'f:1:Navigator.maybePop';
  static const String unionValuePushReplacement =
      'f:1:Navigator.pushReplacement';
  static const String unionValuePushReplacementNamed =
      'f:1:Navigator.pushReplacementNamed';

  factory FlutterNavigatorActions.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorActionsFromJson(json);

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePush)
  factory FlutterNavigatorActions.push(
      {required FlutterRoute route,
      GetFlutterNavigatorState? navigatorState}) = _FlutterNavigatorActionsPush;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushNamed)
  factory FlutterNavigatorActions.pushNamed(
          {required ZacString routeName,
          Object? arguments,
          GetFlutterNavigatorState? navigatorState}) =
      _FlutterNavigatorActionsPushNamed;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePop)
  factory FlutterNavigatorActions.pop({
    ZacActions? actions,
    GetFlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPop;

  @FreezedUnionValue(FlutterNavigatorActions.unionValueMaybePop)
  factory FlutterNavigatorActions.maybePop({
    ZacActions? actions,
    GetFlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsMaybePop;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushReplacement)
  factory FlutterNavigatorActions.pushReplacement({
    required FlutterRoute route,
    ZacActions? result,
    GetFlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPushReplacement;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushReplacementNamed)
  factory FlutterNavigatorActions.pushReplacementNamed({
    required ZacString routeName,
    Object? arguments,
    GetFlutterNavigatorState? navigatorState,
    ZacActions? result,
  }) = _FlutterNavigatorActionsPushReplacementNamed;

  NavigatorState? _getState(ZacBuildContext context) {
    return map(
          push: (obj) => obj.navigatorState?.getNavigatorState(context),
          pushNamed: (obj) => obj.navigatorState?.getNavigatorState(context),
          pop: (obj) => obj.navigatorState?.getNavigatorState(context),
          maybePop: (obj) => obj.navigatorState?.getNavigatorState(context),
          pushReplacement: (obj) =>
              obj.navigatorState?.getNavigatorState(context),
          pushReplacementNamed: (obj) =>
              obj.navigatorState?.getNavigatorState(context),
        ) ??
        Navigator.maybeOf(context.context);
  }

  @override
  void execute(ZacBuildContext context, ActionPayload payload) {
    map(
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
class FlutterPageRouteBuilder
    with _$FlutterPageRouteBuilder
    implements FlutterRoute {
  const FlutterPageRouteBuilder._();

  static const String unionValue = 'f:1:PageRouteBuilder';

  factory FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterPageRouteBuilderFromJson(json);

  @FreezedUnionValue(FlutterPageRouteBuilder.unionValue)
  factory FlutterPageRouteBuilder({
    required ZacWidget child,
    FlutterRouteSettings? settings,
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
    ZacBool? opaque,
    ZacBool? barrierDismissible,
    FlutterColor? barrierColor,
    ZacString? barrierLabel,
    ZacBool? maintainState,
    ZacBool? fullscreenDialog,
  }) = _FlutterPageRouteBuilder;

  @override
  PageRouteBuilder<ZacActions?> build(ZacBuildContext context,
      {Widget Function(ZacBuildContext context, ZacWidget zacWidget)? wrap}) {
    return PageRouteBuilder<ZacActions?>(
      pageBuilder: (_, __, ___) => UpdateContextBuilder(
        builder: (context) {
          if (null == wrap) return child.buildWidget(context);
          return wrap(context, child);
        },
      ),
      settings: settings?.build(context),
      opaque: opaque?.getValue(context) ?? true,
      barrierDismissible: barrierDismissible?.getValue(context) ?? false,
      barrierColor: barrierColor?.build(context),
      barrierLabel: barrierLabel?.getValue(context),
      maintainState: maintainState?.getValue(context) ?? true,
      fullscreenDialog: fullscreenDialog?.getValue(context) ?? false,
    );
  }
}

@defaultConverterFreezed
class FlutterRouteSettings with _$FlutterRouteSettings {
  const FlutterRouteSettings._();

  factory FlutterRouteSettings.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteSettingsFromJson(json);

  static const String unionValue = 'f:1:RouteSettings';

  @FreezedUnionValue(FlutterRouteSettings.unionValue)
  factory FlutterRouteSettings({
    ZacString? name,
    Object? arguments,
  }) = _FlutterRouteSettings;

  RouteSettings build(ZacBuildContext context) {
    return RouteSettings(
      arguments: arguments,
      name: name?.getValue(context),
    );
  }
}
