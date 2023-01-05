import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

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
    ZacBuilder<List<ZacAction>?>? onTap,
    ZacBuilder<List<ZacAction>?>? onLongPress,
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

  ListTile _buildWidget(BuildContext context, ZacContext zacContext) {
    return ListTile(
      key: key?.build(context, zacContext),
      leading: leading?.build(context, zacContext),
      title: title?.build(context, zacContext),
      subtitle: subtitle?.build(context, zacContext),
      trailing: trailing?.build(context, zacContext),
      isThreeLine: isThreeLine?.build(context, zacContext) ?? false,
      dense: dense?.build(context, zacContext),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(context, zacContext),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(context, zacContext),
      iconColor: iconColor?.build(context, zacContext),
      textColor: textColor?.build(context, zacContext),
      contentPadding: contentPadding?.build(context, zacContext),
      enabled: enabled?.build(context, zacContext) ?? true,
      onTap: onTap?.build(context, zacContext)?.createCb(context, zacContext),
      onLongPress: onLongPress
          ?.build(context, zacContext)
          ?.createCb(context, zacContext),
// MouseCursor? mouseCursor,
      selected: selected?.build(context, zacContext) ?? false,
      focusColor: focusColor?.build(context, zacContext),
      hoverColor: hoverColor?.build(context, zacContext),
// FocusNode? focusNode,
      autofocus: autofocus?.build(context, zacContext) ?? false,
      tileColor: tileColor?.build(context, zacContext),
      selectedTileColor: selectedTileColor?.build(context, zacContext),
      enableFeedback: enableFeedback?.build(context, zacContext),
      horizontalTitleGap: horizontalTitleGap?.build(context, zacContext),
      minVerticalPadding: minVerticalPadding?.build(context, zacContext),
      minLeadingWidth: minLeadingWidth?.build(context, zacContext),
    );
  }

  @override
  ListTile build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
