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

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      dialog: (value) => Dialog(
        key: value.key?.buildOrNull(zacContext),
        alignment: value.alignment?.buildOrNull(zacContext),
        backgroundColor: value.backgroundColor?.buildOrNull(zacContext),
        clipBehavior: value.clipBehavior?.buildOrNull(zacContext) ?? Clip.none,
        elevation: value.elevation?.buildOrNull(zacContext),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.buildOrNull(zacContext),
        shape: value.shape?.buildOrNull(zacContext),
        child: value.child?.buildOrNull(zacContext),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.buildOrNull(zacContext),
        title: value.title?.buildOrNull(zacContext),
        content: value.content?.buildOrNull(zacContext),
        actions: value.actions?.buildOrNull(zacContext) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.buildOrNull(zacContext),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.buildOrNull(zacContext),
        actionsOverflowDirection:
            value.actionsOverflowDirection?.buildOrNull(zacContext),
        actionsPadding:
            value.actionsPadding?.buildOrNull(zacContext) ?? EdgeInsets.zero,
        alignment: value.alignment?.buildOrNull(zacContext),
        backgroundColor: value.backgroundColor?.buildOrNull(zacContext),
        buttonPadding: value.buttonPadding?.buildOrNull(zacContext),
        clipBehavior: value.clipBehavior?.buildOrNull(zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.buildOrNull(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: value.contentTextStyle?.buildOrNull(zacContext),
        elevation: value.elevation?.buildOrNull(zacContext),
        insetPadding: value.insetPadding?.buildOrNull(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.buildOrNull(zacContext) ?? false,
        semanticLabel: value.semanticLabel?.buildOrNull(zacContext),
        shape: value.shape?.buildOrNull(zacContext),
        titlePadding: value.titlePadding?.buildOrNull(zacContext),
        titleTextStyle: value.titleTextStyle?.buildOrNull(zacContext),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.buildOrNull(zacContext),
        title: value.title?.buildOrNull(zacContext),
        alignment: value.alignment?.buildOrNull(zacContext),
        backgroundColor: value.backgroundColor?.buildOrNull(zacContext),
        clipBehavior: value.clipBehavior?.buildOrNull(zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.buildOrNull(zacContext) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.buildOrNull(zacContext),
        insetPadding: value.insetPadding?.buildOrNull(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.buildOrNull(zacContext),
        shape: value.shape?.buildOrNull(zacContext),
        titlePadding: value.titlePadding?.buildOrNull(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.buildOrNull(zacContext),
        children: value.children?.buildOrNull(zacContext) ?? const <Widget>[],
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.buildOrNull(zacContext),
        padding: value.padding?.buildOrNull(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        child: value.child?.buildOrNull(zacContext),
      ),
    );
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Widget? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
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
        builder: (_) => FlutterBuilder(child: value.child).build(zacContext),
        routeSettings: value.routeSettings?.buildOrNull(zacContext),
        barrierDismissible: value.barrierDismissible?.buildOrNull(
              zacContext,
              onConsume:
                  const ZacBuilderConsume(type: SharedValueConsumeType.read()),
            ) ??
            true,
        barrierColor: value.barrierColor?.buildOrNull(zacContext),
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
