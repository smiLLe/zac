import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'list_tile.freezed.dart';
part 'list_tile.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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

  ListTile _buildWidget(ZacContext zacContext) {
    return ListTile(
      key: key?.buildOrNull(zacContext),
      leading: leading?.buildOrNull(zacContext),
      title: title?.buildOrNull(zacContext),
      subtitle: subtitle?.buildOrNull(zacContext),
      trailing: trailing?.buildOrNull(zacContext),
      isThreeLine: isThreeLine?.buildOrNull(zacContext) ?? false,
      dense: dense?.buildOrNull(zacContext),
// FlutterVisualDensity? visualDensity,
      shape: shape?.build(zacContext),
// FlutterListTileStyle? style,
      selectedColor: selectedColor?.build(zacContext),
      iconColor: iconColor?.build(zacContext),
      textColor: textColor?.build(zacContext),
      contentPadding: contentPadding?.build(zacContext),
      enabled: enabled?.buildOrNull(zacContext) ?? true,
      onTap: onTap?.createCb(zacContext),
      onLongPress: onLongPress?.createCb(zacContext),
// MouseCursor? mouseCursor,
      selected: selected?.buildOrNull(zacContext) ?? false,
      focusColor: focusColor?.build(zacContext),
      hoverColor: hoverColor?.build(zacContext),
// FocusNode? focusNode,
      autofocus: autofocus?.buildOrNull(zacContext) ?? false,
      tileColor: tileColor?.build(zacContext),
      selectedTileColor: selectedTileColor?.build(zacContext),
      enableFeedback: enableFeedback?.buildOrNull(zacContext),
      horizontalTitleGap: horizontalTitleGap?.buildOrNull(zacContext),
      minVerticalPadding: minVerticalPadding?.buildOrNull(zacContext),
      minLeadingWidth: minLeadingWidth?.buildOrNull(zacContext),
    );
  }

  @override
  ListTile build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  ListTile? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
