import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterOverflowBox with _$FlutterOverflowBox implements FlutterWidget {
  const FlutterOverflowBox._();

  static const String unionValue = 'f:1:OverflowBox';

  factory FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterOverflowBox.unionValue)
  factory FlutterOverflowBox({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    ZacDouble? minWidth,
    ZacDouble? maxWidth,
    ZacDouble? minHeight,
    ZacDouble? maxHeight,
    FlutterWidget? child,
  }) = _FlutterOverflowBox;

  OverflowBox _buildWidget(ZacContext zacContext) {
    return OverflowBox(
      key: key?.buildOrNull(zacContext),
      alignment: alignment?.buildOrNull(zacContext) ?? Alignment.center,
      minWidth: minWidth?.buildOrNull(zacContext),
      maxWidth: maxWidth?.buildOrNull(zacContext),
      minHeight: minHeight?.buildOrNull(zacContext),
      maxHeight: maxHeight?.buildOrNull(zacContext),
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  OverflowBox build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  OverflowBox? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
