import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  SelectableText buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return SelectableText(
      data,
      key: key?.buildKey(context, ref, zacContext),
      style: style?.build(context, ref, zacContext),
      strutStyle: strutStyle?.build(context, ref, zacContext),
      textAlign: textAlign?.build(context, ref, zacContext),
      textDirection: textDirection?.build(context, ref, zacContext),
      textScaleFactor: textScaleFactor?.getValue(zacContext),
      showCursor: showCursor?.getValue(zacContext) ?? false,
      autofocus: autofocus?.getValue(zacContext) ?? false,
      minLines: minLines?.getValue(zacContext),
      maxLines: maxLines?.getValue(zacContext),
      cursorWidth: cursorWidth?.getValue(zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(zacContext),
      cursorRadius: cursorRadius?.build(context, ref, zacContext),
      cursorColor: cursorColor?.build(context, ref, zacContext),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacContext) ?? true,
      semanticsLabel: semanticsLabel?.getValue(zacContext),
      textHeightBehavior: textHeightBehavior?.build(context, ref, zacContext),
      textWidthBasis: textWidthBasis?.build(context, ref, zacContext),
    );
  }
}
