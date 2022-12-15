import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'scroll_controller.freezed.dart';
part 'scroll_controller.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterScrollController
    with _$FlutterScrollController, ZacBuilder<Widget> {
  const FlutterScrollController._();

  static const String familyName = 'Zac.ScrollController';

  factory FlutterScrollController.fromJson(Map<String, dynamic> json) =>
      _$FlutterScrollControllerFromJson(json);

  @FreezedUnionValue('z:1:ScrollController.provide')
  factory FlutterScrollController({
    ZacValue<double?>? initialScrollOffset,
    ZacValue<bool?>? keepScrollOffset,
    ZacValue<String?>? debugLabel,
    SharedValueFamily? family,
    required ZacValue<Widget> child,
  }) = _ScrollControllerProvide;

  ScrollController _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref, ZacContext zacContext) {
    return map(
      (obj) => ScrollController(
        debugLabel: obj.debugLabel?.build(zacContext),
        initialScrollOffset: obj.initialScrollOffset?.build(zacContext) ?? 0.0,
        keepScrollOffset: obj.keepScrollOffset?.build(zacContext) ?? true,
      ),
    );
  }

  Widget _childBuilder(ZacContext zacContext) => map(
        (obj) => obj.child.build(zacContext),
      );

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(
      (obj) {
        return SharedValueProvider(
          childBuilder: _childBuilder,
          valueBuilder: _valueBuilder,
          family: obj.family ?? FlutterScrollController.familyName,
        );
      },
    );
  }
}
