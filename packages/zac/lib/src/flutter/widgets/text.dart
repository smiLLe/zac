import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
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
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return Text(
      data.getValue(zacRef),
      key: key?.buildKey(context, ref, helper),
      style: style?.build(context, ref, helper),
      strutStyle: strutStyle?.build(context, ref, helper),
      textAlign: textAlign?.build(context, ref, helper),
      textDirection: textDirection?.build(context, ref, helper),
      locale: locale?.build(context, ref, helper),
      softWrap: softWrap?.getValue(zacRef),
      overflow: overflow?.build(context, ref, helper),
      textScaleFactor: textScaleFactor?.getValue(zacRef),
      maxLines: maxLines?.getValue(zacRef),
      semanticsLabel: semanticsLabel?.getValue(zacRef),
      textWidthBasis: textWidthBasis?.build(context, ref, helper),
      textHeightBehavior: textHeightBehavior?.build(context, ref, helper),
    );
  }
}
