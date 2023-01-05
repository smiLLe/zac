import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'scroll_controller.freezed.dart';
part 'scroll_controller.g.dart';

@freezedZacBuilder
class FlutterScrollController
    with _$FlutterScrollController, ZacBuilder<Widget> {
  const FlutterScrollController._();

  static const String familyName = 'Zac.ScrollController';

  factory FlutterScrollController.fromJson(Map<String, dynamic> json) =>
      _$FlutterScrollControllerFromJson(json);

  @FreezedUnionValue('z:1:ScrollController.provide')
  factory FlutterScrollController({
    ZacBuilder<double?>? initialScrollOffset,
    ZacBuilder<bool?>? keepScrollOffset,
    ZacBuilder<String?>? debugLabel,
    SharedValueFamily? family,
    required ZacBuilder<Widget> child,
  }) = _ScrollControllerProvide;

  ScrollController _valueBuilder(AutoDisposeStateProviderRef<Object?> ref,
      BuildContext context, ZacContext zacContext) {
    return map(
      (obj) => ScrollController(
        debugLabel: obj.debugLabel?.build(context, zacContext),
        initialScrollOffset:
            obj.initialScrollOffset?.build(context, zacContext) ?? 0.0,
        keepScrollOffset:
            obj.keepScrollOffset?.build(context, zacContext) ?? true,
      ),
    );
  }

  Widget _childBuilder(BuildContext context, ZacContext zacContext) => map(
        (obj) => obj.child.build(context, zacContext),
      );

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
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
