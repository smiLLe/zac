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

  SelectableText _buildWidget(BuildContext context, ZacContext zacContext) {
    return SelectableText(
      data,
      key: key?.build(context, zacContext),
      style: style?.build(context, zacContext),
      strutStyle: strutStyle?.build(context, zacContext),
      textAlign: textAlign?.build(context, zacContext),
      textDirection: textDirection?.build(context, zacContext),
      textScaleFactor: textScaleFactor?.build(context, zacContext),
      showCursor: showCursor?.build(context, zacContext) ?? false,
      autofocus: autofocus?.build(context, zacContext) ?? false,
      minLines: minLines?.build(context, zacContext),
      maxLines: maxLines?.build(context, zacContext),
      cursorWidth: cursorWidth?.build(context, zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.build(context, zacContext),
      cursorRadius: cursorRadius?.build(context, zacContext),
      cursorColor: cursorColor?.build(context, zacContext),
      enableInteractiveSelection:
          enableInteractiveSelection?.build(context, zacContext) ?? true,
      semanticsLabel: semanticsLabel?.build(context, zacContext),
      textHeightBehavior: textHeightBehavior?.build(context, zacContext),
      textWidthBasis: textWidthBasis?.build(context, zacContext),
    );
  }

  @override
  SelectableText build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
