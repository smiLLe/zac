import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'text_field.freezed.dart';
part 'text_field.g.dart';

@freezedZacBuilder
class FlutterTextField with _$FlutterTextField implements ZacBuild<TextField> {
  const FlutterTextField._();

  static const String unionValue = 'f:1:TextField';

  factory FlutterTextField.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextFieldFromJson(json);

  @FreezedUnionValue(FlutterTextField.unionValue)
  factory FlutterTextField({
    ZacValue<Key?>? key,
// TextEditingController? controller,
// FocusNode? focusNode,
    ZacValue<InputDecoration?>? decoration,
    ZacValue<TextInputType?>? keyboardType,
    FlutterTextInputAction? textInputAction,
    FlutterTextCapitalization? textCapitalization,
    ZacValue<TextStyle?>? style,
    ZacValue<StrutStyle?>? strutStyle,
    ZacValue<TextAlign?>? textAlign,
    FlutterTextAlignVertical? textAlignVertical,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<bool?>? readOnly,
// ToolbarOptions? toolbarOptions,
    ZacValue<bool?>? showCursor,
    ZacValue<bool?>? autofocus,
    ZacValue<String?>? obscuringCharacter,
    ZacValue<bool?>? obscureText,
    ZacValue<bool?>? autocorrect,
    FlutterSmartDashesType? smartDashesType,
    FlutterSmartQuotesType? smartQuotesType,
    ZacValue<bool?>? enableSuggestions,
    ZacValue<int?>? maxLines,
    ZacValue<int?>? minLines,
    ZacValue<bool?>? expands,
    ZacValue<int?>? maxLength,
    // ValueChanged<String>? onChanged,
    ZacActions? onChanged,
    // VoidCallback? onEditingComplete,
    ZacActions? onEditingComplete,
    // ValueChanged<String>? onSubmitted,
    ZacActions? onSubmitted,
// AppPrivateCommandCallback? onAppPrivateCommand,
// List<TextInputFormatter>? inputFormatters,
    ZacValue<bool?>? enabled,
    ZacValue<double?>? cursorWidth,
    ZacValue<double?>? cursorHeight,
    ZacValue<Radius?>? cursorRadius,
    ZacValue<Color?>? cursorColor,
    FlutterBoxHeightStyle? selectionHeightStyle,
    FlutterBoxWidthStyle? selectionWidthStyle,
    FlutterBrightness? keyboardAppearance,
    ZacValue<EdgeInsets?>? scrollPadding,
// DragStartBehavior? dragStartBehavior,
    ZacValue<bool?>? enableInteractiveSelection,
// TextSelectionControls? selectionControls,
    // GestureTapCallback? onTap,
    ZacActions? onTap,
// MouseCursor? mouseCursor,
// InputCounterWidgetBuilder? buildCounter,
    ZacValue<ScrollController?>? scrollController,
// ScrollPhysics? scrollPhysics,
// Iterable<String>? autofillHints = const <String>[],
    ZacValue<Clip?>? clipBehavior,
    ZacValue<String?>? restorationId,
    ZacValue<bool?>? enableIMEPersonalizedLearning,
  }) = _FlutterTextField;

  TextField _buildWidget(ZacContext zacContext) {
    return TextField(
      key: key?.getValue(zacContext),
      style: style?.getValue(zacContext),
      strutStyle: strutStyle?.getValue(zacContext),
      textAlign: textAlign?.getValue(zacContext) ?? TextAlign.start,
      textDirection: textDirection?.getValue(zacContext),
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
      cursorRadius: cursorRadius?.getValue(zacContext),
      cursorColor: cursorColor?.getValue(zacContext),
      keyboardAppearance: keyboardAppearance?.build(zacContext),
      scrollPadding:
          scrollPadding?.getValue(zacContext) ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.getValue(zacContext) ?? true,
      clipBehavior: clipBehavior?.getValue(zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(zacContext),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.getValue(zacContext) ?? true,
      onChanged: onChanged?.createCbParam1<String>(zacContext),
      decoration: decoration?.getValue(zacContext) ?? const InputDecoration(),
      keyboardType: keyboardType?.getValue(zacContext),
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
      scrollController: scrollController?.getValue(zacContext),
    );
  }

  @override
  TextField build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
