import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'floating_action_button.freezed.dart';
part 'floating_action_button.g.dart';

@freezedZacBuilder
class FlutterFloatingActionButton
    with _$FlutterFloatingActionButton
    implements ZacBuilder<FloatingActionButton> {
  const FlutterFloatingActionButton._();

  factory FlutterFloatingActionButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterFloatingActionButtonFromJson(json);

  @FreezedUnionValue('f:1:FloatingActionButton')
  factory FlutterFloatingActionButton({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<String?>? tooltip,
    ZacBuilder<Color?>? foregroundColor,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<Color?>? focusColor,
    ZacBuilder<Color?>? hoverColor,
    ZacBuilder<Color?>? splashColor,
    ZacBuilder<Object?>? heroTag,
    ZacBuilder<double?>? elevation,
    ZacBuilder<double?>? focusElevation,
    ZacBuilder<double?>? hoverElevation,
    ZacBuilder<double?>? highlightElevation,
    ZacBuilder<double?>? disabledElevation,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
    ZacBuilder<MouseCursor?>? mouseCursor,
    ZacBuilder<bool?>? mini,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<FocusNode?>? focusNode,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
    ZacBuilder<bool?>? isExtended,
    ZacBuilder<bool?>? enableFeedback,
  }) = _FlutterFloatingActionButton;

  @FreezedUnionValue('f:1:FloatingActionButton.extended')
  factory FlutterFloatingActionButton.extended({
    ZacBuilder<Key?>? key,
    ZacBuilder<String?>? tooltip,
    ZacBuilder<Color?>? foregroundColor,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<Color?>? focusColor,
    ZacBuilder<Color?>? hoverColor,
    ZacBuilder<Color?>? splashColor,
    ZacBuilder<Object?>? heroTag,
    ZacBuilder<double?>? elevation,
    ZacBuilder<double?>? focusElevation,
    ZacBuilder<double?>? hoverElevation,
    ZacBuilder<double?>? highlightElevation,
    ZacBuilder<double?>? disabledElevation,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
    ZacBuilder<MouseCursor?>? mouseCursor,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<FocusNode?>? focusNode,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
    ZacBuilder<bool?>? isExtended,
    ZacBuilder<bool?>? enableFeedback,
    ZacBuilder<double?>? extendedIconLabelSpacing,
    ZacBuilder<EdgeInsetsGeometry?>? extendedPadding,
    ZacBuilder<TextStyle?>? extendedTextStyle,
    ZacBuilder<Widget?>? icon,
    required ZacBuilder<Widget> label,
  }) = _Extended;

  @FreezedUnionValue('f:1:FloatingActionButton.large')
  factory FlutterFloatingActionButton.large({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<String?>? tooltip,
    ZacBuilder<Color?>? foregroundColor,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<Color?>? focusColor,
    ZacBuilder<Color?>? hoverColor,
    ZacBuilder<Color?>? splashColor,
    ZacBuilder<Object?>? heroTag,
    ZacBuilder<double?>? elevation,
    ZacBuilder<double?>? focusElevation,
    ZacBuilder<double?>? hoverElevation,
    ZacBuilder<double?>? highlightElevation,
    ZacBuilder<double?>? disabledElevation,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
    ZacBuilder<MouseCursor?>? mouseCursor,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<FocusNode?>? focusNode,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
    ZacBuilder<bool?>? enableFeedback,
  }) = _Large;

  @FreezedUnionValue('f:1:FloatingActionButton.small')
  factory FlutterFloatingActionButton.small({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<String?>? tooltip,
    ZacBuilder<Color?>? foregroundColor,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<Color?>? focusColor,
    ZacBuilder<Color?>? hoverColor,
    ZacBuilder<Color?>? splashColor,
    ZacBuilder<Object?>? heroTag,
    ZacBuilder<double?>? elevation,
    ZacBuilder<double?>? focusElevation,
    ZacBuilder<double?>? hoverElevation,
    ZacBuilder<double?>? highlightElevation,
    ZacBuilder<double?>? disabledElevation,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
    ZacBuilder<MouseCursor?>? mouseCursor,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<FocusNode?>? focusNode,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
    ZacBuilder<bool?>? enableFeedback,
  }) = _Small;

  @override
  FloatingActionButton build(BuildContext context, ZacContext zacContext) {
    return map(
      (obj) => FloatingActionButton(
        key: obj.key?.build(context, zacContext),
        tooltip: obj.tooltip?.build(context, zacContext),
        foregroundColor: obj.foregroundColor?.build(context, zacContext),
        backgroundColor: obj.backgroundColor?.build(context, zacContext),
        focusColor: obj.focusColor?.build(context, zacContext),
        hoverColor: obj.hoverColor?.build(context, zacContext),
        splashColor: obj.splashColor?.build(context, zacContext),
        heroTag: obj.heroTag?.build(context, zacContext),
        elevation: obj.elevation?.build(context, zacContext),
        focusElevation: obj.focusElevation?.build(context, zacContext),
        hoverElevation: obj.hoverElevation?.build(context, zacContext),
        highlightElevation: obj.highlightElevation?.build(context, zacContext),
        disabledElevation: obj.disabledElevation?.build(context, zacContext),
        onPressed: obj.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        mouseCursor: obj.mouseCursor?.build(context, zacContext),
        mini: obj.mini?.build(context, zacContext) ?? false,
        shape: obj.shape?.build(context, zacContext),
        clipBehavior: obj.clipBehavior?.build(context, zacContext) ?? Clip.none,
        focusNode: obj.focusNode?.build(context, zacContext),
        autofocus: obj.autofocus?.build(context, zacContext) ?? false,
        materialTapTargetSize:
            obj.materialTapTargetSize?.build(context, zacContext),
        isExtended: obj.isExtended?.build(context, zacContext) ?? false,
        enableFeedback: obj.enableFeedback?.build(context, zacContext),
        child: obj.child?.build(context, zacContext),
      ),
      extended: (obj) => FloatingActionButton.extended(
        key: obj.key?.build(context, zacContext),
        tooltip: obj.tooltip?.build(context, zacContext),
        foregroundColor: obj.foregroundColor?.build(context, zacContext),
        backgroundColor: obj.backgroundColor?.build(context, zacContext),
        focusColor: obj.focusColor?.build(context, zacContext),
        hoverColor: obj.hoverColor?.build(context, zacContext),
        splashColor: obj.splashColor?.build(context, zacContext),
        heroTag: obj.heroTag?.build(context, zacContext),
        elevation: obj.elevation?.build(context, zacContext),
        focusElevation: obj.focusElevation?.build(context, zacContext),
        hoverElevation: obj.hoverElevation?.build(context, zacContext),
        highlightElevation: obj.highlightElevation?.build(context, zacContext),
        disabledElevation: obj.disabledElevation?.build(context, zacContext),
        onPressed: obj.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        mouseCursor: obj.mouseCursor?.build(context, zacContext),
        shape: obj.shape?.build(context, zacContext),
        clipBehavior: obj.clipBehavior?.build(context, zacContext) ?? Clip.none,
        focusNode: obj.focusNode?.build(context, zacContext),
        autofocus: obj.autofocus?.build(context, zacContext) ?? false,
        materialTapTargetSize:
            obj.materialTapTargetSize?.build(context, zacContext),
        isExtended: obj.isExtended?.build(context, zacContext) ?? false,
        enableFeedback: obj.enableFeedback?.build(context, zacContext),
        extendedIconLabelSpacing:
            obj.extendedIconLabelSpacing?.build(context, zacContext),
        extendedPadding: obj.extendedPadding?.build(context, zacContext),
        extendedTextStyle: obj.extendedTextStyle?.build(context, zacContext),
        icon: obj.icon?.build(context, zacContext),
        label: obj.label.build(context, zacContext),
      ),
      large: (obj) => FloatingActionButton.large(
        key: obj.key?.build(context, zacContext),
        tooltip: obj.tooltip?.build(context, zacContext),
        foregroundColor: obj.foregroundColor?.build(context, zacContext),
        backgroundColor: obj.backgroundColor?.build(context, zacContext),
        focusColor: obj.focusColor?.build(context, zacContext),
        hoverColor: obj.hoverColor?.build(context, zacContext),
        splashColor: obj.splashColor?.build(context, zacContext),
        heroTag: obj.heroTag?.build(context, zacContext),
        elevation: obj.elevation?.build(context, zacContext),
        focusElevation: obj.focusElevation?.build(context, zacContext),
        hoverElevation: obj.hoverElevation?.build(context, zacContext),
        highlightElevation: obj.highlightElevation?.build(context, zacContext),
        disabledElevation: obj.disabledElevation?.build(context, zacContext),
        onPressed: obj.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        mouseCursor: obj.mouseCursor?.build(context, zacContext),
        shape: obj.shape?.build(context, zacContext),
        clipBehavior: obj.clipBehavior?.build(context, zacContext) ?? Clip.none,
        focusNode: obj.focusNode?.build(context, zacContext),
        autofocus: obj.autofocus?.build(context, zacContext) ?? false,
        materialTapTargetSize:
            obj.materialTapTargetSize?.build(context, zacContext),
        enableFeedback: obj.enableFeedback?.build(context, zacContext),
        child: obj.child?.build(context, zacContext),
      ),
      small: (obj) => FloatingActionButton.small(
        key: obj.key?.build(context, zacContext),
        tooltip: obj.tooltip?.build(context, zacContext),
        foregroundColor: obj.foregroundColor?.build(context, zacContext),
        backgroundColor: obj.backgroundColor?.build(context, zacContext),
        focusColor: obj.focusColor?.build(context, zacContext),
        hoverColor: obj.hoverColor?.build(context, zacContext),
        splashColor: obj.splashColor?.build(context, zacContext),
        heroTag: obj.heroTag?.build(context, zacContext),
        elevation: obj.elevation?.build(context, zacContext),
        focusElevation: obj.focusElevation?.build(context, zacContext),
        hoverElevation: obj.hoverElevation?.build(context, zacContext),
        highlightElevation: obj.highlightElevation?.build(context, zacContext),
        disabledElevation: obj.disabledElevation?.build(context, zacContext),
        onPressed: obj.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        mouseCursor: obj.mouseCursor?.build(context, zacContext),
        shape: obj.shape?.build(context, zacContext),
        clipBehavior: obj.clipBehavior?.build(context, zacContext) ?? Clip.none,
        focusNode: obj.focusNode?.build(context, zacContext),
        autofocus: obj.autofocus?.build(context, zacContext) ?? false,
        materialTapTargetSize:
            obj.materialTapTargetSize?.build(context, zacContext),
        enableFeedback: obj.enableFeedback?.build(context, zacContext),
        child: obj.child?.build(context, zacContext),
      ),
    );
  }
}
