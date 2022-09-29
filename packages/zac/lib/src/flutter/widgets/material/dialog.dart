import 'dart:async';

import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
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
class FlutterDialogs with _$FlutterDialogs implements ZacUiAction, ZacWidget {
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
    ZacUiActions? onPressed,
    FlutterEdgeInsets? padding,
  }) = _FlutterDialogsSimpleDialogOption;

  @override
  FutureOr<ZacUiActions?> execute(BuildContext context, WidgetRef ref,
      ZacActionHelper helper, ContextBag bag) {
    final zacRef = ZacRef.widget(ref);
    return map(
      alertDialog: (_) => throw StateError('Should never happen'),
      dialog: (_) => throw StateError('Should never happen'),
      simpleDialog: (_) => throw StateError('Should never happen'),
      simpleDialogOption: (_) => throw StateError('Should never happen'),
      showDialog: (value) => showDialog<ZacUiActions?>(
        context: context,
        builder: (_) => FlutterBuilder(child: value.child)
            .buildWidget(context, ref, helper),
        routeSettings: value.routeSettings?.build(context, ref, helper),
        barrierDismissible: value.barrierDismissible?.getValue(zacRef) ?? true,
        barrierColor: value.barrierColor?.build(context, ref, helper),
        barrierLabel: value.barrierLabel?.getValue(zacRef),
        useSafeArea: value.useSafeArea?.getValue(zacRef) ?? true,
        useRootNavigator: value.useRootNavigator?.getValue(zacRef) ?? true,
      ),
    );
  }

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return map(
      showDialog: (_) => throw StateError('Should never happen'),
      dialog: (value) => Dialog(
        key: value.key?.buildKey(context, ref, helper),
        child: value.child?.buildWidget(context, ref, helper),
        alignment: value.alignment?.build(context, ref, helper),
        backgroundColor: value.backgroundColor?.build(context, ref, helper),
        clipBehavior:
            value.clipBehavior?.build(context, ref, helper) ?? Clip.none,
        elevation: value.elevation?.getValue(zacRef),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.build(context, ref, helper),
        shape: value.shape?.build(context, ref, helper),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.buildKey(context, ref, helper),
        title: value.title?.buildWidget(context, ref, helper),
        content: value.content?.buildWidget(context, ref, helper),
        actions:
            value.actions?.getValue(context, ref, helper) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.build(context, ref, helper),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.getValue(zacRef),
        actionsOverflowDirection:
            value.actionsOverflowDirection?.build(context, ref, helper),
        actionsPadding: value.actionsPadding?.build(context, ref, helper) ??
            EdgeInsets.zero,
        alignment: value.alignment?.build(context, ref, helper),
        backgroundColor: value.backgroundColor?.build(context, ref, helper),
        buttonPadding: value.buttonPadding?.build(context, ref, helper),
        clipBehavior:
            value.clipBehavior?.build(context, ref, helper) ?? Clip.none,
        contentPadding: value.contentPadding?.build(context, ref, helper) ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: value.contentTextStyle?.build(context, ref, helper),
        elevation: value.elevation?.getValue(zacRef),
        insetPadding: value.insetPadding?.build(context, ref, helper) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.getValue(zacRef) ?? false,
        semanticLabel: value.semanticLabel?.getValue(zacRef),
        shape: value.shape?.build(context, ref, helper),
        titlePadding: value.titlePadding?.build(context, ref, helper),
        titleTextStyle: value.titleTextStyle?.build(context, ref, helper),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.buildKey(context, ref, helper),
        title: value.title?.buildWidget(context, ref, helper),
        children:
            value.children?.getValue(context, ref, helper) ?? const <Widget>[],
        alignment: value.alignment?.build(context, ref, helper),
        backgroundColor: value.backgroundColor?.build(context, ref, helper),
        clipBehavior:
            value.clipBehavior?.build(context, ref, helper) ?? Clip.none,
        contentPadding: value.contentPadding?.build(context, ref, helper) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.getValue(zacRef),
        insetPadding: value.insetPadding?.build(context, ref, helper) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.getValue(zacRef),
        shape: value.shape?.build(context, ref, helper),
        titlePadding: value.titlePadding?.build(context, ref, helper) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.build(context, ref, helper),
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.buildKey(context, ref, helper),
        child: value.child?.buildWidget(context, ref, helper),
        padding: value.padding?.build(context, ref, helper),
        onPressed: value.onPressed?.createCb(
          context: context,
          ref: ref,
          helper: helper,
        ),
      ),
    );
  }
}
