import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../zac.dart';

part 'selectable_text.freezed.dart';
part 'selectable_text.g.dart';

@defaultConverterFreezed
class FlutterSelectableText with _$FlutterSelectableText implements ZacWidget {
  const FlutterSelectableText._();

  static const String unionValue = 'f:1:SelectableText';

  factory FlutterSelectableText.fromJson(Map<String, dynamic> json) =>
      _$FlutterSelectableTextFromJson(json);

  @FreezedUnionValue(FlutterSelectableText.unionValue)
  factory FlutterSelectableText(
    String data, {
    FlutterKey? key,
    // FocusNode? focusNode,
    FlutterTextStyle? style,
    FlutterStrutStyle? strutStyle,
    FlutterTextAlign? textAlign,
    FlutterTextDirection? textDirection,
    ZacDouble? textScaleFactor,
    ZacBool? showCursor,
    ZacBool? autofocus,
    // ToolbarOptions? toolbarOptions,
    ZacInt? minLines,
    ZacInt? maxLines,
    ZacDouble? cursorWidth,
    ZacDouble? cursorHeight,
    FlutterRadius? cursorRadius,
    FlutterColor? cursorColor,
    // BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    // BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacBool? enableInteractiveSelection,
    // TextSelectionControls? selectionControls,
    // GestureTapCallback? onTap,
    // ScrollPhysics? scrollPhysics,
    ZacString? semanticsLabel,
    FlutterTextHeightBehavior? textHeightBehavior,
    FlutterTextWidthBasis? textWidthBasis,
    // SelectionChangedCallback? onSelectionChanged,
  }) = _FlutterSelectableText;

  @override
  SelectableText buildWidget(ZacBuildContext context) {
    return SelectableText(
      data,
      key: key?.buildKey(context),
      style: style?.build(context),
      strutStyle: strutStyle?.build(context),
      textAlign: textAlign?.build(context),
      textDirection: textDirection?.build(context),
      textScaleFactor: textScaleFactor?.getValue(context),
      showCursor: showCursor?.getValue(context) ?? false,
      autofocus: autofocus?.getValue(context) ?? false,
      minLines: minLines?.getValue(context),
      maxLines: maxLines?.getValue(context),
      cursorWidth: cursorWidth?.getValue(context) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(context),
      cursorRadius: cursorRadius?.build(context),
      cursorColor: cursorColor?.build(context),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(context) ?? true,
      semanticsLabel: semanticsLabel?.getValue(context),
      textHeightBehavior: textHeightBehavior?.build(context),
      textWidthBasis: textWidthBasis?.build(context),
    );
  }
}
