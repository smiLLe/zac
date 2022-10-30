import 'package:zac/src/zac/context.dart';
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
@TsClass(order: tsOrderFlutterWidget)
class FlutterText with _$FlutterText implements FlutterWidget {
  const FlutterText._();

  static const String unionValue = 'f:1:Text';

  factory FlutterText.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextFromJson(json);

  @FreezedUnionValue(FlutterText.unionValue)
  factory FlutterText(
    ZacValue<String> data, {
    FlutterKey? key,
    FlutterTextStyle? style,
    FlutterStrutStyle? strutStyle,
    FlutterTextAlign? textAlign,
    FlutterTextDirection? textDirection,
    FlutterLocale? locale,
    ZacValue<bool>? softWrap,
    FlutterTextOverflow? overflow,
    ZacValue<double>? textScaleFactor,
    ZacValue<int>? maxLines,
    ZacValue<String>? semanticsLabel,
    FlutterTextWidthBasis? textWidthBasis,
    FlutterTextHeightBehavior? textHeightBehavior,
  }) = _FlutterText;

  @override
  Text buildWidget(ZacContext zacContext) {
    return Text(
      data.getValue(zacContext),
      key: key?.buildKey(zacContext),
      style: style?.build(zacContext),
      strutStyle: strutStyle?.build(zacContext),
      textAlign: textAlign?.build(zacContext),
      textDirection: textDirection?.build(zacContext),
      locale: locale?.build(zacContext),
      softWrap: softWrap?.getValue(zacContext),
      overflow: overflow?.build(zacContext),
      textScaleFactor: textScaleFactor?.getValue(zacContext),
      maxLines: maxLines?.getValue(zacContext),
      semanticsLabel: semanticsLabel?.getValue(zacContext),
      textWidthBasis: textWidthBasis?.build(zacContext),
      textHeightBehavior: textHeightBehavior?.build(zacContext),
    );
  }
}
