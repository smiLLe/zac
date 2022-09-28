import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  Text buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Text(
      data.getValue(zacContext),
      key: key?.buildKey(context, ref, zacContext),
      style: style?.build(context, ref, zacContext),
      strutStyle: strutStyle?.build(context, ref, zacContext),
      textAlign: textAlign?.build(context, ref, zacContext),
      textDirection: textDirection?.build(context, ref, zacContext),
      locale: locale?.build(context, ref, zacContext),
      softWrap: softWrap?.getValue(zacContext),
      overflow: overflow?.build(context, ref, zacContext),
      textScaleFactor: textScaleFactor?.getValue(zacContext),
      maxLines: maxLines?.getValue(zacContext),
      semanticsLabel: semanticsLabel?.getValue(zacContext),
      textWidthBasis: textWidthBasis?.build(context, ref, zacContext),
      textHeightBehavior: textHeightBehavior?.build(context, ref, zacContext),
    );
  }
}
