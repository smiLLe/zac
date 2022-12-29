import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';

part 'list_tile.freezed.dart';
part 'list_tile.g.dart';

@freezedZacBuilder
class FlutterListTile with _$FlutterListTile implements ZacBuilder<ListTile> {
  const FlutterListTile._();

  static const String unionValue = 'f:1:ListTile';

  factory FlutterListTile.fromJson(Map<String, dynamic> json) =>
      _$FlutterListTileFromJson(json);

  @FreezedUnionValue(FlutterListTile.unionValue)
  factory FlutterListTile({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? leading,
    ZacBuilder<Widget?>? title,
    ZacBuilder<Widget?>? subtitle,
    ZacBuilder<Widget?>? trailing,
    ZacBuilder<bool?>? isThreeLine,
    ZacBuilder<bool?>? dense,
// FlutterVisualDensity? visualDensity,
    ZacBuilder<ShapeBorder?>? shape,
// FlutterListTileStyle? style,
    ZacBuilder<Color?>? selectedColor,
    ZacBuilder<Color?>? iconColor,
    ZacBuilder<Color?>? textColor,
    ZacBuilder<EdgeInsetsGeometry?>? contentPadding,
    ZacBuilder<bool?>? enabled,
    ZacActions? onTap,
    ZacActions? onLongPress,
// MouseCursor? mouseCursor,
    ZacBuilder<bool?>? selected,
    ZacBuilder<Color?>? focusColor,
    ZacBuilder<Color?>? hoverColor,
// FocusNode? focusNode,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Color?>? tileColor,
    ZacBuilder<Color?>? selectedTileColor,
    ZacBuilder<bool?>? enableFeedback,
    ZacBuilder<double?>? horizontalTitleGap,
    ZacBuilder<double?>? minVerticalPadding,
    ZacBuilder<double?>? minLeadingWidth,
  }) = _FlutterListTile;

  ListTile _buildWidget(ZacContext zacContext) {
    return ListTile(
      key: key?.build(zacContext),
      leading: leading?.build(zacContext),
      title: title?.build(zacContext),
      subtitle: subtitle?.build(zacContext),
      trailing: trailing?.build(zacContext),
      isThreeLine: isThreeLine?.build(zacContext) ?? false,
      dense: dense?.build(zacContext),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(zacContext),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(zacContext),
      iconColor: iconColor?.build(zacContext),
      textColor: textColor?.build(zacContext),
      contentPadding: contentPadding?.build(zacContext),
      enabled: enabled?.build(zacContext) ?? true,
      onTap: onTap?.createCb(zacContext),
      onLongPress: onLongPress?.createCb(zacContext),
// MouseCursor? mouseCursor,
      selected: selected?.build(zacContext) ?? false,
      focusColor: focusColor?.build(zacContext),
      hoverColor: hoverColor?.build(zacContext),
// FocusNode? focusNode,
      autofocus: autofocus?.build(zacContext) ?? false,
      tileColor: tileColor?.build(zacContext),
      selectedTileColor: selectedTileColor?.build(zacContext),
      enableFeedback: enableFeedback?.build(zacContext),
      horizontalTitleGap: horizontalTitleGap?.build(zacContext),
      minVerticalPadding: minVerticalPadding?.build(zacContext),
      minLeadingWidth: minLeadingWidth?.build(zacContext),
    );
  }

  @override
  ListTile build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
