import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

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
    ZacBuilder<Locale?>? locale,
    ZacBuilder<bool?>? softWrap,
    ZacBuilder<TextOverflow?>? overflow,
    ZacBuilder<double?>? textScaleFactor,
    ZacBuilder<int?>? maxLines,
    ZacBuilder<String?>? semanticsLabel,
    ZacBuilder<TextWidthBasis?>? textWidthBasis,
    ZacBuilder<TextHeightBehavior?>? textHeightBehavior,
  }) = _FlutterText;

  Text _buildWidget(BuildContext context, ZacContext zacContext) {
    return Text(
      data.build(context, zacContext),
      key: key?.build(context, zacContext),
      style: style?.build(context, zacContext),
      strutStyle: strutStyle?.build(context, zacContext),
      textAlign: textAlign?.build(context, zacContext),
      textDirection: textDirection?.build(context, zacContext),
      locale: locale?.build(context, zacContext),
      softWrap: softWrap?.build(context, zacContext),
      overflow: overflow?.build(context, zacContext),
      textScaleFactor: textScaleFactor?.build(context, zacContext),
      maxLines: maxLines?.build(context, zacContext),
      semanticsLabel: semanticsLabel?.build(context, zacContext),
      textWidthBasis: textWidthBasis?.build(context, zacContext),
      textHeightBehavior: textHeightBehavior?.build(context, zacContext),
    );
  }

  @override
  Text build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
