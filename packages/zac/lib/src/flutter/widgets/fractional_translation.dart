import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'fractional_translation.freezed.dart';
part 'fractional_translation.g.dart';

@defaultConverterFreezed
class FlutterFractionalTranslation
    with _$FlutterFractionalTranslation
    implements ZacWidget {
  const FlutterFractionalTranslation._();

  static const String unionValue = 'f:1:FractionalTranslation';

  factory FlutterFractionalTranslation.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionalTranslationFromJson(json);

  @FreezedUnionValue(FlutterFractionalTranslation.unionValue)
  factory FlutterFractionalTranslation({
    FlutterKey? key,
    ZacWidget? child,
    required FlutterOffset translation,
    ZacBool? transformHitTests,
  }) = _FlutterFractionalTranslation;

  @override
  FractionalTranslation buildWidget(ZacBuildContext context) {
    return FractionalTranslation(
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
      translation: translation.build(context),
      transformHitTests: transformHitTests?.getValue(context) ?? true,
    );
  }
}
