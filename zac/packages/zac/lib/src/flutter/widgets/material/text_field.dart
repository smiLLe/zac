import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
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
    ZacBuilder<List<ZacAction>?>? onChanged,
    // VoidCallback? onEditingComplete,
    ZacBuilder<List<ZacAction>?>? onEditingComplete,
    // ValueChanged<String>? onSubmitted,
    ZacBuilder<List<ZacAction>?>? onSubmitted,
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
    ZacBuilder<List<ZacAction>?>? onTap,
// MouseCursor? mouseCursor,
// InputCounterWidgetBuilder? buildCounter,
    ZacBuilder<ScrollController?>? scrollController,
// ScrollPhysics? scrollPhysics,
// Iterable<String>? autofillHints = const <String>[],
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<String?>? restorationId,
    ZacBuilder<bool?>? enableIMEPersonalizedLearning,
  }) = _FlutterTextField;

  TextField _buildWidget(BuildContext context, ZacContext zacContext) {
    return TextField(
      key: key?.build(context, zacContext),
      style: style?.build(context, zacContext),
      strutStyle: strutStyle?.build(context, zacContext),
      textAlign: textAlign?.build(context, zacContext) ?? TextAlign.start,
      textDirection: textDirection?.build(context, zacContext),
      readOnly: readOnly?.build(context, zacContext) ?? false,
      showCursor: showCursor?.build(context, zacContext),
      autofocus: autofocus?.build(context, zacContext) ?? false,
      obscuringCharacter: obscuringCharacter?.build(context, zacContext) ?? '•',
      obscureText: obscureText?.build(context, zacContext) ?? false,
      autocorrect: autocorrect?.build(context, zacContext) ?? true,
      enableSuggestions: enableSuggestions?.build(context, zacContext) ?? true,
      maxLines: maxLines?.build(context, zacContext),
      minLines: minLines?.build(context, zacContext),
      expands: expands?.build(context, zacContext) ?? false,
      maxLength: maxLength?.build(context, zacContext),
      enabled: enabled?.build(context, zacContext),
      cursorWidth: cursorWidth?.build(context, zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.build(context, zacContext),
      cursorRadius: cursorRadius?.build(context, zacContext),
      cursorColor: cursorColor?.build(context, zacContext),
      keyboardAppearance: keyboardAppearance?.build(context, zacContext),
      scrollPadding: scrollPadding?.build(context, zacContext) ??
          const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.build(context, zacContext) ?? true,
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.build(context, zacContext),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.build(context, zacContext) ?? true,
      onChanged: onChanged
          ?.build(context, zacContext)
          ?.createCbParam1<String>(context, zacContext),
      decoration:
          decoration?.build(context, zacContext) ?? const InputDecoration(),
      keyboardType: keyboardType?.build(context, zacContext),
      textInputAction: textInputAction?.build(context, zacContext),
      textCapitalization: textCapitalization?.build(context, zacContext) ??
          TextCapitalization.none,
      textAlignVertical: textAlignVertical?.build(context, zacContext),
      smartDashesType: smartDashesType?.build(context, zacContext),
      smartQuotesType: smartQuotesType?.build(context, zacContext),
      selectionHeightStyle: selectionHeightStyle?.build(context, zacContext) ??
          BoxHeightStyle.tight,
      selectionWidthStyle: selectionWidthStyle?.build(context, zacContext) ??
          BoxWidthStyle.tight,
      onTap: onTap?.build(context, zacContext)?.createCb(context, zacContext),
      onEditingComplete: onEditingComplete
          ?.build(context, zacContext)
          ?.createCb(context, zacContext),
      onSubmitted: onSubmitted
          ?.build(context, zacContext)
          ?.createCbParam1<String>(context, zacContext),
      scrollController: scrollController?.build(context, zacContext),
    );
  }

  @override
  TextField build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
