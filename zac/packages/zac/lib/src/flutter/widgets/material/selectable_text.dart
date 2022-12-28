import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../zac.dart';

part 'selectable_text.freezed.dart';
part 'selectable_text.g.dart';

@freezedZacBuilder
class FlutterSelectableText
    with _$FlutterSelectableText
    implements ZacBuild<SelectableText> {
  const FlutterSelectableText._();

  static const String unionValue = 'f:1:SelectableText';

  factory FlutterSelectableText.fromJson(Map<String, dynamic> json) =>
      _$FlutterSelectableTextFromJson(json);

  @FreezedUnionValue(FlutterSelectableText.unionValue)
  factory FlutterSelectableText(
    String data, {
    ZacValue<Key?>? key,
    // FocusNode? focusNode,
    ZacValue<TextStyle?>? style,
    ZacValue<StrutStyle?>? strutStyle,
    ZacValue<TextAlign?>? textAlign,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<double?>? textScaleFactor,
    ZacValue<bool?>? showCursor,
    ZacValue<bool?>? autofocus,
    // ToolbarOptions? toolbarOptions,
    ZacValue<int?>? minLines,
    ZacValue<int?>? maxLines,
    ZacValue<double?>? cursorWidth,
    ZacValue<double?>? cursorHeight,
    ZacValue<Radius?>? cursorRadius,
    ZacValue<Color?>? cursorColor,
    // BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    // BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacValue<bool?>? enableInteractiveSelection,
    // TextSelectionControls? selectionControls,
    // GestureTapCallback? onTap,
    // ScrollPhysics? scrollPhysics,
    ZacValue<String?>? semanticsLabel,
    ZacValue<TextHeightBehavior?>? textHeightBehavior,
    ZacValue<TextWidthBasis?>? textWidthBasis,
    // SelectionChangedCallback? onSelectionChanged,
  }) = _FlutterSelectableText;

  SelectableText _buildWidget(ZacContext zacContext) {
    return SelectableText(
      data,
      key: key?.getValue(zacContext),
      style: style?.getValue(zacContext),
      strutStyle: strutStyle?.getValue(zacContext),
      textAlign: textAlign?.getValue(zacContext),
      textDirection: textDirection?.getValue(zacContext),
      textScaleFactor: textScaleFactor?.getValue(zacContext),
      showCursor: showCursor?.getValue(zacContext) ?? false,
      autofocus: autofocus?.getValue(zacContext) ?? false,
      minLines: minLines?.getValue(zacContext),
      maxLines: maxLines?.getValue(zacContext),
      cursorWidth: cursorWidth?.getValue(zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(zacContext),
      cursorRadius: cursorRadius?.getValue(zacContext),
      cursorColor: cursorColor?.getValue(zacContext),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacContext) ?? true,
      semanticsLabel: semanticsLabel?.getValue(zacContext),
      textHeightBehavior: textHeightBehavior?.getValue(zacContext),
      textWidthBasis: textWidthBasis?.getValue(zacContext),
    );
  }

  @override
  SelectableText build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
