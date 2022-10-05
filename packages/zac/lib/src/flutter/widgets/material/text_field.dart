import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/material/input_decoration.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';

part 'text_field.freezed.dart';
part 'text_field.g.dart';

@defaultConverterFreezed
class FlutterTextField with _$FlutterTextField implements FlutterWidget {
  const FlutterTextField._();

  static const String unionValue = 'f:1:TextField';

  factory FlutterTextField.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextFieldFromJson(json);

  @FreezedUnionValue(FlutterTextField.unionValue)
  factory FlutterTextField({
    FlutterKey? key,
// TextEditingController? controller,
// FocusNode? focusNode,
    FlutterInputDecoration? decoration,
    FlutterTextInputType? keyboardType,
    FlutterTextInputAction? textInputAction,
    FlutterTextCapitalization? textCapitalization,
    FlutterTextStyle? style,
    FlutterStrutStyle? strutStyle,
    FlutterTextAlign? textAlign,
    FlutterTextAlignVertical? textAlignVertical,
    FlutterTextDirection? textDirection,
    ZacBool? readOnly,
// ToolbarOptions? toolbarOptions,
    ZacBool? showCursor,
    ZacBool? autofocus,
    ZacString? obscuringCharacter,
    ZacBool? obscureText,
    ZacBool? autocorrect,
    FlutterSmartDashesType? smartDashesType,
    FlutterSmartQuotesType? smartQuotesType,
    ZacBool? enableSuggestions,
    ZacInt? maxLines,
    ZacInt? minLines,
    ZacBool? expands,
    ZacInt? maxLength,
    // ValueChanged<String>? onChanged,
    ZacActions? onChanged,
    // VoidCallback? onEditingComplete,
    ZacActions? onEditingComplete,
    // ValueChanged<String>? onSubmitted,
    ZacActions? onSubmitted,
// AppPrivateCommandCallback? onAppPrivateCommand,
// List<TextInputFormatter>? inputFormatters,
    ZacBool? enabled,
    ZacDouble? cursorWidth,
    ZacDouble? cursorHeight,
    FlutterRadius? cursorRadius,
    FlutterColor? cursorColor,
    FlutterBoxHeightStyle? selectionHeightStyle,
    FlutterBoxWidthStyle? selectionWidthStyle,
    FlutterBrightness? keyboardAppearance,
    FlutterEdgeInsets? scrollPadding,
// DragStartBehavior? dragStartBehavior,
    ZacBool? enableInteractiveSelection,
// TextSelectionControls? selectionControls,
    // GestureTapCallback? onTap,
    ZacActions? onTap,
// MouseCursor? mouseCursor,
// InputCounterWidgetBuilder? buildCounter,
// ScrollController? scrollController,
// ScrollPhysics? scrollPhysics,
// Iterable<String>? autofillHints = const <String>[],
    FlutterClip? clipBehavior,
    ZacString? restorationId,
    ZacBool? enableIMEPersonalizedLearning,
  }) = _FlutterTextField;

  @override
  TextField buildWidget(ZacOriginWidgetTree origin) {
    return TextField(
      key: key?.buildKey(origin),
      style: style?.build(origin),
      strutStyle: strutStyle?.build(origin),
      textAlign: textAlign?.build(origin) ?? TextAlign.start,
      textDirection: textDirection?.build(origin),
      readOnly: readOnly?.getValue(origin) ?? false,
      showCursor: showCursor?.getValue(origin),
      autofocus: autofocus?.getValue(origin) ?? false,
      obscuringCharacter: obscuringCharacter?.getValue(origin) ?? '•',
      obscureText: obscureText?.getValue(origin) ?? false,
      autocorrect: autocorrect?.getValue(origin) ?? true,
      enableSuggestions: enableSuggestions?.getValue(origin) ?? true,
      maxLines: maxLines?.getValue(origin),
      minLines: minLines?.getValue(origin),
      expands: expands?.getValue(origin) ?? false,
      maxLength: maxLength?.getValue(origin),
      enabled: enabled?.getValue(origin),
      cursorWidth: cursorWidth?.getValue(origin) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(origin),
      cursorRadius: cursorRadius?.build(origin),
      cursorColor: cursorColor?.build(origin),
      keyboardAppearance: keyboardAppearance?.build(origin),
      scrollPadding: scrollPadding?.build(origin) ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(origin) ?? true,
      clipBehavior: clipBehavior?.build(origin) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(origin),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.getValue(origin) ?? true,
      onChanged: onChanged?.createCbParam1<String>(origin),
      decoration: decoration?.build(origin) ?? const InputDecoration(),
      keyboardType: keyboardType?.build(origin),
      textInputAction: textInputAction?.build(origin),
      textCapitalization:
          textCapitalization?.build(origin) ?? TextCapitalization.none,
      textAlignVertical: textAlignVertical?.build(origin),
      smartDashesType: smartDashesType?.build(origin),
      smartQuotesType: smartQuotesType?.build(origin),
      selectionHeightStyle:
          selectionHeightStyle?.build(origin) ?? BoxHeightStyle.tight,
      selectionWidthStyle:
          selectionWidthStyle?.build(origin) ?? BoxWidthStyle.tight,
      onTap: onTap?.createCb(origin),
      onEditingComplete: onEditingComplete?.createCb(origin),
      onSubmitted: onSubmitted?.createCbParam1<String>(origin),
    );
  }
}
