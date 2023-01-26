import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
    ZacBuilder<List<Widget>?>? children,
  }) = _FlutterButtonBar;

  ButtonBar _buildWidget(BuildContext context, ZacContext zacContext) {
    return ButtonBar(
      key: key?.build(context, zacContext),
      alignment: alignment?.build(context, zacContext),
      mainAxisSize: mainAxisSize?.build(context, zacContext),
// FlutterButtonTextTheme? buttonTextTheme,
      buttonMinWidth: buttonMinWidth?.build(context, zacContext),
      buttonHeight: buttonHeight?.build(context, zacContext),
      buttonPadding: buttonPadding?.build(context, zacContext),
      buttonAlignedDropdown: buttonAlignedDropdown?.build(context, zacContext),
// FlutterButtonBarLayoutBehavior? layoutBehavior,
      overflowDirection: overflowDirection?.build(context, zacContext),
      overflowButtonSpacing: overflowButtonSpacing?.build(context, zacContext),
      children: children?.build(context, zacContext) ?? const <Widget>[],
    );
  }

  @override
  ButtonBar build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
