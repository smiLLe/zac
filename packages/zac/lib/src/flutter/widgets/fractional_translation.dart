import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  FractionalTranslation buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return FractionalTranslation(
      key: key?.buildKey(context, ref, helper),
      child: child?.buildWidget(context, ref, helper),
      translation: translation.build(context, ref, helper),
      transformHitTests: transformHitTests?.getValue(zacRef) ?? true,
    );
  }
}
