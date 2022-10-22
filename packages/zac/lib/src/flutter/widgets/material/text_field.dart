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
import 'package:zac/src/zac/context.dart';
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
    ZacValue<String>? obscuringCharacter,
    ZacBool? obscureText,
    ZacBool? autocorrect,
    FlutterSmartDashesType? smartDashesType,
    FlutterSmartQuotesType? smartQuotesType,
    ZacBool? enableSuggestions,
    ZacValue<int>? maxLines,
    ZacValue<int>? minLines,
    ZacBool? expands,
    ZacValue<int>? maxLength,
    // ValueChanged<String>? onChanged,
    ZacActions? onChanged,
    // VoidCallback? onEditingComplete,
    ZacActions? onEditingComplete,
    // ValueChanged<String>? onSubmitted,
    ZacActions? onSubmitted,
// AppPrivateCommandCallback? onAppPrivateCommand,
// List<TextInputFormatter>? inputFormatters,
    ZacBool? enabled,
    ZacValue<double>? cursorWidth,
    ZacValue<double>? cursorHeight,
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
    ZacValue<String>? restorationId,
    ZacBool? enableIMEPersonalizedLearning,
  }) = _FlutterTextField;

  @override
  TextField buildWidget(ZacContext zacContext) {
    return TextField(
      key: key?.buildKey(zacContext),
      style: style?.build(zacContext),
      strutStyle: strutStyle?.build(zacContext),
      textAlign: textAlign?.build(zacContext) ?? TextAlign.start,
      textDirection: textDirection?.build(zacContext),
      readOnly: readOnly?.getValue(zacContext) ?? false,
      showCursor: showCursor?.getValue(zacContext),
      autofocus: autofocus?.getValue(zacContext) ?? false,
      obscuringCharacter: obscuringCharacter?.getValue(zacContext) ?? '•',
      obscureText: obscureText?.getValue(zacContext) ?? false,
      autocorrect: autocorrect?.getValue(zacContext) ?? true,
      enableSuggestions: enableSuggestions?.getValue(zacContext) ?? true,
      maxLines: maxLines?.getValue(zacContext),
      minLines: minLines?.getValue(zacContext),
      expands: expands?.getValue(zacContext) ?? false,
      maxLength: maxLength?.getValue(zacContext),
      enabled: enabled?.getValue(zacContext),
      cursorWidth: cursorWidth?.getValue(zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(zacContext),
      cursorRadius: cursorRadius?.build(zacContext),
      cursorColor: cursorColor?.build(zacContext),
      keyboardAppearance: keyboardAppearance?.build(zacContext),
      scrollPadding:
          scrollPadding?.build(zacContext) ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacContext) ?? true,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(zacContext),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.getValue(zacContext) ?? true,
      onChanged: onChanged?.createCbParam1<String>(zacContext),
      decoration: decoration?.build(zacContext) ?? const InputDecoration(),
      keyboardType: keyboardType?.build(zacContext),
      textInputAction: textInputAction?.build(zacContext),
      textCapitalization:
          textCapitalization?.build(zacContext) ?? TextCapitalization.none,
      textAlignVertical: textAlignVertical?.build(zacContext),
      smartDashesType: smartDashesType?.build(zacContext),
      smartQuotesType: smartQuotesType?.build(zacContext),
      selectionHeightStyle:
          selectionHeightStyle?.build(zacContext) ?? BoxHeightStyle.tight,
      selectionWidthStyle:
          selectionWidthStyle?.build(zacContext) ?? BoxWidthStyle.tight,
      onTap: onTap?.createCb(zacContext),
      onEditingComplete: onEditingComplete?.createCb(zacContext),
      onSubmitted: onSubmitted?.createCbParam1<String>(zacContext),
    );
  }
}
