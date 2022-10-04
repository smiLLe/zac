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
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';

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
    ZacInteractions? onChanged,
    // VoidCallback? onEditingComplete,
    ZacInteractions? onEditingComplete,
    // ValueChanged<String>? onSubmitted,
    ZacInteractions? onSubmitted,
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
    ZacInteractions? onTap,
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
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return TextField(
      key: key?.buildKey(context, ref, lifetime),
      style: style?.build(context, ref, lifetime),
      strutStyle: strutStyle?.build(context, ref, lifetime),
      textAlign: textAlign?.build(context, ref, lifetime) ?? TextAlign.start,
      textDirection: textDirection?.build(context, ref, lifetime),
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
      cursorRadius: cursorRadius?.build(context, ref, lifetime),
      cursorColor: cursorColor?.build(context, ref, lifetime),
      keyboardAppearance: keyboardAppearance?.build(context, ref, lifetime),
      scrollPadding: scrollPadding?.build(context, ref, lifetime) ??
          const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacRef) ?? true,
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(zacRef),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.getValue(zacRef) ?? true,
      onChanged: onChanged?.createCbParam1<String>(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      decoration:
          decoration?.build(context, ref, lifetime) ?? const InputDecoration(),
      keyboardType: keyboardType?.build(context, ref, lifetime),
      textInputAction: textInputAction?.build(context, ref, lifetime),
      textCapitalization: textCapitalization?.build(context, ref, lifetime) ??
          TextCapitalization.none,
      textAlignVertical: textAlignVertical?.build(context, ref, lifetime),
      smartDashesType: smartDashesType?.build(context, ref, lifetime),
      smartQuotesType: smartQuotesType?.build(context, ref, lifetime),
      selectionHeightStyle:
          selectionHeightStyle?.build(context, ref, lifetime) ??
              BoxHeightStyle.tight,
      selectionWidthStyle: selectionWidthStyle?.build(context, ref, lifetime) ??
          BoxWidthStyle.tight,
      onTap: onTap?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onEditingComplete: onEditingComplete?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onSubmitted: onSubmitted?.createCbParam1<String>(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
    );
  }
}
