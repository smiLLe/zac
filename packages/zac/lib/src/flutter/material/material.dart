import 'package:flutter/material.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'material.freezed.dart';
part 'material.g.dart';

abstract class FlutterInputBorder implements FlutterShapeBorder {
  factory FlutterInputBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterInputBorder>(data);
  }

  @override
  InputBorder build(ZacOriginWidgetTree origin);
}

@defaultConverterFreezed
class FlutterOutlineInputBorder
    with _$FlutterOutlineInputBorder
    implements FlutterInputBorder {
  const FlutterOutlineInputBorder._();

  static const String unionValue = 'f:1:OutlineInputBorder';

  factory FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterOutlineInputBorder.unionValue)
  factory FlutterOutlineInputBorder({
    FlutterBorderSide? borderSide,
    FlutterBorderRadius? borderRadius,
    ZacDouble? gapPadding,
  }) = _FlutterOutlineInputBorder;

  @override
  OutlineInputBorder build(ZacOriginWidgetTree origin) {
    return OutlineInputBorder(
      borderSide: borderSide?.build(origin) ?? const BorderSide(),
      borderRadius: borderRadius?.build(origin) ??
          const BorderRadius.all(Radius.circular(4.0)),
      gapPadding: gapPadding?.getValue(origin) ?? 4.0,
    );
  }
}

@defaultConverterFreezed
class FlutterUnderlineInputBorder
    with _$FlutterUnderlineInputBorder
    implements FlutterInputBorder {
  const FlutterUnderlineInputBorder._();

  static const String unionValue = 'f:1:UnderlineInputBorder';

  factory FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnderlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterOutlineInputBorder.unionValue)
  factory FlutterUnderlineInputBorder({
    FlutterBorderSide? borderSide,
    FlutterBorderRadius? borderRadius,
  }) = _FlutterUnderlineInputBorder;

  @override
  UnderlineInputBorder build(ZacOriginWidgetTree origin) {
    return UnderlineInputBorder(
      borderSide: borderSide?.build(origin) ?? const BorderSide(),
      borderRadius: borderRadius?.build(origin) ??
          const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
    );
  }
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
    required FlutterWidget child,
    FlutterRouteSettings? settings,
    ZacBool? maintainState,
    ZacBool? fullscreenDialog,
  }) = _FlutterMaterialPageRoute;

  @override
  MaterialPageRoute<ZacActions?> build(ZacOriginWidgetTree origin,
      {Widget Function(ZacOriginWidgetTree origin, FlutterWidget zacWidget)?
          wrap}) {
    return MaterialPageRoute<ZacActions?>(
      builder: (_) => ZacUpdateWidget(
        builder: (origin) {
          if (null == wrap) {
            return child.buildWidget(origin);
          }
          return wrap(origin, child);
        },
      ),
      maintainState: maintainState?.getValue(origin) ?? true,
      fullscreenDialog: fullscreenDialog?.getValue(origin) ?? false,
      settings: settings?.build(origin),
    );
  }
}
