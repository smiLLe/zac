import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';

part 'fractional_translation.freezed.dart';
part 'fractional_translation.g.dart';

@freezedZacBuilder
class FlutterFractionalTranslation
    with _$FlutterFractionalTranslation
    implements ZacBuilder<FractionalTranslation> {
  const FlutterFractionalTranslation._();

  static const String unionValue = 'f:1:FractionalTranslation';

  factory FlutterFractionalTranslation.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionalTranslationFromJson(json);

  @FreezedUnionValue(FlutterFractionalTranslation.unionValue)
  factory FlutterFractionalTranslation({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    required FlutterOffset translation,
    ZacBuilder<bool?>? transformHitTests,
  }) = _FlutterFractionalTranslation;

  FractionalTranslation _buildWidget(ZacContext zacContext) {
    return FractionalTranslation(
      key: key?.build(zacContext),
      translation: translation.build(zacContext),
      transformHitTests: transformHitTests?.build(zacContext) ?? true,
      child: child?.build(zacContext),
    );
  }

  @override
  FractionalTranslation build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
