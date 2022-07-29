import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';

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
  ListTile buildWidget(ZacBuildContext context) {
    return ListTile(
      key: key?.buildKey(context),
      leading: leading?.buildWidget(context),
      title: title?.buildWidget(context),
      subtitle: subtitle?.buildWidget(context),
      trailing: trailing?.buildWidget(context),
      isThreeLine: isThreeLine?.getValue(context) ?? false,
      dense: dense?.getValue(context),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(context),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(context),
      iconColor: iconColor?.build(context),
      textColor: textColor?.build(context),
      contentPadding: contentPadding?.build(context),
      enabled: enabled?.getValue(context) ?? true,
      onTap: actionsCallback(onTap, context),
      onLongPress: actionsCallback(onLongPress, context),
// MouseCursor? mouseCursor,
      selected: selected?.getValue(context) ?? false,
      focusColor: focusColor?.build(context),
      hoverColor: hoverColor?.build(context),
// FocusNode? focusNode,
      autofocus: autofocus?.getValue(context) ?? false,
      tileColor: tileColor?.build(context),
      selectedTileColor: selectedTileColor?.build(context),
      enableFeedback: enableFeedback?.getValue(context),
      horizontalTitleGap: horizontalTitleGap?.getValue(context),
      minVerticalPadding: minVerticalPadding?.getValue(context),
      minLeadingWidth: minLeadingWidth?.getValue(context),
    );
  }
}
