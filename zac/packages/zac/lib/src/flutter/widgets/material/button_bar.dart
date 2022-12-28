import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_bar.freezed.dart';
part 'button_bar.g.dart';

@freezedZacBuilder
class FlutterButtonBar with _$FlutterButtonBar implements ZacBuild<ButtonBar> {
  const FlutterButtonBar._();

  static const String unionValue = 'f:1:ButtonBar';

  factory FlutterButtonBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterButtonBarFromJson(json);

  @FreezedUnionValue(FlutterButtonBar.unionValue)
  factory FlutterButtonBar({
    ZacValue<Key?>? key,
    ZacValue<MainAxisAlignment?>? alignment,
    ZacValue<MainAxisSize?>? mainAxisSize,
// FlutterButtonTextTheme? buttonTextTheme,
    ZacValue<double?>? buttonMinWidth,
    ZacValue<double?>? buttonHeight,
    ZacValue<EdgeInsetsGeometry?>? buttonPadding,
    ZacValue<bool?>? buttonAlignedDropdown,
// FlutterButtonBarLayoutBehavior? layoutBehavior,
    ZacValue<VerticalDirection?>? overflowDirection,
    ZacValue<double?>? overflowButtonSpacing,
    ZacValueList<Widget, List<Widget>?>? children,
  }) = _FlutterButtonBar;

  ButtonBar _buildWidget(ZacContext zacContext) {
    return ButtonBar(
      key: key?.getValue(zacContext),
      alignment: alignment?.getValue(zacContext),
      mainAxisSize: mainAxisSize?.getValue(zacContext),
// FlutterButtonTextTheme? buttonTextTheme,
      buttonMinWidth: buttonMinWidth?.getValue(zacContext),
      buttonHeight: buttonHeight?.getValue(zacContext),
      buttonPadding: buttonPadding?.getValue(zacContext),
      buttonAlignedDropdown: buttonAlignedDropdown?.getValue(zacContext),
// FlutterButtonBarLayoutBehavior? layoutBehavior,
      overflowDirection: overflowDirection?.getValue(zacContext),
      overflowButtonSpacing: overflowButtonSpacing?.getValue(zacContext),
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  ButtonBar build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
