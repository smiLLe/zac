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
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return SelectableText(
      data,
      key: key?.buildKey(context, ref, helper),
      style: style?.build(context, ref, helper),
      strutStyle: strutStyle?.build(context, ref, helper),
      textAlign: textAlign?.build(context, ref, helper),
      textDirection: textDirection?.build(context, ref, helper),
      textScaleFactor: textScaleFactor?.getValue(zacRef),
      showCursor: showCursor?.getValue(zacRef) ?? false,
      autofocus: autofocus?.getValue(zacRef) ?? false,
      minLines: minLines?.getValue(zacRef),
      maxLines: maxLines?.getValue(zacRef),
      cursorWidth: cursorWidth?.getValue(zacRef) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(zacRef),
      cursorRadius: cursorRadius?.build(context, ref, helper),
      cursorColor: cursorColor?.build(context, ref, helper),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacRef) ?? true,
      semanticsLabel: semanticsLabel?.getValue(zacRef),
      textHeightBehavior: textHeightBehavior?.build(context, ref, helper),
      textWidthBasis: textWidthBasis?.build(context, ref, helper),
    );
  }
}
