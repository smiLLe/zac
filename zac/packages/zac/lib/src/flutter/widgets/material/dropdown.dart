import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'dropdown.freezed.dart';
part 'dropdown.g.dart';

@freezedZacBuilder
class FlutterDropdownButton
    with _$FlutterDropdownButton
    implements ZacBuilder<DropdownButton<Object>> {
  const FlutterDropdownButton._();

  static const String unionValue = 'f:1:DropdownButton';

  factory FlutterDropdownButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterDropdownButtonFromJson(json);

  @FreezedUnionValue(FlutterDropdownButton.unionValue)
  factory FlutterDropdownButton({
    ZacBuilder<Key?>? key,
    required List<FlutterDropdownMenuItem> items,
// ZacBuilder<DropdownButtonBuilder>? selectedItemBuilder,
    ZacBuilder<Object?>? value,
    ZacBuilder<Widget?>? hint,
    ZacBuilder<Widget?>? disabledHint,
    required ZacBuilder<List<ZacAction>> onChanged,
    ZacBuilder<List<ZacAction>?>? onTap,
    ZacBuilder<int?>? elevation,
    ZacBuilder<TextStyle?>? style,
    ZacBuilder<Widget?>? underline,
    ZacBuilder<Widget?>? icon,
    ZacBuilder<Color?>? iconDisabledColor,
    ZacBuilder<Color?>? iconEnabledColor,
    ZacBuilder<double?>? iconSize,
    ZacBuilder<bool?>? isDense,
    ZacBuilder<bool?>? isExpanded,
    ZacBuilder<double?>? itemHeight,
    ZacBuilder<Color?>? focusColor,
    ZacBuilder<FocusNode?>? focusNode,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Color?>? dropdownColor,
    ZacBuilder<double?>? menuMaxHeight,
    ZacBuilder<bool?>? enableFeedback,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<BorderRadius?>? borderRadius,
  }) = _FlutterDropdownButton;

  @override
  DropdownButton<Object> build(BuildContext context, ZacContext zacContext) {
    return DropdownButton<Object>(
      key: key?.build(context, zacContext),
      items: [...items.map((e) => e.build(context, zacContext))],
      value: value?.build(context, zacContext),
      hint: hint?.build(context, zacContext),
      disabledHint: disabledHint?.build(context, zacContext),
      onChanged: onChanged
          .build(context, zacContext)
          .callbackOneParam(context, zacContext),
      onTap: onTap?.build(context, zacContext)?.callack(context, zacContext),
      elevation: elevation?.build(context, zacContext) ?? 8,
      style: style?.build(context, zacContext),
      underline: underline?.build(context, zacContext),
      icon: icon?.build(context, zacContext),
      iconDisabledColor: iconDisabledColor?.build(context, zacContext),
      iconEnabledColor: iconEnabledColor?.build(context, zacContext),
      iconSize: iconSize?.build(context, zacContext) ?? 24.0,
      isDense: isDense?.build(context, zacContext) ?? false,
      isExpanded: isExpanded?.build(context, zacContext) ?? false,
      itemHeight: itemHeight?.build(context, zacContext),
      focusColor: focusColor?.build(context, zacContext),
      focusNode: focusNode?.build(context, zacContext),
      autofocus: autofocus?.build(context, zacContext) ?? false,
      dropdownColor: dropdownColor?.build(context, zacContext),
      menuMaxHeight: menuMaxHeight?.build(context, zacContext),
      enableFeedback: enableFeedback?.build(context, zacContext),
      alignment: alignment?.build(context, zacContext) ??
          AlignmentDirectional.centerStart,
      borderRadius: borderRadius?.build(context, zacContext),
    );
  }
}

@freezedZacBuilder
class FlutterDropdownMenuItem
    with _$FlutterDropdownMenuItem
    implements ZacBuilder<DropdownMenuItem<Object>> {
  const FlutterDropdownMenuItem._();

  static const String unionValue = 'f:1:DropdownMenuItem';

  factory FlutterDropdownMenuItem.fromJson(Map<String, dynamic> json) =>
      _$FlutterDropdownMenuItemFromJson(json);

  @FreezedUnionValue(FlutterDropdownMenuItem.unionValue)
  factory FlutterDropdownMenuItem({
    ZacBuilder<Key?>? key,
    ZacBuilder<List<ZacAction>?>? onTap,
    ZacBuilder<Object?>? value,
    ZacBuilder<bool?>? enabled,
    ZacBuilder<AlignmentGeometry?>? alignment,
    required ZacBuilder<Widget> child,
  }) = _FlutterDropdownMenuItem;

  @override
  DropdownMenuItem<Object> build(BuildContext context, ZacContext zacContext) {
    return DropdownMenuItem<Object>(
      key: key?.build(context, zacContext),
      onTap: onTap?.build(context, zacContext)?.callack(context, zacContext),
      value: value?.build(context, zacContext),
      enabled: enabled?.build(context, zacContext) ?? true,
      alignment: alignment?.build(context, zacContext) ??
          AlignmentDirectional.centerStart,
      child: child.build(context, zacContext),
    );
  }
}
