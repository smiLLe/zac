import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'fractional_translation.freezed.dart';
part 'fractional_translation.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterFractionalTranslation
    with _$FlutterFractionalTranslation
    implements FlutterWidget {
  const FlutterFractionalTranslation._();

  static const String unionValue = 'f:1:FractionalTranslation';

  factory FlutterFractionalTranslation.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionalTranslationFromJson(json);

  @FreezedUnionValue(FlutterFractionalTranslation.unionValue)
  factory FlutterFractionalTranslation({
    FlutterKey? key,
    FlutterWidget? child,
    required FlutterOffset translation,
    ZacValue<bool>? transformHitTests,
  }) = _FlutterFractionalTranslation;

  @override
  FractionalTranslation buildWidget(ZacContext zacContext) {
    return FractionalTranslation(
      key: key?.buildKey(zacContext),
      translation: translation.build(zacContext),
      transformHitTests: transformHitTests?.getValue(zacContext) ?? true,
      child: child?.buildWidget(zacContext),
    );
  }
}
