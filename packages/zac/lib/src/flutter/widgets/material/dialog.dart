import 'dart:async';

import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/widget_context.dart';
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
class FlutterDialogs with _$FlutterDialogs, ZacAction implements ZacWidget {
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
    required ZacWidget child,
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
    ZacWidget? child,
  }) = _FlutterDialogsDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueAlertDialog)
  factory FlutterDialogs.alertDialog({
    FlutterKey? key,
    ZacWidget? title,
    ZacWidget? content,
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
    ZacWidget? title,
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
    ZacWidget? child,
    ZacActions? onPressed,
    FlutterEdgeInsets? padding,
  }) = _FlutterDialogsSimpleDialogOption;

  @override
  FutureOr<ZacActions?> execute(
      ZacBuildContext context, ActionPayload payload) {
    if (!context.isMounted()) return null;
    return map(
      alertDialog: (_) => throw StateError('Should never happen'),
      dialog: (_) => throw StateError('Should never happen'),
      simpleDialog: (_) => throw StateError('Should never happen'),
      simpleDialogOption: (_) => throw StateError('Should never happen'),
      showDialog: (value) => showDialog<ZacActions?>(
        context: context.context,
        builder: (_) => FlutterBuilder(child: value.child).buildWidget(context),
        routeSettings: value.routeSettings?.build(context),
        barrierDismissible: value.barrierDismissible?.getValue(context) ?? true,
        barrierColor: value.barrierColor?.build(context),
        barrierLabel: value.barrierLabel?.getValue(context),
        useSafeArea: value.useSafeArea?.getValue(context) ?? true,
        useRootNavigator: value.useRootNavigator?.getValue(context) ?? true,
      ),
    );
  }

  @override
  Widget buildWidget(ZacBuildContext context) {
    return map(
      showDialog: (_) => throw StateError('Should never happen'),
      dialog: (value) => Dialog(
        key: value.key?.buildKey(context),
        child: value.child?.buildWidget(context),
        alignment: value.alignment?.build(context),
        backgroundColor: value.backgroundColor?.build(context),
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
        elevation: value.elevation?.getValue(context),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.build(context),
        shape: value.shape?.build(context),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.buildKey(context),
        title: value.title?.buildWidget(context),
        content: value.content?.buildWidget(context),
        actions: value.actions?.getValue(context) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.build(context),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.getValue(context),
        actionsOverflowDirection:
            value.actionsOverflowDirection?.build(context),
        actionsPadding: value.actionsPadding?.build(context) ?? EdgeInsets.zero,
        alignment: value.alignment?.build(context),
        backgroundColor: value.backgroundColor?.build(context),
        buttonPadding: value.buttonPadding?.build(context),
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
        contentPadding: value.contentPadding?.build(context) ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: value.contentTextStyle?.build(context),
        elevation: value.elevation?.getValue(context),
        insetPadding: value.insetPadding?.build(context) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.getValue(context) ?? false,
        semanticLabel: value.semanticLabel?.getValue(context),
        shape: value.shape?.build(context),
        titlePadding: value.titlePadding?.build(context),
        titleTextStyle: value.titleTextStyle?.build(context),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.buildKey(context),
        title: value.title?.buildWidget(context),
        children: value.children?.getValue(context) ?? const <Widget>[],
        alignment: value.alignment?.build(context),
        backgroundColor: value.backgroundColor?.build(context),
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
        contentPadding: value.contentPadding?.build(context) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.getValue(context),
        insetPadding: value.insetPadding?.build(context) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.getValue(context),
        shape: value.shape?.build(context),
        titlePadding: value.titlePadding?.build(context) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.build(context),
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.buildKey(context),
        child: value.child?.buildWidget(context),
        padding: value.padding?.build(context),
        onPressed: actionsCallback(value.onPressed, context),
      ),
    );
  }
}
