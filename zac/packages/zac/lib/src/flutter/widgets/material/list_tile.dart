import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';

part 'list_tile.freezed.dart';
part 'list_tile.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
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
    ZacValue<bool>? isThreeLine,
    ZacValue<bool>? dense,
// FlutterVisualDensity? visualDensity,
    FlutterShapeBorder? shape,
// FlutterListTileStyle? style,
    FlutterColor? selectedColor,
    FlutterColor? iconColor,
    FlutterColor? textColor,
    FlutterEdgeInsetsGeometry? contentPadding,
    ZacValue<bool>? enabled,
    ZacActions? onTap,
    ZacActions? onLongPress,
// MouseCursor? mouseCursor,
    ZacValue<bool>? selected,
    FlutterColor? focusColor,
    FlutterColor? hoverColor,
// FocusNode? focusNode,
    ZacValue<bool>? autofocus,
    FlutterColor? tileColor,
    FlutterColor? selectedTileColor,
    ZacValue<bool>? enableFeedback,
    ZacValue<double>? horizontalTitleGap,
    ZacValue<double>? minVerticalPadding,
    ZacValue<double>? minLeadingWidth,
  }) = _FlutterListTile;

  @override
  ListTile buildWidget(ZacContext zacContext) {
    return ListTile(
      key: key?.buildKey(zacContext),
      leading: leading?.buildWidget(zacContext),
      title: title?.buildWidget(zacContext),
      subtitle: subtitle?.buildWidget(zacContext),
      trailing: trailing?.buildWidget(zacContext),
      isThreeLine: isThreeLine?.getValue(zacContext) ?? false,
      dense: dense?.getValue(zacContext),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(zacContext),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(zacContext),
      iconColor: iconColor?.build(zacContext),
      textColor: textColor?.build(zacContext),
      contentPadding: contentPadding?.build(zacContext),
      enabled: enabled?.getValue(zacContext) ?? true,
      onTap: onTap?.createCb(zacContext),
      onLongPress: onLongPress?.createCb(zacContext),
// MouseCursor? mouseCursor,
      selected: selected?.getValue(zacContext) ?? false,
      focusColor: focusColor?.build(zacContext),
      hoverColor: hoverColor?.build(zacContext),
// FocusNode? focusNode,
      autofocus: autofocus?.getValue(zacContext) ?? false,
      tileColor: tileColor?.build(zacContext),
      selectedTileColor: selectedTileColor?.build(zacContext),
      enableFeedback: enableFeedback?.getValue(zacContext),
      horizontalTitleGap: horizontalTitleGap?.getValue(zacContext),
      minVerticalPadding: minVerticalPadding?.getValue(zacContext),
      minLeadingWidth: minLeadingWidth?.getValue(zacContext),
    );
  }
}
