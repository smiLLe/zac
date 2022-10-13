import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';

part 'list_tile.freezed.dart';
part 'list_tile.g.dart';

@defaultConverterFreezed
class FlutterListTile with _$FlutterListTile implements FlutterWidget {
  const FlutterListTile._();

  static const String unionValue = 'f:1:ListTile';

  factory FlutterListTile.fromJson(Map<String, dynamic> json) =>
      _$FlutterListTileFromJson(json);

  @FreezedUnionValue(FlutterListTile.unionValue)
  factory FlutterListTile({
    FlutterKey? key,
    FlutterWidget? leading,
    FlutterWidget? title,
    FlutterWidget? subtitle,
    FlutterWidget? trailing,
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
  ListTile buildWidget(ZacOriginWidgetTree origin) {
    return ListTile(
      key: key?.buildKey(origin),
      leading: leading?.buildWidget(origin),
      title: title?.buildWidget(origin),
      subtitle: subtitle?.buildWidget(origin),
      trailing: trailing?.buildWidget(origin),
      isThreeLine: isThreeLine?.getValue(origin) ?? false,
      dense: dense?.getValue(origin),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(origin),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(origin),
      iconColor: iconColor?.build(origin),
      textColor: textColor?.build(origin),
      contentPadding: contentPadding?.build(origin),
      enabled: enabled?.getValue(origin) ?? true,
      onTap: onTap?.createCb(origin),
      onLongPress: onLongPress?.createCb(origin),
// MouseCursor? mouseCursor,
      selected: selected?.getValue(origin) ?? false,
      focusColor: focusColor?.build(origin),
      hoverColor: hoverColor?.build(origin),
// FocusNode? focusNode,
      autofocus: autofocus?.getValue(origin) ?? false,
      tileColor: tileColor?.build(origin),
      selectedTileColor: selectedTileColor?.build(origin),
      enableFeedback: enableFeedback?.getValue(origin),
      horizontalTitleGap: horizontalTitleGap?.getValue(origin),
      minVerticalPadding: minVerticalPadding?.getValue(origin),
      minLeadingWidth: minLeadingWidth?.getValue(origin),
    );
  }
}
