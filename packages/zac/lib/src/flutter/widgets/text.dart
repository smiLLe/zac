import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'text.freezed.dart';
part 'text.g.dart';

@defaultConverterFreezed
class FlutterText with _$FlutterText implements ZacWidget {
  const FlutterText._();

  static const String unionValue = 'f:1:Text';

  factory FlutterText.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextFromJson(json);

  @FreezedUnionValue(FlutterText.unionValue)
  factory FlutterText(
    ZacString data, {
    FlutterKey? key,
    FlutterTextStyle? style,
    FlutterStrutStyle? strutStyle,
    FlutterTextAlign? textAlign,
    FlutterTextDirection? textDirection,
    FlutterLocale? locale,
    ZacBool? softWrap,
    FlutterTextOverflow? overflow,
    ZacDouble? textScaleFactor,
    ZacInt? maxLines,
    ZacString? semanticsLabel,
    FlutterTextWidthBasis? textWidthBasis,
    FlutterTextHeightBehavior? textHeightBehavior,
  }) = _FlutterText;

  @override
  Text buildWidget(ZacBuildContext context) {
    return Text(
      data.getValue(context),
      key: key?.buildKey(context),
      style: style?.build(context),
      strutStyle: strutStyle?.build(context),
      textAlign: textAlign?.build(context),
      textDirection: textDirection?.build(context),
      locale: locale?.build(context),
      softWrap: softWrap?.getValue(context),
      overflow: overflow?.build(context),
      textScaleFactor: textScaleFactor?.getValue(context),
      maxLines: maxLines?.getValue(context),
      semanticsLabel: semanticsLabel?.getValue(context),
      textWidthBasis: textWidthBasis?.build(context),
      textHeightBehavior: textHeightBehavior?.build(context),
    );
  }
}
