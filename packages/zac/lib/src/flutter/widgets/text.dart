import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'text.freezed.dart';
part 'text.g.dart';

@defaultConverterFreezed
class FlutterText with _$FlutterText implements FlutterWidget {
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
  Text buildWidget(ZacOriginWidgetTree origin) {
    return Text(
      data.getValue(origin),
      key: key?.buildKey(origin),
      style: style?.build(origin),
      strutStyle: strutStyle?.build(origin),
      textAlign: textAlign?.build(origin),
      textDirection: textDirection?.build(origin),
      locale: locale?.build(origin),
      softWrap: softWrap?.getValue(origin),
      overflow: overflow?.build(origin),
      textScaleFactor: textScaleFactor?.getValue(origin),
      maxLines: maxLines?.getValue(origin),
      semanticsLabel: semanticsLabel?.getValue(origin),
      textWidthBasis: textWidthBasis?.build(origin),
      textHeightBehavior: textHeightBehavior?.build(origin),
    );
  }
}
