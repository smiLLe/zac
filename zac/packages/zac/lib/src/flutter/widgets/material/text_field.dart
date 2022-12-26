import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'text_field.freezed.dart';
part 'text_field.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
      key: key?.build(zacContext),
      style: style?.build(zacContext),
      strutStyle: strutStyle?.build(zacContext),
      textAlign: textAlign?.build(zacContext) ?? TextAlign.start,
      textDirection: textDirection?.build(zacContext),
      readOnly: readOnly?.build(zacContext) ?? false,
      showCursor: showCursor?.build(zacContext),
      autofocus: autofocus?.build(zacContext) ?? false,
      obscuringCharacter: obscuringCharacter?.build(zacContext) ?? '•',
      obscureText: obscureText?.build(zacContext) ?? false,
      autocorrect: autocorrect?.build(zacContext) ?? true,
      enableSuggestions: enableSuggestions?.build(zacContext) ?? true,
      maxLines: maxLines?.build(zacContext),
      minLines: minLines?.build(zacContext),
      expands: expands?.build(zacContext) ?? false,
      maxLength: maxLength?.build(zacContext),
      enabled: enabled?.build(zacContext),
      cursorWidth: cursorWidth?.build(zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.build(zacContext),
      cursorRadius: cursorRadius?.build(zacContext),
      cursorColor: cursorColor?.build(zacContext),
      keyboardAppearance: keyboardAppearance?.build(zacContext),
      scrollPadding:
          scrollPadding?.build(zacContext) ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.build(zacContext) ?? true,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.build(zacContext),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.build(zacContext) ?? true,
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
      scrollController: scrollController?.build(zacContext),
    );
  }

  @override
  TextField build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
