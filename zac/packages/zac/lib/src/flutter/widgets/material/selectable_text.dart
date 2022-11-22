import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../zac.dart';

part 'selectable_text.freezed.dart';
part 'selectable_text.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
  SelectableText buildWidget(ZacContext zacContext) {
    return SelectableText(
      data,
      key: key?.buildKey(zacContext),
      style: style?.build(zacContext),
      strutStyle: strutStyle?.build(zacContext),
      textAlign: textAlign?.build(zacContext),
      textDirection: textDirection?.build(zacContext),
      textScaleFactor: textScaleFactor?.getValueOrNull(zacContext),
      showCursor: showCursor?.getValueOrNull(zacContext) ?? false,
      autofocus: autofocus?.getValueOrNull(zacContext) ?? false,
      minLines: minLines?.getValueOrNull(zacContext),
      maxLines: maxLines?.getValueOrNull(zacContext),
      cursorWidth: cursorWidth?.getValueOrNull(zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.getValueOrNull(zacContext),
      cursorRadius: cursorRadius?.build(zacContext),
      cursorColor: cursorColor?.build(zacContext),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValueOrNull(zacContext) ?? true,
      semanticsLabel: semanticsLabel?.getValueOrNull(zacContext),
      textHeightBehavior: textHeightBehavior?.build(zacContext),
      textWidthBasis: textWidthBasis?.build(zacContext),
    );
  }
}
