import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'scroll_controller.freezed.dart';
part 'scroll_controller.g.dart';

/// An app must provide its own [ScrollController] through
/// [SharedValueProviderBuilder] or [SharedValueProvider].
///
/// This class is only here in order to consume the shared [ScrollController]
@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB)
class FlutterScrollController
    with _$FlutterScrollController, ZacBuilder<ScrollController> {
  const FlutterScrollController._();

  factory FlutterScrollController.fromJson(Map<String, dynamic> json) =>
      _$FlutterScrollControllerFromJson(json);

  @FreezedUnionValue('z:1:ScrollController.consume')
  @With<ConsumeSharedValue<ScrollController>>()
  factory FlutterScrollController.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ScrollControllerConsumeSharedValue;

  @override
  ScrollController build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(consume: (obj) => obj.buildConsume(zacContext, onConsume));
  }

  @override
  ScrollController? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(consume: (obj) => obj.buildConsumeOrNull(zacContext, onConsume));
  }
}
