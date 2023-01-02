import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/zac.dart';

part 'dialog.freezed.dart';
part 'dialog.g.dart';

@freezedZacBuilder
class FlutterDialogs with _$FlutterDialogs implements ZacBuilder<Widget> {
  const FlutterDialogs._();

  static const String unionValueDialog = 'f:1:Dialog';
  static const String unionValueAlertDialog = 'f:1:AlertDialog';
  static const String unionValueSimpleDialog = 'f:1:SimpleDialog';
  static const String unionValueSimpleDialogOption = 'f:1:SimpleDialogOption';

  factory FlutterDialogs.fromJson(Map<String, dynamic> json) =>
      _$FlutterDialogsFromJson(json);

  @FreezedUnionValue(FlutterDialogs.unionValueDialog)
  factory FlutterDialogs.dialog({
    ZacBuilder<Key?>? key,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<double?>? elevation,
// Duration insetAnimationDuration = const Duration(milliseconds: 100),
// FlutterCurve insetAnimationCurve = Curves.decelerate,
    ZacBuilder<EdgeInsets?>? insetPadding,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<Widget?>? child,
  }) = _FlutterDialogsDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueAlertDialog)
  factory FlutterDialogs.alertDialog({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? title,
    ZacBuilder<Widget?>? content,
    ZacListBuilder<Widget, List<Widget>?>? actions,
    ZacBuilder<EdgeInsetsGeometry?>? titlePadding,
    ZacBuilder<TextStyle?>? titleTextStyle,
    ZacBuilder<EdgeInsetsGeometry?>? contentPadding,
    ZacBuilder<TextStyle?>? contentTextStyle,
    ZacBuilder<EdgeInsetsGeometry?>? actionsPadding,
    ZacBuilder<MainAxisAlignment?>? actionsAlignment,
    ZacBuilder<VerticalDirection?>? actionsOverflowDirection,
    ZacBuilder<double?>? actionsOverflowButtonSpacing,
    ZacBuilder<EdgeInsetsGeometry?>? buttonPadding,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<double?>? elevation,
    ZacBuilder<String?>? semanticLabel,
    ZacBuilder<EdgeInsets?>? insetPadding,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<bool?>? scrollable,
  }) = _FlutterDialogsAlertDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueSimpleDialog)
  factory FlutterDialogs.simpleDialog({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? title,
    ZacListBuilder<Widget, List<Widget>?>? children,
    ZacBuilder<EdgeInsetsGeometry?>? titlePadding,
    ZacBuilder<TextStyle?>? titleTextStyle,
    ZacBuilder<EdgeInsetsGeometry?>? contentPadding,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<double?>? elevation,
    ZacBuilder<String?>? semanticLabel,
    ZacBuilder<EdgeInsets?>? insetPadding,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<AlignmentGeometry?>? alignment,
  }) = _FlutterDialogsSimpleDialog;

  @FreezedUnionValue(FlutterDialogs.unionValueSimpleDialogOption)
  factory FlutterDialogs.simpleDialogOption({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacActions? onPressed,
    ZacBuilder<EdgeInsets?>? padding,
  }) = _FlutterDialogsSimpleDialogOption;

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      dialog: (value) => Dialog(
        key: value.key?.build(zacContext),
        alignment: value.alignment?.build(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        elevation: value.elevation?.build(zacContext),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.build(zacContext),
        shape: value.shape?.build(zacContext),
        child: value.child?.build(zacContext),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.build(zacContext),
        title: value.title?.build(zacContext),
        content: value.content?.build(zacContext),
        actions: value.actions?.build(zacContext) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.build(zacContext),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.build(zacContext),
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
        elevation: value.elevation?.build(zacContext),
        insetPadding: value.insetPadding?.build(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.build(zacContext) ?? false,
        semanticLabel: value.semanticLabel?.build(zacContext),
        shape: value.shape?.build(zacContext),
        titlePadding: value.titlePadding?.build(zacContext),
        titleTextStyle: value.titleTextStyle?.build(zacContext),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.build(zacContext),
        title: value.title?.build(zacContext),
        alignment: value.alignment?.build(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.build(zacContext) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.build(zacContext),
        insetPadding: value.insetPadding?.build(zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.build(zacContext),
        shape: value.shape?.build(zacContext),
        titlePadding: value.titlePadding?.build(zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.build(zacContext),
        children: value.children?.build(zacContext) ?? const <Widget>[],
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.build(zacContext),
        padding: value.padding?.build(zacContext),
        onPressed: value.onPressed?.build(zacContext).createCb(zacContext),
        child: value.child?.build(zacContext),
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
    required ZacBuilder<Widget> child,
    ZacBuilder<bool?>? barrierDismissible,
    ZacBuilder<Color?>? barrierColor,
    ZacBuilder<String?>? barrierLabel,
    ZacBuilder<bool?>? useSafeArea,
    ZacBuilder<bool?>? useRootNavigator,
    ZacBuilder<RouteSettings?>? routeSettings,
  }) = _FlutterDialogActionsShowDialog;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      showDialog: (value) => showDialog<ZacActions?>(
        context: zacContext.context,
        builder: (_) => FlutterBuilder(child: value.child).build(zacContext),
        routeSettings: value.routeSettings?.build(zacContext),
        barrierDismissible: value.barrierDismissible?.build(zacContext) ?? true,
        barrierColor: value.barrierColor?.build(zacContext),
        barrierLabel: value.barrierLabel?.build(
          zacContext,
        ),
        useSafeArea: value.useSafeArea?.build(zacContext) ?? true,
        useRootNavigator: value.useRootNavigator?.build(zacContext) ?? true,
      ),
    );
  }
}
