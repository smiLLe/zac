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

  FractionalTranslation _buildWidget(
      BuildContext context, ZacContext zacContext) {
    return FractionalTranslation(
      key: key?.build(context, zacContext),
      translation: translation.build(context, zacContext),
      transformHitTests: transformHitTests?.build(context, zacContext) ?? true,
      child: child?.build(context, zacContext),
    );
  }

  @override
  FractionalTranslation build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
