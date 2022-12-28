import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'list_tile.freezed.dart';
part 'list_tile.g.dart';

@freezedZacBuilder
class FlutterListTile with _$FlutterListTile implements ZacBuild<ListTile> {
  const FlutterListTile._();

  static const String unionValue = 'f:1:ListTile';

  factory FlutterListTile.fromJson(Map<String, dynamic> json) =>
      _$FlutterListTileFromJson(json);

  @FreezedUnionValue(FlutterListTile.unionValue)
  factory FlutterListTile({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? leading,
    ZacValue<Widget?>? title,
    ZacValue<Widget?>? subtitle,
    ZacValue<Widget?>? trailing,
    ZacValue<bool?>? isThreeLine,
    ZacValue<bool?>? dense,
// FlutterVisualDensity? visualDensity,
    ZacValue<ShapeBorder?>? shape,
// FlutterListTileStyle? style,
    ZacValue<Color?>? selectedColor,
    ZacValue<Color?>? iconColor,
    ZacValue<Color?>? textColor,
    ZacValue<EdgeInsetsGeometry?>? contentPadding,
    ZacValue<bool?>? enabled,
    ZacActions? onTap,
    ZacActions? onLongPress,
// MouseCursor? mouseCursor,
    ZacValue<bool?>? selected,
    ZacValue<Color?>? focusColor,
    ZacValue<Color?>? hoverColor,
// FocusNode? focusNode,
    ZacValue<bool?>? autofocus,
    ZacValue<Color?>? tileColor,
    ZacValue<Color?>? selectedTileColor,
    ZacValue<bool?>? enableFeedback,
    ZacValue<double?>? horizontalTitleGap,
    ZacValue<double?>? minVerticalPadding,
    ZacValue<double?>? minLeadingWidth,
  }) = _FlutterListTile;

  ListTile _buildWidget(ZacContext zacContext) {
    return ListTile(
      key: key?.getValue(zacContext),
      leading: leading?.getValue(zacContext),
      title: title?.getValue(zacContext),
      subtitle: subtitle?.getValue(zacContext),
      trailing: trailing?.getValue(zacContext),
      isThreeLine: isThreeLine?.getValue(zacContext) ?? false,
      dense: dense?.getValue(zacContext),
// FlutterVisualDensity? visualDensity,
      shape: shape?.getValue(zacContext),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.getValue(zacContext),
      iconColor: iconColor?.getValue(zacContext),
      textColor: textColor?.getValue(zacContext),
      contentPadding: contentPadding?.getValue(zacContext),
      enabled: enabled?.getValue(zacContext) ?? true,
      onTap: onTap?.createCb(zacContext),
      onLongPress: onLongPress?.createCb(zacContext),
// MouseCursor? mouseCursor,
      selected: selected?.getValue(zacContext) ?? false,
      focusColor: focusColor?.getValue(zacContext),
      hoverColor: hoverColor?.getValue(zacContext),
// FocusNode? focusNode,
      autofocus: autofocus?.getValue(zacContext) ?? false,
      tileColor: tileColor?.getValue(zacContext),
      selectedTileColor: selectedTileColor?.getValue(zacContext),
      enableFeedback: enableFeedback?.getValue(zacContext),
      horizontalTitleGap: horizontalTitleGap?.getValue(zacContext),
      minVerticalPadding: minVerticalPadding?.getValue(zacContext),
      minLeadingWidth: minLeadingWidth?.getValue(zacContext),
    );
  }

  @override
  ListTile build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
