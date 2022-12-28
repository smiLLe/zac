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
class FlutterText with _$FlutterText implements ZacBuilder<Text> {
  const FlutterText._();

  static const String unionValue = 'f:1:Text';

  factory FlutterText.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextFromJson(json);

  @FreezedUnionValue(FlutterText.unionValue)
  factory FlutterText(
    ZacBuilder<String> data, {
    ZacBuilder<Key?>? key,
    ZacBuilder<TextStyle?>? style,
    ZacBuilder<StrutStyle?>? strutStyle,
    ZacBuilder<TextAlign?>? textAlign,
    ZacBuilder<TextDirection?>? textDirection,
    FlutterLocale? locale,
    ZacBuilder<bool?>? softWrap,
    FlutterTextOverflow? overflow,
    ZacBuilder<double?>? textScaleFactor,
    ZacBuilder<int?>? maxLines,
    ZacBuilder<String?>? semanticsLabel,
    ZacBuilder<TextWidthBasis?>? textWidthBasis,
    ZacBuilder<TextHeightBehavior?>? textHeightBehavior,
  }) = _FlutterText;

  Text _buildWidget(ZacContext zacContext) {
    return Text(
      data.build(zacContext),
      key: key?.build(zacContext),
      style: style?.build(zacContext),
      strutStyle: strutStyle?.build(zacContext),
      textAlign: textAlign?.build(zacContext),
      textDirection: textDirection?.build(zacContext),
      locale: locale?.build(zacContext),
      softWrap: softWrap?.build(zacContext),
      overflow: overflow?.build(zacContext),
      textScaleFactor: textScaleFactor?.build(zacContext),
      maxLines: maxLines?.build(zacContext),
      semanticsLabel: semanticsLabel?.build(zacContext),
      textWidthBasis: textWidthBasis?.build(zacContext),
      textHeightBehavior: textHeightBehavior?.build(zacContext),
    );
  }

  @override
  Text build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
