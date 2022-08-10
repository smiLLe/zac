import 'dart:ui';

import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/material/input_decoration.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  TextField buildWidget(ZacBuildContext context) {
    return TextField(
      key: key?.buildKey(context),
      style: style?.build(context),
      strutStyle: strutStyle?.build(context),
      textAlign: textAlign?.build(context) ?? TextAlign.start,
      textDirection: textDirection?.build(context),
      readOnly: readOnly?.getValue(context) ?? false,
      showCursor: showCursor?.getValue(context),
      autofocus: autofocus?.getValue(context) ?? false,
      obscuringCharacter: obscuringCharacter?.getValue(context) ?? '•',
      obscureText: obscureText?.getValue(context) ?? false,
      autocorrect: autocorrect?.getValue(context) ?? true,
      enableSuggestions: enableSuggestions?.getValue(context) ?? true,
      maxLines: maxLines?.getValue(context),
      minLines: minLines?.getValue(context),
      expands: expands?.getValue(context) ?? false,
      maxLength: maxLength?.getValue(context),
      enabled: enabled?.getValue(context),
      cursorWidth: cursorWidth?.getValue(context) ?? 2.0,
      cursorHeight: cursorHeight?.getValue(context),
      cursorRadius: cursorRadius?.build(context),
      cursorColor: cursorColor?.build(context),
      keyboardAppearance: keyboardAppearance?.build(context),
      scrollPadding:
          scrollPadding?.build(context) ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(context) ?? true,
      clipBehavior: clipBehavior?.build(context) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(context),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.getValue(context) ?? true,
      onChanged: actionsCallback1(onChanged, context),
      decoration: decoration?.build(context) ?? const InputDecoration(),
      keyboardType: keyboardType?.build(context),
      textInputAction: textInputAction?.build(context),
      textCapitalization:
          textCapitalization?.build(context) ?? TextCapitalization.none,
      textAlignVertical: textAlignVertical?.build(context),
      smartDashesType: smartDashesType?.build(context),
      smartQuotesType: smartQuotesType?.build(context),
      selectionHeightStyle:
          selectionHeightStyle?.build(context) ?? BoxHeightStyle.tight,
      selectionWidthStyle:
          selectionWidthStyle?.build(context) ?? BoxWidthStyle.tight,
      onTap: actionsCallback(onTap, context),
      onEditingComplete: actionsCallback(onEditingComplete, context),
      onSubmitted: actionsCallback1(onSubmitted, context),
    );
  }
}
