import 'dart:async';

import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';

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
    ZacValue<bool>? barrierDismissible,
    FlutterColor? barrierColor,
    ZacValue<String>? barrierLabel,
    ZacValue<bool>? useSafeArea,
    ZacValue<bool>? useRootNavigator,
    FlutterRouteSettings? routeSettings,
  }) = _FlutterDialogsShowDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueDialog)
  factory FlutterDialogs.dialog({
    FlutterKey? key,
    FlutterColor? backgroundColor,
    ZacValue<double>? elevation,
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
    ZacValueList<FlutterWidget>? actions,
    FlutterEdgeInsetsGeometry? titlePadding,
    FlutterTextStyle? titleTextStyle,
    FlutterEdgeInsetsGeometry? contentPadding,
    FlutterTextStyle? contentTextStyle,
    FlutterEdgeInsetsGeometry? actionsPadding,
    FlutterMainAxisAlignment? actionsAlignment,
    FlutterVerticalDirection? actionsOverflowDirection,
    ZacValue<double>? actionsOverflowButtonSpacing,
    FlutterEdgeInsetsGeometry? buttonPadding,
    FlutterColor? backgroundColor,
    ZacValue<double>? elevation,
    ZacValue<String>? semanticLabel,
    FlutterEdgeInsets? insetPadding,
    FlutterClip? clipBehavior,
    FlutterShapeBorder? shape,
    FlutterAlignmentGeometry? alignment,
    ZacValue<bool>? scrollable,
  }) = _FlutterDialogsAlertDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueSimpleDialog)
  factory FlutterDialogs.simpleDialog({
    FlutterKey? key,
    FlutterWidget? title,
    ZacValueList<FlutterWidget>? children,
    FlutterEdgeInsetsGeometry? titlePadding,
    FlutterTextStyle? titleTextStyle,
    FlutterEdgeInsetsGeometry? contentPadding,
    FlutterColor? backgroundColor,
    ZacValue<double>? elevation,
    ZacValue<String>? semanticLabel,
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
  FutureOr<ZacActions?> execute(
      ZacActionPayload payload, ZacContext zacContext) {
    return map(
      alertDialog: (_) => throw StateError('Should never happen'),
      dialog: (_) => throw StateError('Should never happen'),
      simpleDialog: (_) => throw StateError('Should never happen'),
      simpleDialogOption: (_) => throw StateError('Should never happen'),
      showDialog: (value) => showDialog<ZacActions?>(
        context: zacContext.context,
        builder: (_) =>
            FlutterBuilder(child: value.child).buildWidget(zacContext),
        routeSettings: value.routeSettings?.build(zacContext),
        barrierDismissible:
            value.barrierDismissible?.getValue(zacContext) ?? true,
        barrierColor: value.barrierColor?.build(zacContext),
        barrierLabel: value.barrierLabel?.getValue(zacContext),
        useSafeArea: value.useSafeArea?.getValue(zacContext) ?? true,
        useRootNavigator: value.useRootNavigator?.getValue(zacContext) ?? true,
      ),
    );
  }

  @override
  Widget buildWidget(ZacContext zacContext) {
    return map(
      showDialog: (_) => throw StateError('Should never happen'),
      dialog: (value) => Dialog(
        key: value.key?.buildKey(zacContext),
        alignment: value.alignment?.build(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        elevation: value.elevation?.getValue(zacContext),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.build(zacContext),
        shape: value.shape?.build(zacContext),
        child: value.child?.buildWidget(zacContext),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.buildKey(zacContext),
        title: value.title?.buildWidget(zacContext),
        content: value.content?.buildWidget(zacContext),
        actions: value.actions?.getWidgets(zacContext) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.build(zacContext),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.getValue(zacContext),
        actionsOverflowDirection:
            value.actionsOverflowDirection?.build(zacContext),
        actionsPadding:
            value.actionsPadding?.build(zacContext) ?? EdgeInsets.zero,
        alignment: value.alignment?.build(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        buttonPadding: value.buttonPadding?.build(zacContext),
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.build(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: value.contentTextStyle?.build(zacContext),
        elevation: value.elevation?.getValue(zacContext),
        insetPadding: value.insetPadding?.build(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.getValue(zacContext) ?? false,
        semanticLabel: value.semanticLabel?.getValue(zacContext),
        shape: value.shape?.build(zacContext),
        titlePadding: value.titlePadding?.build(zacContext),
        titleTextStyle: value.titleTextStyle?.build(zacContext),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.buildKey(zacContext),
        title: value.title?.buildWidget(zacContext),
        alignment: value.alignment?.build(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.build(zacContext) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.getValue(zacContext),
        insetPadding: value.insetPadding?.build(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.getValue(zacContext),
        shape: value.shape?.build(zacContext),
        titlePadding: value.titlePadding?.build(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.build(zacContext),
        children: value.children?.getWidgets(zacContext) ?? const <Widget>[],
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.buildKey(zacContext),
        padding: value.padding?.build(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        child: value.child?.buildWidget(zacContext),
      ),
    );
  }
}
