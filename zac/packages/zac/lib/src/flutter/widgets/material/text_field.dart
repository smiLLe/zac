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

part 'text_field.freezed.dart';
part 'text_field.g.dart';

@freezedZacBuilder
class FlutterTextField
    with _$FlutterTextField
    implements ZacBuilder<TextField> {
  const FlutterTextField._();

  static const String unionValue = 'f:1:TextField';

  factory FlutterTextField.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextFieldFromJson(json);

  @FreezedUnionValue(FlutterTextField.unionValue)
  factory FlutterTextField({
    ZacBuilder<Key?>? key,
// TextEditingController? controller,
// FocusNode? focusNode,
    ZacBuilder<InputDecoration?>? decoration,
    ZacBuilder<TextInputType?>? keyboardType,
    ZacBuilder<TextInputAction?>? textInputAction,
    ZacBuilder<TextCapitalization?>? textCapitalization,
    ZacBuilder<TextStyle?>? style,
    ZacBuilder<StrutStyle?>? strutStyle,
    ZacBuilder<TextAlign?>? textAlign,
    ZacBuilder<TextAlignVertical?>? textAlignVertical,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<bool?>? readOnly,
// ToolbarOptions? toolbarOptions,
    ZacBuilder<bool?>? showCursor,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<String?>? obscuringCharacter,
    ZacBuilder<bool?>? obscureText,
    ZacBuilder<bool?>? autocorrect,
    ZacBuilder<SmartDashesType?>? smartDashesType,
    ZacBuilder<SmartQuotesType?>? smartQuotesType,
    ZacBuilder<bool?>? enableSuggestions,
    ZacBuilder<int?>? maxLines,
    ZacBuilder<int?>? minLines,
    ZacBuilder<bool?>? expands,
    ZacBuilder<int?>? maxLength,
    // ValueChanged<String>? onChanged,
    ZacActions? onChanged,
    // VoidCallback? onEditingComplete,
    ZacActions? onEditingComplete,
    // ValueChanged<String>? onSubmitted,
    ZacActions? onSubmitted,
// AppPrivateCommandCallback? onAppPrivateCommand,
// List<TextInputFormatter>? inputFormatters,
    ZacBuilder<bool?>? enabled,
    ZacBuilder<double?>? cursorWidth,
    ZacBuilder<double?>? cursorHeight,
    ZacBuilder<Radius?>? cursorRadius,
    ZacBuilder<Color?>? cursorColor,
    ZacBuilder<BoxHeightStyle?>? selectionHeightStyle,
    ZacBuilder<BoxWidthStyle?>? selectionWidthStyle,
    ZacBuilder<Brightness?>? keyboardAppearance,
    ZacBuilder<EdgeInsets?>? scrollPadding,
// DragStartBehavior? dragStartBehavior,
    ZacBuilder<bool?>? enableInteractiveSelection,
// TextSelectionControls? selectionControls,
    // GestureTapCallback? onTap,
    ZacActions? onTap,
// MouseCursor? mouseCursor,
// InputCounterWidgetBuilder? buildCounter,
    ZacBuilder<ScrollController?>? scrollController,
// ScrollPhysics? scrollPhysics,
// Iterable<String>? autofillHints = const <String>[],
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<String?>? restorationId,
    ZacBuilder<bool?>? enableIMEPersonalizedLearning,
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
      onChanged:
          onChanged?.build(zacContext).createCbParam1<String>(zacContext),
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
      onTap: onTap?.build(zacContext).createCb(zacContext),
      onEditingComplete:
          onEditingComplete?.build(zacContext).createCb(zacContext),
      onSubmitted:
          onSubmitted?.build(zacContext).createCbParam1<String>(zacContext),
      scrollController: scrollController?.build(zacContext),
    );
  }

  @override
  TextField build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
