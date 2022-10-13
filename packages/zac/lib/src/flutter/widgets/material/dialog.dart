import 'dart:async';

import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/base.dart';

part 'dialog.freezed.dart';
part 'dialog.g.dart';

@defaultConverterFreezed
class FlutterDialogs with _$FlutterDialogs implements ZacAction, FlutterWidget {
  const FlutterDialogs._();

  static const String unionValueDialog = 'f:1:Dialog';
  static const String unionValueAlertDialog = 'f:1:AlertDialog';
  static const String unionValueSimpleDialog = 'f:1:SimpleDialog';
  static const String unionValueSimpleDialogOption = 'f:1:SimpleDialogOption';
  static const String unionValueShowDialog = 'f:1:showDialog';

  factory FlutterDialogs.fromJson(Map<String, dynamic> json) =>
      _$FlutterDialogsFromJson(json);

  @FreezedUnionValue(FlutterDialogs.unionValueShowDialog)
  factory FlutterDialogs.showDialog({
    required FlutterWidget child,
    ZacBool? barrierDismissible,
    FlutterColor? barrierColor,
    ZacString? barrierLabel,
    ZacBool? useSafeArea,
    ZacBool? useRootNavigator,
    FlutterRouteSettings? routeSettings,
  }) = _FlutterDialogsShowDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueDialog)
  factory FlutterDialogs.dialog({
    FlutterKey? key,
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
// Duration insetAnimationDuration = const Duration(milliseconds: 100),
// FlutterCurve insetAnimationCurve = Curves.decelerate,
    FlutterEdgeInsets? insetPadding,
    FlutterClip? clipBehavior,
    FlutterShapeBorder? shape,
    FlutterAlignmentGeometry? alignment,
    FlutterWidget? child,
  }) = _FlutterDialogsDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueAlertDialog)
  factory FlutterDialogs.alertDialog({
    FlutterKey? key,
    FlutterWidget? title,
    FlutterWidget? content,
    ListOfZacWidget? actions,
    FlutterEdgeInsetsGeometry? titlePadding,
    FlutterTextStyle? titleTextStyle,
    FlutterEdgeInsetsGeometry? contentPadding,
    FlutterTextStyle? contentTextStyle,
    FlutterEdgeInsetsGeometry? actionsPadding,
    FlutterMainAxisAlignment? actionsAlignment,
    FlutterVerticalDirection? actionsOverflowDirection,
    ZacDouble? actionsOverflowButtonSpacing,
    FlutterEdgeInsetsGeometry? buttonPadding,
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
    ZacString? semanticLabel,
    FlutterEdgeInsets? insetPadding,
    FlutterClip? clipBehavior,
    FlutterShapeBorder? shape,
    FlutterAlignmentGeometry? alignment,
    ZacBool? scrollable,
  }) = _FlutterDialogsAlertDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueSimpleDialog)
  factory FlutterDialogs.simpleDialog({
    FlutterKey? key,
    FlutterWidget? title,
    ListOfZacWidget? children,
    FlutterEdgeInsetsGeometry? titlePadding,
    FlutterTextStyle? titleTextStyle,
    FlutterEdgeInsetsGeometry? contentPadding,
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
    ZacString? semanticLabel,
    FlutterEdgeInsets? insetPadding,
    FlutterClip? clipBehavior,
    FlutterShapeBorder? shape,
    FlutterAlignmentGeometry? alignment,
  }) = _FlutterDialogsSimpleDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueSimpleDialogOption)
  factory FlutterDialogs.simpleDialogOption({
    FlutterKey? key,
    FlutterWidget? child,
    ZacActions? onPressed,
    FlutterEdgeInsets? padding,
  }) = _FlutterDialogsSimpleDialogOption;

  @override
  FutureOr<ZacActions?> execute(ZacOrigin origin, ContextBag bag) {
    assert(null != origin.mapOrNull(widgetTree: (obj) => obj));
    origin as ZacOriginWidgetTree;

    return map(
      alertDialog: (_) => throw StateError('Should never happen'),
      dialog: (_) => throw StateError('Should never happen'),
      simpleDialog: (_) => throw StateError('Should never happen'),
      simpleDialogOption: (_) => throw StateError('Should never happen'),
      showDialog: (value) => showDialog<ZacActions?>(
        context: origin.context,
        builder: (_) => FlutterBuilder(child: value.child).buildWidget(origin),
        routeSettings: value.routeSettings?.build(origin),
        barrierDismissible: value.barrierDismissible?.getValue(origin) ?? true,
        barrierColor: value.barrierColor?.build(origin),
        barrierLabel: value.barrierLabel?.getValue(origin),
        useSafeArea: value.useSafeArea?.getValue(origin) ?? true,
        useRootNavigator: value.useRootNavigator?.getValue(origin) ?? true,
      ),
    );
  }

  @override
  Widget buildWidget(ZacOriginWidgetTree origin) {
    return map(
      showDialog: (_) => throw StateError('Should never happen'),
      dialog: (value) => Dialog(
        key: value.key?.buildKey(origin),
        child: value.child?.buildWidget(origin),
        alignment: value.alignment?.build(origin),
        backgroundColor: value.backgroundColor?.build(origin),
        clipBehavior: value.clipBehavior?.build(origin) ?? Clip.none,
        elevation: value.elevation?.getValue(origin),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.build(origin),
        shape: value.shape?.build(origin),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.buildKey(origin),
        title: value.title?.buildWidget(origin),
        content: value.content?.buildWidget(origin),
        actions: value.actions?.getValue(origin) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.build(origin),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.getValue(origin),
        actionsOverflowDirection: value.actionsOverflowDirection?.build(origin),
        actionsPadding: value.actionsPadding?.build(origin) ?? EdgeInsets.zero,
        alignment: value.alignment?.build(origin),
        backgroundColor: value.backgroundColor?.build(origin),
        buttonPadding: value.buttonPadding?.build(origin),
        clipBehavior: value.clipBehavior?.build(origin) ?? Clip.none,
        contentPadding: value.contentPadding?.build(origin) ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: value.contentTextStyle?.build(origin),
        elevation: value.elevation?.getValue(origin),
        insetPadding: value.insetPadding?.build(origin) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.getValue(origin) ?? false,
        semanticLabel: value.semanticLabel?.getValue(origin),
        shape: value.shape?.build(origin),
        titlePadding: value.titlePadding?.build(origin),
        titleTextStyle: value.titleTextStyle?.build(origin),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.buildKey(origin),
        title: value.title?.buildWidget(origin),
        children: value.children?.getValue(origin) ?? const <Widget>[],
        alignment: value.alignment?.build(origin),
        backgroundColor: value.backgroundColor?.build(origin),
        clipBehavior: value.clipBehavior?.build(origin) ?? Clip.none,
        contentPadding: value.contentPadding?.build(origin) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.getValue(origin),
        insetPadding: value.insetPadding?.build(origin) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.getValue(origin),
        shape: value.shape?.build(origin),
        titlePadding: value.titlePadding?.build(origin) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.build(origin),
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.buildKey(origin),
        child: value.child?.buildWidget(origin),
        padding: value.padding?.build(origin),
        onPressed: value.onPressed?.createCb(origin),
      ),
    );
  }
}
