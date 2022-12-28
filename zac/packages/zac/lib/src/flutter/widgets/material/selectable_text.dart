import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../zac.dart';

part 'selectable_text.freezed.dart';
part 'selectable_text.g.dart';

@freezedZacBuilder
class FlutterSelectableText
    with _$FlutterSelectableText
    implements ZacBuilder<SelectableText> {
  const FlutterSelectableText._();

  static const String unionValue = 'f:1:SelectableText';

  factory FlutterSelectableText.fromJson(Map<String, dynamic> json) =>
      _$FlutterSelectableTextFromJson(json);

  @FreezedUnionValue(FlutterSelectableText.unionValue)
  factory FlutterSelectableText(
    String data, {
    ZacBuilder<Key?>? key,
    // FocusNode? focusNode,
    ZacBuilder<TextStyle?>? style,
    ZacBuilder<StrutStyle?>? strutStyle,
    ZacBuilder<TextAlign?>? textAlign,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<double?>? textScaleFactor,
    ZacBuilder<bool?>? showCursor,
    ZacBuilder<bool?>? autofocus,
    // ToolbarOptions? toolbarOptions,
    ZacBuilder<int?>? minLines,
    ZacBuilder<int?>? maxLines,
    ZacBuilder<double?>? cursorWidth,
    ZacBuilder<double?>? cursorHeight,
    ZacBuilder<Radius?>? cursorRadius,
    ZacBuilder<Color?>? cursorColor,
    // BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    // BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacBuilder<bool?>? enableInteractiveSelection,
    // TextSelectionControls? selectionControls,
    // GestureTapCallback? onTap,
    // ScrollPhysics? scrollPhysics,
    ZacBuilder<String?>? semanticsLabel,
    ZacBuilder<TextHeightBehavior?>? textHeightBehavior,
    ZacBuilder<TextWidthBasis?>? textWidthBasis,
    // SelectionChangedCallback? onSelectionChanged,
  }) = _FlutterSelectableText;

  SelectableText _buildWidget(ZacContext zacContext) {
    return SelectableText(
      data,
      key: key?.build(zacContext),
      style: style?.build(zacContext),
      strutStyle: strutStyle?.build(zacContext),
      textAlign: textAlign?.build(zacContext),
      textDirection: textDirection?.build(zacContext),
      textScaleFactor: textScaleFactor?.build(zacContext),
      showCursor: showCursor?.build(zacContext) ?? false,
      autofocus: autofocus?.build(zacContext) ?? false,
      minLines: minLines?.build(zacContext),
      maxLines: maxLines?.build(zacContext),
      cursorWidth: cursorWidth?.build(zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.build(zacContext),
      cursorRadius: cursorRadius?.build(zacContext),
      cursorColor: cursorColor?.build(zacContext),
      enableInteractiveSelection:
          enableInteractiveSelection?.build(zacContext) ?? true,
      semanticsLabel: semanticsLabel?.build(zacContext),
      textHeightBehavior: textHeightBehavior?.build(zacContext),
      textWidthBasis: textWidthBasis?.build(zacContext),
    );
  }

  @override
  SelectableText build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
