import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/origin.dart';

import '../../../../../zac.dart';

part 'selectable_text.freezed.dart';
part 'selectable_text.g.dart';

@defaultConverterFreezed
class FlutterSelectableText
    with _$FlutterSelectableText
    implements FlutterWidget {
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
  SelectableText buildWidget(ZacOriginWidgetTree origin) {
    return SelectableText(
      data,
      key: key?.buildKey(origin),
      style: style?.build(origin),
      strutStyle: strutStyle?.build(origin),
      textAlign: textAlign?.build(origin),
      textDirection: textDirection?.build(origin),
      textScaleFactor: textScaleFactor?.getValue(origin),
      showCursor: showCursor?.getValue(origin) ?? false,
      autofocus: autofocus?.getValue(origin) ?? false,
      minLines: minLines?.getValue(origin),
      maxLines: maxLines?.getValue(origin),
      cursorWidth: cursorWidth?.getValue(origin) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(origin),
      cursorRadius: cursorRadius?.build(origin),
      cursorColor: cursorColor?.build(origin),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(origin) ?? true,
      semanticsLabel: semanticsLabel?.getValue(origin),
      textHeightBehavior: textHeightBehavior?.build(origin),
      textWidthBasis: textWidthBasis?.build(origin),
    );
  }
}
