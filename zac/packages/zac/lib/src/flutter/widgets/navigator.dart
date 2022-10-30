import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';

import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigator.freezed.dart';
part 'navigator.g.dart';

@TsClass(order: tsOrderFlutterAbstractsA)
abstract class FlutterRoute {
  factory FlutterRoute.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterRoute>(data);
  }

  Route<ZacActions?> build(ZacContext zacContext,
      {Widget Function(ZacContext zacContext, FlutterWidget zacWidget)? wrap});
}

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterNavigatorState with _$FlutterNavigatorState {
  const FlutterNavigatorState._();
  static const String unionValueClosest = 'f:1:NavigatorState.closest';
  static const String unionValueRoot = 'f:1:NavigatorState.root';
  static const String unionValueShared = 'z:1:NavigatorState.shared';

  factory FlutterNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorStateFromJson(json);

  @FreezedUnionValue(FlutterNavigatorState.unionValueClosest)
  factory FlutterNavigatorState.closest() = _ZacNavigatorStateClosest;

  @FreezedUnionValue(FlutterNavigatorState.unionValueRoot)
  factory FlutterNavigatorState.root() = _ZacNavigatorStateRoot;

  @FreezedUnionValue(FlutterNavigatorState.unionValueRoot)
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

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterNavigator with _$FlutterNavigator implements FlutterWidget {
  const FlutterNavigator._();

  static const String unionValue = 'f:1:Navigator';

  factory FlutterNavigator.fromJson(Map<String, dynamic> json) =>
      _$FlutterNavigatorFromJson(json);

  @FreezedUnionValue(FlutterNavigator.unionValue)
  factory FlutterNavigator({
    FlutterKey? key,
    FlutterRouteFactory? onGenerateRoute,
    FlutterRouteFactory? onUnknownRoute,
    ZacValue<String>? initialRoute,
    ZacValue<bool>? requestFocus,
  }) = _FlutterNavigator;

  @override
  Navigator buildWidget(ZacContext zacContext) {
    return map(
      (obj) => Navigator(
        key: obj.key?.buildKey(zacContext),
        onGenerateRoute: obj.onGenerateRoute?.buildRouteFactory(zacContext),
        onUnknownRoute: obj.onUnknownRoute?.buildRouteFactory(zacContext),
        initialRoute: obj.initialRoute?.getValue(zacContext),
        requestFocus: obj.requestFocus?.getValue(zacContext) ?? true,
      ),
    );
  }
}

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
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
      FlutterNavigatorState? navigatorState}) = _FlutterNavigatorActionsPush;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushNamed)
  factory FlutterNavigatorActions.pushNamed(
          {required ZacValue<String> routeName,
          Object? arguments,
          FlutterNavigatorState? navigatorState}) =
      _FlutterNavigatorActionsPushNamed;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePop)
  factory FlutterNavigatorActions.pop({
    ZacActions? actions,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPop;

  @FreezedUnionValue(FlutterNavigatorActions.unionValueMaybePop)
  factory FlutterNavigatorActions.maybePop({
    ZacActions? actions,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsMaybePop;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushReplacement)
  factory FlutterNavigatorActions.pushReplacement({
    required FlutterRoute route,
    ZacActions? result,
    FlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPushReplacement;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushReplacementNamed)
  factory FlutterNavigatorActions.pushReplacementNamed({
    required ZacValue<String> routeName,
    Object? arguments,
    FlutterNavigatorState? navigatorState,
    ZacActions? result,
  }) = _FlutterNavigatorActionsPushReplacementNamed;

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
          obj.routeName.getValue(zacContext),
          arguments: obj.arguments,
        )
            .then((value) {
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
          obj.routeName.getValue(zacContext),
          arguments: obj.arguments,
          result: obj.result,
        )
            .then((value) {
          if (value is ZacActions) {
            value.execute(const ZacActionPayload(), zacContext);
          }
        });
      },
    );
  }
}

@TsClass(order: tsOrderFlutterAbstractsA)
abstract class FlutterRouteFactory {
  factory FlutterRouteFactory.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterRouteFactory>(data);
  }

  RouteFactory buildRouteFactory(ZacContext zacContext);
}

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterPageRouteBuilder
    with _$FlutterPageRouteBuilder
    implements FlutterRoute {
  const FlutterPageRouteBuilder._();

  static const String unionValue = 'f:1:PageRouteBuilder';

  factory FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterPageRouteBuilderFromJson(json);

  @FreezedUnionValue(FlutterPageRouteBuilder.unionValue)
  factory FlutterPageRouteBuilder({
    required FlutterWidget child,
    FlutterRouteSettings? settings,
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
    ZacValue<bool>? opaque,
    ZacValue<bool>? barrierDismissible,
    FlutterColor? barrierColor,
    ZacValue<String>? barrierLabel,
    ZacValue<bool>? maintainState,
    ZacValue<bool>? fullscreenDialog,
  }) = _FlutterPageRouteBuilder;

  @override
  PageRouteBuilder<ZacActions?> build(ZacContext zacContext,
      {Widget Function(ZacContext zacContext, FlutterWidget zacWidget)? wrap}) {
    return PageRouteBuilder<ZacActions?>(
      pageBuilder: (_, __, ___) => ZacUpdateContext(
        builder: (zacContext) {
          if (null == wrap) {
            return child.buildWidget(zacContext);
          }
          return wrap(zacContext, child);
        },
      ),
      settings: settings?.build(zacContext),
      opaque: opaque?.getValue(zacContext) ?? true,
      barrierDismissible: barrierDismissible?.getValue(zacContext) ?? false,
      barrierColor: barrierColor?.build(zacContext),
      barrierLabel: barrierLabel?.getValue(zacContext),
      maintainState: maintainState?.getValue(zacContext) ?? true,
      fullscreenDialog: fullscreenDialog?.getValue(zacContext) ?? false,
    );
  }
}

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterRouteSettings with _$FlutterRouteSettings {
  const FlutterRouteSettings._();

  factory FlutterRouteSettings.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteSettingsFromJson(json);

  static const String unionValue = 'f:1:RouteSettings';

  @FreezedUnionValue(FlutterRouteSettings.unionValue)
  factory FlutterRouteSettings({
    ZacValue<String>? name,
    Object? arguments,
  }) = _FlutterRouteSettings;

  RouteSettings build(ZacContext zacContext) {
    return RouteSettings(
      arguments: arguments,
      name: name?.getValue(zacContext),
    );
  }
}
