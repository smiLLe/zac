import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/zac.dart';

part 'dialog.freezed.dart';
part 'dialog.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterDialogs with _$FlutterDialogs implements FlutterWidget {
  const FlutterDialogs._();

  static const String unionValueDialog = 'f:1:Dialog';
  static const String unionValueAlertDialog = 'f:1:AlertDialog';
  static const String unionValueSimpleDialog = 'f:1:SimpleDialog';
  static const String unionValueSimpleDialogOption = 'f:1:SimpleDialogOption';

  factory FlutterDialogs.fromJson(Map<String, dynamic> json) =>
      _$FlutterDialogsFromJson(json);

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
    ZacListOfFlutterWidget? actions,
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
    ZacListOfFlutterWidget? children,
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
  Widget buildWidget(ZacContext zacContext) {
    return map(
      dialog: (value) => Dialog(
        key: value.key?.buildKey(zacContext),
        alignment: value.alignment?.build(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        elevation: value.elevation?.buildOrNull(zacContext),
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
        actions: value.actions?.buildOrNull(zacContext) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.build(zacContext),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.buildOrNull(zacContext),
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
        elevation: value.elevation?.buildOrNull(zacContext),
        insetPadding: value.insetPadding?.build(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.buildOrNull(zacContext) ?? false,
        semanticLabel: value.semanticLabel?.buildOrNull(zacContext),
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
        elevation: value.elevation?.buildOrNull(zacContext),
        insetPadding: value.insetPadding?.build(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.buildOrNull(zacContext),
        shape: value.shape?.build(zacContext),
        titlePadding: value.titlePadding?.build(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.build(zacContext),
        children: value.children?.buildOrNull(zacContext) ?? const <Widget>[],
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

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterDialogActions with _$FlutterDialogActions implements ZacAction {
  const FlutterDialogActions._();

  static const String unionValue = 'f:1:showDialog';

  factory FlutterDialogActions.fromJson(Map<String, dynamic> json) =>
      _$FlutterDialogActionsFromJson(json);

  @FreezedUnionValue(FlutterDialogActions.unionValue)
  factory FlutterDialogActions.showDialog({
    required FlutterWidget child,
    ZacBool? barrierDismissible,
    FlutterColor? barrierColor,
    ZacString? barrierLabel,
    ZacBool? useSafeArea,
    ZacBool? useRootNavigator,
    FlutterRouteSettings? routeSettings,
  }) = _FlutterDialogActionsShowDialog;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      showDialog: (value) => showDialog<ZacActions?>(
        context: zacContext.context,
        builder: (_) =>
            FlutterBuilder(child: value.child).buildWidget(zacContext),
        routeSettings: value.routeSettings?.build(zacContext),
        barrierDismissible: value.barrierDismissible?.buildOrNull(
              zacContext,
              onConsume:
                  const ZacBuilderConsume(type: SharedValueConsumeType.read()),
            ) ??
            true,
        barrierColor: value.barrierColor?.build(zacContext),
        barrierLabel: value.barrierLabel?.buildOrNull(
          zacContext,
          onConsume: const ZacBuilderConsume(
            type: SharedValueConsumeType.read(),
          ),
        ),
        useSafeArea: value.useSafeArea?.buildOrNull(
              zacContext,
              onConsume:
                  const ZacBuilderConsume(type: SharedValueConsumeType.read()),
            ) ??
            true,
        useRootNavigator: value.useRootNavigator?.buildOrNull(
              zacContext,
              onConsume:
                  const ZacBuilderConsume(type: SharedValueConsumeType.read()),
            ) ??
            true,
      ),
    );
  }
}
