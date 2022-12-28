import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_bar.freezed.dart';
part 'button_bar.g.dart';

@freezedZacBuilder
class FlutterButtonBar
    with _$FlutterButtonBar
    implements ZacBuilder<ButtonBar> {
  const FlutterButtonBar._();

  static const String unionValue = 'f:1:ButtonBar';

  factory FlutterButtonBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterButtonBarFromJson(json);

  @FreezedUnionValue(FlutterButtonBar.unionValue)
  factory FlutterButtonBar({
    ZacBuilder<Key?>? key,
    ZacBuilder<MainAxisAlignment?>? alignment,
    ZacBuilder<MainAxisSize?>? mainAxisSize,
// FlutterButtonTextTheme? buttonTextTheme,
    ZacBuilder<double?>? buttonMinWidth,
    ZacBuilder<double?>? buttonHeight,
    ZacBuilder<EdgeInsetsGeometry?>? buttonPadding,
    ZacBuilder<bool?>? buttonAlignedDropdown,
// FlutterButtonBarLayoutBehavior? layoutBehavior,
    ZacBuilder<VerticalDirection?>? overflowDirection,
    ZacBuilder<double?>? overflowButtonSpacing,
    ZacListBuilder<Widget, List<Widget>?>? children,
  }) = _FlutterButtonBar;

  ButtonBar _buildWidget(ZacContext zacContext) {
    return ButtonBar(
      key: key?.build(zacContext),
      alignment: alignment?.build(zacContext),
      mainAxisSize: mainAxisSize?.build(zacContext),
// FlutterButtonTextTheme? buttonTextTheme,
      buttonMinWidth: buttonMinWidth?.build(zacContext),
      buttonHeight: buttonHeight?.build(zacContext),
      buttonPadding: buttonPadding?.build(zacContext),
      buttonAlignedDropdown: buttonAlignedDropdown?.build(zacContext),
// FlutterButtonBarLayoutBehavior? layoutBehavior,
      overflowDirection: overflowDirection?.build(zacContext),
      overflowButtonSpacing: overflowButtonSpacing?.build(zacContext),
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  ButtonBar build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
