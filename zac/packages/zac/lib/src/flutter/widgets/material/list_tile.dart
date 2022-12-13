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
    ZacValue<bool?>? isThreeLine,
    ZacValue<bool?>? dense,
// FlutterVisualDensity? visualDensity,
    FlutterShapeBorder? shape,
// FlutterListTileStyle? style,
    FlutterColor? selectedColor,
    FlutterColor? iconColor,
    FlutterColor? textColor,
    FlutterEdgeInsetsGeometry? contentPadding,
    ZacValue<bool?>? enabled,
    ZacActions? onTap,
    ZacActions? onLongPress,
// MouseCursor? mouseCursor,
    ZacValue<bool?>? selected,
    FlutterColor? focusColor,
    FlutterColor? hoverColor,
// FocusNode? focusNode,
    ZacValue<bool?>? autofocus,
    FlutterColor? tileColor,
    FlutterColor? selectedTileColor,
    ZacValue<bool?>? enableFeedback,
    ZacValue<double?>? horizontalTitleGap,
    ZacValue<double?>? minVerticalPadding,
    ZacValue<double?>? minLeadingWidth,
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
