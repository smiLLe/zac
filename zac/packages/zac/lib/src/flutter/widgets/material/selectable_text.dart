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
    ZacValue<double?>? textScaleFactor,
    ZacValue<bool?>? showCursor,
    ZacValue<bool?>? autofocus,
    // ToolbarOptions? toolbarOptions,
    ZacValue<int?>? minLines,
    ZacValue<int?>? maxLines,
    ZacValue<double?>? cursorWidth,
    ZacValue<double?>? cursorHeight,
    FlutterRadius? cursorRadius,
    FlutterColor? cursorColor,
    // BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    // BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacValue<bool?>? enableInteractiveSelection,
    // TextSelectionControls? selectionControls,
    // GestureTapCallback? onTap,
    // ScrollPhysics? scrollPhysics,
    ZacValue<String?>? semanticsLabel,
    FlutterTextHeightBehavior? textHeightBehavior,
    FlutterTextWidthBasis? textWidthBasis,
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
  SelectableText build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  SelectableText? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
