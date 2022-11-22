import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_bar.freezed.dart';
part 'button_bar.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterButtonBar with _$FlutterButtonBar implements FlutterWidget {
  const FlutterButtonBar._();

  static const String unionValue = 'f:1:ButtonBar';

  factory FlutterButtonBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterButtonBarFromJson(json);

  @FreezedUnionValue(FlutterButtonBar.unionValue)
  factory FlutterButtonBar({
    FlutterKey? key,
    FlutterMainAxisAlignment? alignment,
    FlutterMainAxisSize? mainAxisSize,
// FlutterButtonTextTheme? buttonTextTheme,
    ZacDouble? buttonMinWidth,
    ZacDouble? buttonHeight,
    FlutterEdgeInsetsGeometry? buttonPadding,
    ZacBool? buttonAlignedDropdown,
// FlutterButtonBarLayoutBehavior? layoutBehavior,
    FlutterVerticalDirection? overflowDirection,
    ZacDouble? overflowButtonSpacing,
    ZacValueList<FlutterWidget>? children,
  }) = _FlutterButtonBar;

  @override
  ButtonBar buildWidget(ZacContext zacContext) {
    return ButtonBar(
      key: key?.buildKey(zacContext),
      alignment: alignment?.build(zacContext),
      mainAxisSize: mainAxisSize?.build(zacContext),
// FlutterButtonTextTheme? buttonTextTheme,
      buttonMinWidth: buttonMinWidth?.getValueOrNull(zacContext),
      buttonHeight: buttonHeight?.getValueOrNull(zacContext),
      buttonPadding: buttonPadding?.build(zacContext),
      buttonAlignedDropdown: buttonAlignedDropdown?.getValueOrNull(zacContext),
// FlutterButtonBarLayoutBehavior? layoutBehavior,
      overflowDirection: overflowDirection?.build(zacContext),
      overflowButtonSpacing: overflowButtonSpacing?.getValueOrNull(zacContext),
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
