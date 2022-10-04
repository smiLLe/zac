import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  Text buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Text(
      data.getValue(zacRef),
      key: key?.buildKey(context, ref, lifetime),
      style: style?.build(context, ref, lifetime),
      strutStyle: strutStyle?.build(context, ref, lifetime),
      textAlign: textAlign?.build(context, ref, lifetime),
      textDirection: textDirection?.build(context, ref, lifetime),
      locale: locale?.build(context, ref, lifetime),
      softWrap: softWrap?.getValue(zacRef),
      overflow: overflow?.build(context, ref, lifetime),
      textScaleFactor: textScaleFactor?.getValue(zacRef),
      maxLines: maxLines?.getValue(zacRef),
      semanticsLabel: semanticsLabel?.getValue(zacRef),
      textWidthBasis: textWidthBasis?.build(context, ref, lifetime),
      textHeightBehavior: textHeightBehavior?.build(context, ref, lifetime),
    );
  }
}
