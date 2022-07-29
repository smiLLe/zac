import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_bar.freezed.dart';
part 'button_bar.g.dart';

@defaultConverterFreezed
class FlutterButtonBar with _$FlutterButtonBar implements ZacWidget {
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
  ButtonBar buildWidget(ZacBuildContext context) {
    return ButtonBar(
      key: key?.build(context),
      alignment: alignment?.build(context),
      mainAxisSize: mainAxisSize?.build(context),
// FlutterButtonTextTheme? buttonTextTheme,
      buttonMinWidth: buttonMinWidth?.getValue(context),
      buttonHeight: buttonHeight?.getValue(context),
      buttonPadding: buttonPadding?.build(context),
      buttonAlignedDropdown: buttonAlignedDropdown?.getValue(context),
// FlutterButtonBarLayoutBehavior? layoutBehavior,
      overflowDirection: overflowDirection?.build(context),
      overflowButtonSpacing: overflowButtonSpacing?.getValue(context),
      children: children?.getValue(context) ?? const <Widget>[],
    );
  }
}
