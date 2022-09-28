import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  TextField buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return TextField(
      key: key?.buildKey(context, ref, zacContext),
      style: style?.build(context, ref, zacContext),
      strutStyle: strutStyle?.build(context, ref, zacContext),
      textAlign: textAlign?.build(context, ref, zacContext) ?? TextAlign.start,
      textDirection: textDirection?.build(context, ref, zacContext),
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
      cursorRadius: cursorRadius?.build(context, ref, zacContext),
      cursorColor: cursorColor?.build(context, ref, zacContext),
      keyboardAppearance: keyboardAppearance?.build(context, ref, zacContext),
      scrollPadding: scrollPadding?.build(context, ref, zacContext) ??
          const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacContext) ?? true,
      clipBehavior:
          clipBehavior?.build(context, ref, zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(zacContext),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.getValue(zacContext) ?? true,
      onChanged: actionsCallback1(onChanged, zacContext),
      decoration: decoration?.build(context, ref, zacContext) ??
          const InputDecoration(),
      keyboardType: keyboardType?.build(context, ref, zacContext),
      textInputAction: textInputAction?.build(context, ref, zacContext),
      textCapitalization: textCapitalization?.build(context, ref, zacContext) ??
          TextCapitalization.none,
      textAlignVertical: textAlignVertical?.build(context, ref, zacContext),
      smartDashesType: smartDashesType?.build(context, ref, zacContext),
      smartQuotesType: smartQuotesType?.build(context, ref, zacContext),
      selectionHeightStyle:
          selectionHeightStyle?.build(context, ref, zacContext) ??
              BoxHeightStyle.tight,
      selectionWidthStyle:
          selectionWidthStyle?.build(context, ref, zacContext) ??
              BoxWidthStyle.tight,
      onTap: actionsCallback(onTap, zacContext),
      onEditingComplete: actionsCallback(onEditingComplete, zacContext),
      onSubmitted: actionsCallback1(onSubmitted, zacContext),
    );
  }
}
