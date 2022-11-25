import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'rotated_box.freezed.dart';
part 'rotated_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterRotatedBox with _$FlutterRotatedBox implements FlutterWidget {
  const FlutterRotatedBox._();

  static const String unionValue = 'f:1:RotatedBox';

  factory FlutterRotatedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterRotatedBoxFromJson(json);

  @FreezedUnionValue(FlutterRotatedBox.unionValue)
  factory FlutterRotatedBox({
    FlutterKey? key,
    FlutterWidget? child,
    required int quarterTurns,
  }) = _FlutterRotatedBox;

  RotatedBox _buildWidget(ZacContext zacContext) {
    return RotatedBox(
      key: key?.buildOrNull(zacContext),
      quarterTurns: quarterTurns,
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  RotatedBox build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  RotatedBox? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
