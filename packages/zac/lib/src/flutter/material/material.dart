import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'material.freezed.dart';
part 'material.g.dart';

abstract class FlutterInputBorder implements FlutterShapeBorder {
  factory FlutterInputBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterInputBorder>(data);
  }

  @override
  InputBorder build(
      BuildContext context, WidgetRef ref, ZacActionHelper helper);
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
  OutlineInputBorder build(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return OutlineInputBorder(
      borderSide: borderSide?.build(context, ref, helper) ?? const BorderSide(),
      borderRadius: borderRadius?.build(context, ref, helper) ??
          const BorderRadius.all(Radius.circular(4.0)),
      gapPadding: gapPadding?.getValue(ZacRef.widget(ref)) ?? 4.0,
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
  UnderlineInputBorder build(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return UnderlineInputBorder(
      borderSide: borderSide?.build(context, ref, helper) ?? const BorderSide(),
      borderRadius: borderRadius?.build(context, ref, helper) ??
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
    required ZacWidget child,
    FlutterRouteSettings? settings,
    ZacBool? maintainState,
    ZacBool? fullscreenDialog,
  }) = _FlutterMaterialPageRoute;

  @override
  MaterialPageRoute<ZacUiActions?> build(
      BuildContext context, WidgetRef ref, ZacActionHelper helper,
      {Widget Function(BuildContext context, WidgetRef ref,
              ZacActionHelper helper, ZacWidget zacWidget)?
          wrap}) {
    final zacRef = ZacRef.widget(ref);
    return MaterialPageRoute<ZacUiActions?>(
      builder: (_) => ZacUpdateContext(
        builder: (context, ref, helper) {
          if (null == wrap) {
            return child.buildWidget(context, ref, helper);
          }
          return wrap(context, ref, helper, child);
        },
      ),
      maintainState: maintainState?.getValue(zacRef) ?? true,
      fullscreenDialog: fullscreenDialog?.getValue(zacRef) ?? false,
      settings: settings?.build(context, ref, helper),
    );
  }
}
