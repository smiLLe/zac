import 'package:zac/src/flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'container.freezed.dart';
part 'container.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterContainer with _$FlutterContainer implements FlutterWidget {
  const FlutterContainer._();

  static const String unionValue = 'f:1:Container';

  factory FlutterContainer.fromJson(Map<String, dynamic> json) =>
      _$FlutterContainerFromJson(json);

  @FreezedUnionValue(FlutterContainer.unionValue)
  factory FlutterContainer({
    FlutterKey? key,
    FlutterWidget? child,
    FlutterColor? color,
    FlutterEdgeInsetsGeometry? margin,
    FlutterEdgeInsetsGeometry? padding,
    FlutterAlignmentGeometry? alignment,
    FlutterDecoration? decoration,
  }) = _FlutterContainer;

  Container _buildWidget(ZacContext zacContext) {
    return Container(
      key: key?.buildOrNull(zacContext),
      color: color?.build(zacContext),
      padding: padding?.build(zacContext),
      margin: margin?.build(zacContext),
      alignment: alignment?.build(zacContext),
      decoration: decoration?.build(zacContext),
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  Container build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Container? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
