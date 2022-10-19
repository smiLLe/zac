import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_bar.freezed.dart';
part 'button_bar.g.dart';

@defaultConverterFreezed
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
    ListOfZacWidget? children,
  }) = _FlutterButtonBar;

  @override
  ButtonBar buildWidget(ZacContext zacContext) {
    return ButtonBar(
      key: key?.buildKey(zacContext),
      alignment: alignment?.build(zacContext),
      mainAxisSize: mainAxisSize?.build(zacContext),
// FlutterButtonTextTheme? buttonTextTheme,
      buttonMinWidth: buttonMinWidth?.getValue(zacContext),
      buttonHeight: buttonHeight?.getValue(zacContext),
      buttonPadding: buttonPadding?.build(zacContext),
      buttonAlignedDropdown: buttonAlignedDropdown?.getValue(zacContext),
// FlutterButtonBarLayoutBehavior? layoutBehavior,
      overflowDirection: overflowDirection?.build(zacContext),
      overflowButtonSpacing: overflowButtonSpacing?.getValue(zacContext),
      children: children?.getValue(zacContext) ?? const <Widget>[],
    );
  }
}
