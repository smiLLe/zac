import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/zac.dart';

part 'dialog.freezed.dart';
part 'dialog.g.dart';

@freezedZacBuilder
class FlutterDialogs with _$FlutterDialogs implements ZacBuild<Widget> {
  const FlutterDialogs._();

  static const String unionValueDialog = 'f:1:Dialog';
  static const String unionValueAlertDialog = 'f:1:AlertDialog';
  static const String unionValueSimpleDialog = 'f:1:SimpleDialog';
  static const String unionValueSimpleDialogOption = 'f:1:SimpleDialogOption';

  factory FlutterDialogs.fromJson(Map<String, dynamic> json) =>
      _$FlutterDialogsFromJson(json);

  @FreezedUnionValue(FlutterDialogs.unionValueDialog)
  factory FlutterDialogs.dialog({
    ZacValue<Key?>? key,
    ZacValue<Color?>? backgroundColor,
    ZacValue<double?>? elevation,
// Duration insetAnimationDuration = const Duration(milliseconds: 100),
// FlutterCurve insetAnimationCurve = Curves.decelerate,
    ZacValue<EdgeInsets?>? insetPadding,
    ZacValue<Clip?>? clipBehavior,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<Widget?>? child,
  }) = _FlutterDialogsDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueAlertDialog)
  factory FlutterDialogs.alertDialog({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? title,
    ZacValue<Widget?>? content,
    ZacValueList<Widget, List<Widget>?>? actions,
    ZacValue<EdgeInsetsGeometry?>? titlePadding,
    ZacValue<TextStyle?>? titleTextStyle,
    ZacValue<EdgeInsetsGeometry?>? contentPadding,
    ZacValue<TextStyle?>? contentTextStyle,
    ZacValue<EdgeInsetsGeometry?>? actionsPadding,
    ZacValue<MainAxisAlignment?>? actionsAlignment,
    ZacValue<VerticalDirection?>? actionsOverflowDirection,
    ZacValue<double?>? actionsOverflowButtonSpacing,
    ZacValue<EdgeInsetsGeometry?>? buttonPadding,
    ZacValue<Color?>? backgroundColor,
    ZacValue<double?>? elevation,
    ZacValue<String?>? semanticLabel,
    ZacValue<EdgeInsets?>? insetPadding,
    ZacValue<Clip?>? clipBehavior,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<bool?>? scrollable,
  }) = _FlutterDialogsAlertDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueSimpleDialog)
  factory FlutterDialogs.simpleDialog({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? title,
    ZacValueList<Widget, List<Widget>?>? children,
    ZacValue<EdgeInsetsGeometry?>? titlePadding,
    ZacValue<TextStyle?>? titleTextStyle,
    ZacValue<EdgeInsetsGeometry?>? contentPadding,
    ZacValue<Color?>? backgroundColor,
    ZacValue<double?>? elevation,
    ZacValue<String?>? semanticLabel,
    ZacValue<EdgeInsets?>? insetPadding,
    ZacValue<Clip?>? clipBehavior,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<AlignmentGeometry?>? alignment,
  }) = _FlutterDialogsSimpleDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueSimpleDialogOption)
  factory FlutterDialogs.simpleDialogOption({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacActions? onPressed,
    ZacValue<EdgeInsets?>? padding,
  }) = _FlutterDialogsSimpleDialogOption;

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      dialog: (value) => Dialog(
        key: value.key?.getValue(zacContext),
        alignment: value.alignment?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.getValue(zacContext),
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
        elevation: value.elevation?.getValue(zacContext),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.getValue(zacContext),
        shape: value.shape?.getValue(zacContext),
        child: value.child?.getValue(zacContext),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.getValue(zacContext),
        title: value.title?.getValue(zacContext),
        content: value.content?.getValue(zacContext),
        actions: value.actions?.build(zacContext) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.getValue(zacContext),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.getValue(zacContext),
        actionsOverflowDirection:
            value.actionsOverflowDirection?.getValue(zacContext),
        actionsPadding:
            value.actionsPadding?.getValue(zacContext) ?? EdgeInsets.zero,
        alignment: value.alignment?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.getValue(zacContext),
        buttonPadding: value.buttonPadding?.getValue(zacContext),
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.getValue(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: value.contentTextStyle?.getValue(zacContext),
        elevation: value.elevation?.getValue(zacContext),
        insetPadding: value.insetPadding?.getValue(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.getValue(zacContext) ?? false,
        semanticLabel: value.semanticLabel?.getValue(zacContext),
        shape: value.shape?.getValue(zacContext),
        titlePadding: value.titlePadding?.getValue(zacContext),
        titleTextStyle: value.titleTextStyle?.getValue(zacContext),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.getValue(zacContext),
        title: value.title?.getValue(zacContext),
        alignment: value.alignment?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.getValue(zacContext),
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.getValue(zacContext) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.getValue(zacContext),
        insetPadding: value.insetPadding?.getValue(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.getValue(zacContext),
        shape: value.shape?.getValue(zacContext),
        titlePadding: value.titlePadding?.getValue(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.getValue(zacContext),
        children: value.children?.build(zacContext) ?? const <Widget>[],
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.getValue(zacContext),
        padding: value.padding?.getValue(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        child: value.child?.getValue(zacContext),
      ),
    );
  }

  @override
  Widget build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterDialogActions with _$FlutterDialogActions implements ZacAction {
  const FlutterDialogActions._();

  static const String unionValue = 'f:1:showDialog';

  factory FlutterDialogActions.fromJson(Map<String, dynamic> json) =>
      _$FlutterDialogActionsFromJson(json);

  @FreezedUnionValue(FlutterDialogActions.unionValue)
  factory FlutterDialogActions.showDialog({
    required ZacValue<Widget> child,
    ZacValue<bool?>? barrierDismissible,
    ZacValue<Color?>? barrierColor,
    ZacValue<String?>? barrierLabel,
    ZacValue<bool?>? useSafeArea,
    ZacValue<bool?>? useRootNavigator,
    ZacValue<RouteSettings?>? routeSettings,
  }) = _FlutterDialogActionsShowDialog;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      showDialog: (value) => showDialog<ZacActions?>(
        context: zacContext.context,
        builder: (_) => FlutterBuilder(child: value.child).build(zacContext),
        routeSettings: value.routeSettings?.getValue(zacContext),
        barrierDismissible: value.barrierDismissible?.getValue(
              zacContext,
              onConsume: const SharedValueConsumeType.read(),
            ) ??
            true,
        barrierColor: value.barrierColor?.getValue(zacContext),
        barrierLabel: value.barrierLabel?.getValue(
          zacContext,
          onConsume: const SharedValueConsumeType.read(),
        ),
        useSafeArea: value.useSafeArea?.getValue(
              zacContext,
              onConsume: const SharedValueConsumeType.read(),
            ) ??
            true,
        useRootNavigator: value.useRootNavigator?.getValue(
              zacContext,
              onConsume: const SharedValueConsumeType.read(),
            ) ??
            true,
      ),
    );
  }
}
