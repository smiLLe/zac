import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'text.freezed.dart';
part 'text.g.dart';

@freezedZacBuilder
class FlutterText with _$FlutterText implements ZacBuild<Text> {
  const FlutterText._();

  static const String unionValue = 'f:1:Text';

  factory FlutterText.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextFromJson(json);

  @FreezedUnionValue(FlutterText.unionValue)
  factory FlutterText(
    ZacValue<String> data, {
    ZacValue<Key?>? key,
    ZacValue<TextStyle?>? style,
    ZacValue<StrutStyle?>? strutStyle,
    ZacValue<TextAlign?>? textAlign,
    ZacValue<TextDirection?>? textDirection,
    FlutterLocale? locale,
    ZacValue<bool?>? softWrap,
    FlutterTextOverflow? overflow,
    ZacValue<double?>? textScaleFactor,
    ZacValue<int?>? maxLines,
    ZacValue<String?>? semanticsLabel,
    ZacValue<TextWidthBasis?>? textWidthBasis,
    ZacValue<TextHeightBehavior?>? textHeightBehavior,
  }) = _FlutterText;

  Text _buildWidget(ZacContext zacContext) {
    return Text(
      data.getValue(zacContext),
      key: key?.getValue(zacContext),
      style: style?.getValue(zacContext),
      strutStyle: strutStyle?.getValue(zacContext),
      textAlign: textAlign?.getValue(zacContext),
      textDirection: textDirection?.getValue(zacContext),
      locale: locale?.build(zacContext),
      softWrap: softWrap?.getValue(zacContext),
      overflow: overflow?.build(zacContext),
      textScaleFactor: textScaleFactor?.getValue(zacContext),
      maxLines: maxLines?.getValue(zacContext),
      semanticsLabel: semanticsLabel?.getValue(zacContext),
      textWidthBasis: textWidthBasis?.getValue(zacContext),
      textHeightBehavior: textHeightBehavior?.getValue(zacContext),
    );
  }

  @override
  Text build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
