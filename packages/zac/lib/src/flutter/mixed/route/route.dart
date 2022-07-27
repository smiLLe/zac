import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route.freezed.dart';
part 'route.g.dart';

abstract class FlutterRoute {
  factory FlutterRoute.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterRoute>(data);
  }

  Route<AnyActions?> build(ZacBuildContext context,
      {Widget Function(ZacBuildContext context, ZacWidget anyWidget)? wrap});
}

@defaultConverterFreezed
class FlutterMaterialPageRoute
    with _$FlutterMaterialPageRoute
    implements FlutterRoute {
  const FlutterMaterialPageRoute._();

  static const String unionValue = 'f:1:MaterialPageRoute';

  factory FlutterMaterialPageRoute.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialPageRouteFromJson(json);

  @FreezedUnionValue(FlutterMaterialPageRoute.unionValue)
  factory FlutterMaterialPageRoute({
    required ZacWidget child,
    FlutterRouteSettings? settings,
    ZacBool? maintainState,
    ZacBool? fullscreenDialog,
  }) = _FlutterMaterialPageRoute;

  @override
  MaterialPageRoute<AnyActions?> build(ZacBuildContext context,
      {Widget Function(ZacBuildContext context, ZacWidget anyWidget)? wrap}) {
    return MaterialPageRoute<AnyActions?>(
      builder: (_) => UpdateContextBuilder(
        builder: (context) {
          if (null == wrap) return child.buildWidget(context);
          return wrap(context, child);
        },
      ),
      maintainState: maintainState?.getValue(context) ?? true,
      fullscreenDialog: fullscreenDialog?.getValue(context) ?? false,
      settings: settings?.build(context),
    );
  }
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
  PageRouteBuilder<AnyActions?> build(ZacBuildContext context,
      {Widget Function(ZacBuildContext context, ZacWidget anyWidget)? wrap}) {
    return PageRouteBuilder<AnyActions?>(
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
