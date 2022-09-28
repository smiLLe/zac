import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/update_context.dart';

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
    ZacActions? onTap,
    ZacActions? onLongPress,
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
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return ListTile(
      key: key?.buildKey(context, ref, zacContext),
      leading: leading?.buildWidget(context, ref, zacContext),
      title: title?.buildWidget(context, ref, zacContext),
      subtitle: subtitle?.buildWidget(context, ref, zacContext),
      trailing: trailing?.buildWidget(context, ref, zacContext),
      isThreeLine: isThreeLine?.getValue(zacContext) ?? false,
      dense: dense?.getValue(zacContext),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(context, ref, zacContext),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(context, ref, zacContext),
      iconColor: iconColor?.build(context, ref, zacContext),
      textColor: textColor?.build(context, ref, zacContext),
      contentPadding: contentPadding?.build(context, ref, zacContext),
      enabled: enabled?.getValue(zacContext) ?? true,
      onTap: actionsCallback(onTap, zacContext),
      onLongPress: actionsCallback(onLongPress, zacContext),
// MouseCursor? mouseCursor,
      selected: selected?.getValue(zacContext) ?? false,
      focusColor: focusColor?.build(context, ref, zacContext),
      hoverColor: hoverColor?.build(context, ref, zacContext),
// FocusNode? focusNode,
      autofocus: autofocus?.getValue(zacContext) ?? false,
      tileColor: tileColor?.build(context, ref, zacContext),
      selectedTileColor: selectedTileColor?.build(context, ref, zacContext),
      enableFeedback: enableFeedback?.getValue(zacContext),
      horizontalTitleGap: horizontalTitleGap?.getValue(zacContext),
      minVerticalPadding: minVerticalPadding?.getValue(zacContext),
      minLeadingWidth: minLeadingWidth?.getValue(zacContext),
    );
  }
}
