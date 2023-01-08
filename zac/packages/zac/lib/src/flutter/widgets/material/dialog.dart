import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
    ZacBuilder<EdgeInsets?>? padding,
  }) = _FlutterDialogsSimpleDialogOption;

  Widget _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      dialog: (value) => Dialog(
        key: value.key?.build(context, zacContext),
        alignment: value.alignment?.build(context, zacContext),
        backgroundColor: value.backgroundColor?.build(context, zacContext),
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
        elevation: value.elevation?.build(context, zacContext),
        // insetAnimationCurve: value.insetAnimationCurve?.toFlutter(context),
        // insetAnimationDuration: value.insetAnimationDuration?.toFlutter(context),
        insetPadding: value.insetPadding?.build(context, zacContext),
        shape: value.shape?.build(context, zacContext),
        child: value.child?.build(context, zacContext),
      ),
      alertDialog: (value) => AlertDialog(
        key: value.key?.build(context, zacContext),
        title: value.title?.build(context, zacContext),
        content: value.content?.build(context, zacContext),
        actions: value.actions?.build(context, zacContext) ?? const <Widget>[],
        actionsAlignment: value.actionsAlignment?.build(context, zacContext),
        actionsOverflowButtonSpacing:
            value.actionsOverflowButtonSpacing?.build(context, zacContext),
        actionsOverflowDirection:
            value.actionsOverflowDirection?.build(context, zacContext),
        actionsPadding:
            value.actionsPadding?.build(context, zacContext) ?? EdgeInsets.zero,
        alignment: value.alignment?.build(context, zacContext),
        backgroundColor: value.backgroundColor?.build(context, zacContext),
        buttonPadding: value.buttonPadding?.build(context, zacContext),
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.build(context, zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        contentTextStyle: value.contentTextStyle?.build(context, zacContext),
        elevation: value.elevation?.build(context, zacContext),
        insetPadding: value.insetPadding?.build(context, zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        scrollable: value.scrollable?.build(context, zacContext) ?? false,
        semanticLabel: value.semanticLabel?.build(context, zacContext),
        shape: value.shape?.build(context, zacContext),
        titlePadding: value.titlePadding?.build(context, zacContext),
        titleTextStyle: value.titleTextStyle?.build(context, zacContext),
      ),
      simpleDialog: (value) => SimpleDialog(
        key: value.key?.build(context, zacContext),
        title: value.title?.build(context, zacContext),
        alignment: value.alignment?.build(context, zacContext),
        backgroundColor: value.backgroundColor?.build(context, zacContext),
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
        contentPadding: value.contentPadding?.build(context, zacContext) ??
            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        elevation: value.elevation?.build(context, zacContext),
        insetPadding: value.insetPadding?.build(context, zacContext) ??
            const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        semanticLabel: value.semanticLabel?.build(context, zacContext),
        shape: value.shape?.build(context, zacContext),
        titlePadding: value.titlePadding?.build(context, zacContext) ??
            const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        titleTextStyle: value.titleTextStyle?.build(context, zacContext),
        children:
            value.children?.build(context, zacContext) ?? const <Widget>[],
      ),
      simpleDialogOption: (value) => SimpleDialogOption(
        key: value.key?.build(context, zacContext),
        padding: value.padding?.build(context, zacContext),
        onPressed: value.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        child: value.child?.build(context, zacContext),
      ),
    );
  }

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterDialogActions
    with _$FlutterDialogActions
    implements ZacBuilder<ZacAction> {
  FlutterDialogActions._();

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

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      showDialog: (value) {
        showDialog<ZacListBuilder<ZacAction, List<ZacAction>?>?>(
          context: context,
          builder: (_) => ProviderScope(
            parent: ProviderScope.containerOf(context),
            child: ZacFlutterBuilder(builder: value.child.build),
          ),
          routeSettings: value.routeSettings?.build(context, zacContext),
          barrierDismissible:
              value.barrierDismissible?.build(context, zacContext) ?? true,
          barrierColor: value.barrierColor?.build(context, zacContext),
          barrierLabel: value.barrierLabel?.build(context, zacContext),
          useSafeArea: value.useSafeArea?.build(context, zacContext) ?? true,
          useRootNavigator:
              value.useRootNavigator?.build(context, zacContext) ?? true,
        );
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}
