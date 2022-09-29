import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/material/input_decoration.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';

part 'text_field.freezed.dart';
part 'text_field.g.dart';

@defaultConverterFreezed
class FlutterTextField with _$FlutterTextField implements ZacWidget {
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
    ZacUiActions? onChanged,
    // VoidCallback? onEditingComplete,
    ZacUiActions? onEditingComplete,
    // ValueChanged<String>? onSubmitted,
    ZacUiActions? onSubmitted,
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
    ZacUiActions? onTap,
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
  TextField buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return TextField(
      key: key?.buildKey(context, ref, helper),
      style: style?.build(context, ref, helper),
      strutStyle: strutStyle?.build(context, ref, helper),
      textAlign: textAlign?.build(context, ref, helper) ?? TextAlign.start,
      textDirection: textDirection?.build(context, ref, helper),
      readOnly: readOnly?.getValue(zacRef) ?? false,
      showCursor: showCursor?.getValue(zacRef),
      autofocus: autofocus?.getValue(zacRef) ?? false,
      obscuringCharacter: obscuringCharacter?.getValue(zacRef) ?? '•',
      obscureText: obscureText?.getValue(zacRef) ?? false,
      autocorrect: autocorrect?.getValue(zacRef) ?? true,
      enableSuggestions: enableSuggestions?.getValue(zacRef) ?? true,
      maxLines: maxLines?.getValue(zacRef),
      minLines: minLines?.getValue(zacRef),
      expands: expands?.getValue(zacRef) ?? false,
      maxLength: maxLength?.getValue(zacRef),
      enabled: enabled?.getValue(zacRef),
      cursorWidth: cursorWidth?.getValue(zacRef) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(zacRef),
      cursorRadius: cursorRadius?.build(context, ref, helper),
      cursorColor: cursorColor?.build(context, ref, helper),
      keyboardAppearance: keyboardAppearance?.build(context, ref, helper),
      scrollPadding: scrollPadding?.build(context, ref, helper) ??
          const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacRef) ?? true,
      clipBehavior: clipBehavior?.build(context, ref, helper) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(zacRef),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.getValue(zacRef) ?? true,
      onChanged: onChanged?.createCbParam1<String>(
        context: context,
        ref: ref,
        helper: helper,
      ),
      decoration:
          decoration?.build(context, ref, helper) ?? const InputDecoration(),
      keyboardType: keyboardType?.build(context, ref, helper),
      textInputAction: textInputAction?.build(context, ref, helper),
      textCapitalization: textCapitalization?.build(context, ref, helper) ??
          TextCapitalization.none,
      textAlignVertical: textAlignVertical?.build(context, ref, helper),
      smartDashesType: smartDashesType?.build(context, ref, helper),
      smartQuotesType: smartQuotesType?.build(context, ref, helper),
      selectionHeightStyle: selectionHeightStyle?.build(context, ref, helper) ??
          BoxHeightStyle.tight,
      selectionWidthStyle: selectionWidthStyle?.build(context, ref, helper) ??
          BoxWidthStyle.tight,
      onTap: onTap?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onEditingComplete: onEditingComplete?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onSubmitted: onSubmitted?.createCbParam1<String>(
        context: context,
        ref: ref,
        helper: helper,
      ),
    );
  }
}
