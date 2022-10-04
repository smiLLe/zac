import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';

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
    ZacInteractions? onTap,
    ZacInteractions? onLongPress,
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
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return ListTile(
      key: key?.buildKey(context, ref, lifetime),
      leading: leading?.buildWidget(context, ref, lifetime),
      title: title?.buildWidget(context, ref, lifetime),
      subtitle: subtitle?.buildWidget(context, ref, lifetime),
      trailing: trailing?.buildWidget(context, ref, lifetime),
      isThreeLine: isThreeLine?.getValue(zacRef) ?? false,
      dense: dense?.getValue(zacRef),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(context, ref, lifetime),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(context, ref, lifetime),
      iconColor: iconColor?.build(context, ref, lifetime),
      textColor: textColor?.build(context, ref, lifetime),
      contentPadding: contentPadding?.build(context, ref, lifetime),
      enabled: enabled?.getValue(zacRef) ?? true,
      onTap: onTap?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onLongPress: onLongPress?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
// MouseCursor? mouseCursor,
      selected: selected?.getValue(zacRef) ?? false,
      focusColor: focusColor?.build(context, ref, lifetime),
      hoverColor: hoverColor?.build(context, ref, lifetime),
// FocusNode? focusNode,
      autofocus: autofocus?.getValue(zacRef) ?? false,
      tileColor: tileColor?.build(context, ref, lifetime),
      selectedTileColor: selectedTileColor?.build(context, ref, lifetime),
      enableFeedback: enableFeedback?.getValue(zacRef),
      horizontalTitleGap: horizontalTitleGap?.getValue(zacRef),
      minVerticalPadding: minVerticalPadding?.getValue(zacRef),
      minLeadingWidth: minLeadingWidth?.getValue(zacRef),
    );
  }
}
