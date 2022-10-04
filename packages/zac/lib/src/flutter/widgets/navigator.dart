import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'navigator.freezed.dart';
part 'navigator.g.dart';

abstract class FlutterRoute {
  factory FlutterRoute.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterRoute>(data);
  }

  Route<ZacInteractions?> build(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime,
      {Widget Function(BuildContext context, WidgetRef ref,
              ZacInteractionLifetime lifetime, FlutterWidget zacWidget)?
          wrap});
}

abstract class GetFlutterNavigatorState {
  factory GetFlutterNavigatorState.fromJson(Object data) {
    return ConverterHelper.convertToType<GetFlutterNavigatorState>(data);
  }

  NavigatorState getNavigatorState(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime);
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
  NavigatorState getNavigatorState(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return map(
      closest: (_) => Navigator.of(context, rootNavigator: false),
      root: (_) => Navigator.of(context, rootNavigator: true),
    );
  }
}

@defaultConverterFreezed
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
    ZacString? initialRoute,
    ZacBool? requestFocus,
  }) = _FlutterNavigator;

  @override
  Navigator buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      (obj) => Navigator(
        key: obj.key?.buildKey(context, ref, lifetime),
        onGenerateRoute:
            obj.onGenerateRoute?.buildRouteFactory(context, ref, lifetime),
        onUnknownRoute:
            obj.onUnknownRoute?.buildRouteFactory(context, ref, lifetime),
        initialRoute: obj.initialRoute?.getValue(zacRef),
        requestFocus: obj.requestFocus?.getValue(zacRef) ?? true,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterNavigatorActions
    with _$FlutterNavigatorActions
    implements ZacInteraction {
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
    ZacInteractions? interactions,
    GetFlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPop;

  @FreezedUnionValue(FlutterNavigatorActions.unionValueMaybePop)
  factory FlutterNavigatorActions.maybePop({
    ZacInteractions? interactions,
    GetFlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsMaybePop;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushReplacement)
  factory FlutterNavigatorActions.pushReplacement({
    required FlutterRoute route,
    ZacInteractions? result,
    GetFlutterNavigatorState? navigatorState,
  }) = _FlutterNavigatorActionsPushReplacement;

  @FreezedUnionValue(FlutterNavigatorActions.unionValuePushReplacementNamed)
  factory FlutterNavigatorActions.pushReplacementNamed({
    required ZacString routeName,
    Object? arguments,
    GetFlutterNavigatorState? navigatorState,
    ZacInteractions? result,
  }) = _FlutterNavigatorActionsPushReplacementNamed;

  NavigatorState? _getState(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return map(
          push: (obj) =>
              obj.navigatorState?.getNavigatorState(context, ref, lifetime),
          pushNamed: (obj) =>
              obj.navigatorState?.getNavigatorState(context, ref, lifetime),
          pop: (obj) =>
              obj.navigatorState?.getNavigatorState(context, ref, lifetime),
          maybePop: (obj) =>
              obj.navigatorState?.getNavigatorState(context, ref, lifetime),
          pushReplacement: (obj) =>
              obj.navigatorState?.getNavigatorState(context, ref, lifetime),
          pushReplacementNamed: (obj) =>
              obj.navigatorState?.getNavigatorState(context, ref, lifetime),
        ) ??
        Navigator.maybeOf(context);
  }

  @override
  void execute(BuildContext context, WidgetRef ref,
      ZacInteractionLifetime lifetime, ContextBag bag) {
    final zacRef = ZacRef.widget(ref);
    map(
      push: (obj) {
        final state = _getState(context, ref, lifetime);
        if (null == state) return null;
        state.push(obj.route.build(context, ref, lifetime)).then((value) {
          if (value is ZacInteractions) {
            value.execute(
              context,
              ref,
              lifetime,
              prefillBag: (bag) => bag..addEntries(bag.entries),
            );
          }
        });
      },
      pushNamed: (obj) {
        final state = _getState(context, ref, lifetime);
        if (null == state) return null;
        state
            .pushNamed(
          obj.routeName.getValue(zacRef),
          arguments: obj.arguments,
        )
            .then((value) {
          if (value is ZacInteractions) {
            value.execute(
              context,
              ref,
              lifetime,
              prefillBag: (bag) => bag..addEntries(bag.entries),
            );
          }
        });
      },
      pop: (obj) {
        final state = _getState(context, ref, lifetime);
        if (null == state) return;
        state.pop(obj.interactions);
      },
      maybePop: (obj) {
        final state = _getState(context, ref, lifetime);
        if (null == state) return;
        state.maybePop(obj.interactions);
      },
      pushReplacement: (obj) {
        final state = _getState(context, ref, lifetime);
        if (null == state) return;
        state
            .pushReplacement(
          obj.route.build(context, ref, lifetime),
          result: obj.result,
        )
            .then((value) {
          if (value is ZacInteractions) {
            value.execute(
              context,
              ref,
              lifetime,
              prefillBag: (bag) => bag..addEntries(bag.entries),
            );
          }
        });
      },
      pushReplacementNamed: (obj) {
        final state = _getState(context, ref, lifetime);
        if (null == state) return;
        state
            .pushReplacementNamed(
          obj.routeName.getValue(zacRef),
          arguments: obj.arguments,
          result: obj.result,
        )
            .then((value) {
          if (value is ZacInteractions) {
            value.execute(
              context,
              ref,
              lifetime,
              prefillBag: (bag) => bag..addEntries(bag.entries),
            );
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

  RouteFactory buildRouteFactory(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime);
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
    required FlutterWidget child,
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
  PageRouteBuilder<ZacInteractions?> build(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime,
      {Widget Function(BuildContext context, WidgetRef ref,
              ZacInteractionLifetime lifetime, FlutterWidget zacWidget)?
          wrap}) {
    final zacRef = ZacRef.widget(ref);
    return PageRouteBuilder<ZacInteractions?>(
      pageBuilder: (_, __, ___) => ZacUpdateWidget(
        builder: (context, ref, lifetime) {
          if (null == wrap) {
            return child.buildWidget(context, ref, lifetime);
          }
          return wrap(context, ref, lifetime, child);
        },
      ),
      settings: settings?.build(context, ref, lifetime),
      opaque: opaque?.getValue(zacRef) ?? true,
      barrierDismissible: barrierDismissible?.getValue(zacRef) ?? false,
      barrierColor: barrierColor?.build(context, ref, lifetime),
      barrierLabel: barrierLabel?.getValue(zacRef),
      maintainState: maintainState?.getValue(zacRef) ?? true,
      fullscreenDialog: fullscreenDialog?.getValue(zacRef) ?? false,
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

  RouteSettings build(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return RouteSettings(
      arguments: arguments,
      name: name?.getValue(zacRef),
    );
  }
}
