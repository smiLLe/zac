import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';

part 'list_tile.freezed.dart';
part 'list_tile.g.dart';

@defaultConverterFreezed
class FlutterListTile with _$FlutterListTile implements ZacWidget {
  const FlutterListTile._();

  static const String unionValue = 'f:1:ListTile';

  factory FlutterListTile.fromJson(Map<String, dynamic> json) =>
      _$FlutterListTileFromJson(json);

  @FreezedUnionValue(FlutterListTile.unionValue)
  factory FlutterListTile({
    FlutterKey? key,
    ZacWidget? leading,
    ZacWidget? title,
    ZacWidget? subtitle,
    ZacWidget? trailing,
    ZacBool? isThreeLine,
    ZacBool? dense,
// FlutterVisualDensity? visualDensity,
    FlutterShapeBorder? shape,
// FlutterListTileStyle? style,
    FlutterColor? selectedColor,
    FlutterColor? iconColor,
    FlutterColor? textColor,
    FlutterEdgeInsetsGeometry? contentPadding,
    ZacBool? enabled,
    ZacUiActions? onTap,
    ZacUiActions? onLongPress,
// MouseCursor? mouseCursor,
    ZacBool? selected,
    FlutterColor? focusColor,
    FlutterColor? hoverColor,
// FocusNode? focusNode,
    ZacBool? autofocus,
    FlutterColor? tileColor,
    FlutterColor? selectedTileColor,
    ZacBool? enableFeedback,
    ZacDouble? horizontalTitleGap,
    ZacDouble? minVerticalPadding,
    ZacDouble? minLeadingWidth,
  }) = _FlutterListTile;

  @override
  ListTile buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return ListTile(
      key: key?.buildKey(context, ref, helper),
      leading: leading?.buildWidget(context, ref, helper),
      title: title?.buildWidget(context, ref, helper),
      subtitle: subtitle?.buildWidget(context, ref, helper),
      trailing: trailing?.buildWidget(context, ref, helper),
      isThreeLine: isThreeLine?.getValue(zacRef) ?? false,
      dense: dense?.getValue(zacRef),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(context, ref, helper),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(context, ref, helper),
      iconColor: iconColor?.build(context, ref, helper),
      textColor: textColor?.build(context, ref, helper),
      contentPadding: contentPadding?.build(context, ref, helper),
      enabled: enabled?.getValue(zacRef) ?? true,
      onTap: onTap?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onLongPress: onLongPress?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
// MouseCursor? mouseCursor,
      selected: selected?.getValue(zacRef) ?? false,
      focusColor: focusColor?.build(context, ref, helper),
      hoverColor: hoverColor?.build(context, ref, helper),
// FocusNode? focusNode,
      autofocus: autofocus?.getValue(zacRef) ?? false,
      tileColor: tileColor?.build(context, ref, helper),
      selectedTileColor: selectedTileColor?.build(context, ref, helper),
      enableFeedback: enableFeedback?.getValue(zacRef),
      horizontalTitleGap: horizontalTitleGap?.getValue(zacRef),
      minVerticalPadding: minVerticalPadding?.getValue(zacRef),
      minLeadingWidth: minLeadingWidth?.getValue(zacRef),
    );
  }
}
