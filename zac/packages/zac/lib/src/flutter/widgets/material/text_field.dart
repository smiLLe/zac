import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/material/input_decoration.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';
import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'text_field.freezed.dart';
part 'text_field.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    FlutterScrollController? scrollController,
// ScrollPhysics? scrollPhysics,
// Iterable<String>? autofillHints = const <String>[],
    FlutterClip? clipBehavior,
    ZacString? restorationId,
    ZacBool? enableIMEPersonalizedLearning,
  }) = _FlutterTextField;

  TextField _buildWidget(ZacContext zacContext) {
    return TextField(
      key: key?.buildOrNull(zacContext),
      style: style?.buildOrNull(zacContext),
      strutStyle: strutStyle?.buildOrNull(zacContext),
      textAlign: textAlign?.buildOrNull(zacContext) ?? TextAlign.start,
      textDirection: textDirection?.buildOrNull(zacContext),
      readOnly: readOnly?.buildOrNull(zacContext) ?? false,
      showCursor: showCursor?.buildOrNull(zacContext),
      autofocus: autofocus?.buildOrNull(zacContext) ?? false,
      obscuringCharacter: obscuringCharacter?.buildOrNull(zacContext) ?? '•',
      obscureText: obscureText?.buildOrNull(zacContext) ?? false,
      autocorrect: autocorrect?.buildOrNull(zacContext) ?? true,
      enableSuggestions: enableSuggestions?.buildOrNull(zacContext) ?? true,
      maxLines: maxLines?.buildOrNull(zacContext),
      minLines: minLines?.buildOrNull(zacContext),
      expands: expands?.buildOrNull(zacContext) ?? false,
      maxLength: maxLength?.buildOrNull(zacContext),
      enabled: enabled?.buildOrNull(zacContext),
      cursorWidth: cursorWidth?.buildOrNull(zacContext) ?? 2.0,
      cursorHeight: cursorHeight?.buildOrNull(zacContext),
      cursorRadius: cursorRadius?.buildOrNull(zacContext),
      cursorColor: cursorColor?.buildOrNull(zacContext),
      keyboardAppearance: keyboardAppearance?.buildOrNull(zacContext),
      scrollPadding:
          scrollPadding?.buildOrNull(zacContext) ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection:
          enableInteractiveSelection?.buildOrNull(zacContext) ?? true,
      clipBehavior: clipBehavior?.buildOrNull(zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.buildOrNull(zacContext),
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning?.buildOrNull(zacContext) ?? true,
      onChanged: onChanged?.createCbParam1<String>(zacContext),
      decoration:
          decoration?.buildOrNull(zacContext) ?? const InputDecoration(),
      keyboardType: keyboardType?.buildOrNull(zacContext),
      textInputAction: textInputAction?.buildOrNull(zacContext),
      textCapitalization: textCapitalization?.buildOrNull(zacContext) ??
          TextCapitalization.none,
      textAlignVertical: textAlignVertical?.buildOrNull(zacContext),
      smartDashesType: smartDashesType?.buildOrNull(zacContext),
      smartQuotesType: smartQuotesType?.buildOrNull(zacContext),
      selectionHeightStyle:
          selectionHeightStyle?.buildOrNull(zacContext) ?? BoxHeightStyle.tight,
      selectionWidthStyle:
          selectionWidthStyle?.buildOrNull(zacContext) ?? BoxWidthStyle.tight,
      onTap: onTap?.createCb(zacContext),
      onEditingComplete: onEditingComplete?.createCb(zacContext),
      onSubmitted: onSubmitted?.createCbParam1<String>(zacContext),
      scrollController: scrollController?.buildOrNull(zacContext),
    );
  }

  @override
  TextField build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  TextField? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
