import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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

  Text _buildWidget(ZacContext zacContext) {
    return Text(
      data.build(zacContext),
      key: key?.buildOrNull(zacContext),
      style: style?.buildOrNull(zacContext),
      strutStyle: strutStyle?.buildOrNull(zacContext),
      textAlign: textAlign?.buildOrNull(zacContext),
      textDirection: textDirection?.buildOrNull(zacContext),
      locale: locale?.buildOrNull(zacContext),
      softWrap: softWrap?.buildOrNull(zacContext),
      overflow: overflow?.buildOrNull(zacContext),
      textScaleFactor: textScaleFactor?.buildOrNull(zacContext),
      maxLines: maxLines?.buildOrNull(zacContext),
      semanticsLabel: semanticsLabel?.buildOrNull(zacContext),
      textWidthBasis: textWidthBasis?.buildOrNull(zacContext),
      textHeightBehavior: textHeightBehavior?.buildOrNull(zacContext),
    );
  }

  @override
  Text build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Text? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
