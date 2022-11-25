import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'positioned.freezed.dart';
part 'positioned.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterPositioned with _$FlutterPositioned implements FlutterWidget {
  const FlutterPositioned._();

  static const String unionValue = 'f:1:Positioned';
  static const String unionValueDirectional = 'f:1:Positioned.directional';
  static const String unionValueFill = 'f:1:Positioned.fill';

  factory FlutterPositioned.fromJson(Map<String, dynamic> json) =>
      _$FlutterPositionedFromJson(json);

  @FreezedUnionValue(FlutterPositioned.unionValue)
  factory FlutterPositioned({
    FlutterKey? key,
    ZacDouble? left,
    ZacDouble? top,
    ZacDouble? right,
    ZacDouble? bottom,
    ZacDouble? width,
    ZacDouble? height,
    required FlutterWidget child,
  }) = _FlutterPositioneddirectional;

  @FreezedUnionValue(FlutterPositioned.unionValueDirectional)
  factory FlutterPositioned.directional({
    FlutterKey? key,
    required FlutterTextDirection textDirection,
    ZacDouble? start,
    ZacDouble? top,
    ZacDouble? end,
    ZacDouble? bottom,
    ZacDouble? width,
    ZacDouble? height,
    required FlutterWidget child,
  }) = _FlutterPositioned;

  @FreezedUnionValue(FlutterPositioned.unionValueFill)
  factory FlutterPositioned.fill({
    FlutterKey? key,
    ZacDouble? left,
    ZacDouble? top,
    ZacDouble? right,
    ZacDouble? bottom,
    required FlutterWidget child,
  }) = _FlutterPositionedfill;

  Positioned _buildWidget(ZacContext zacContext) {
    return map(
      (value) => Positioned(
        key: value.key?.buildOrNull(zacContext),
        left: value.left?.buildOrNull(zacContext),
        top: value.top?.buildOrNull(zacContext),
        right: value.right?.buildOrNull(zacContext),
        bottom: value.bottom?.buildOrNull(zacContext),
        width: value.width?.buildOrNull(zacContext),
        height: value.height?.buildOrNull(zacContext),
        child: value.child.build(zacContext),
      ),
      directional: (value) => Positioned.directional(
        textDirection: value.textDirection.build(zacContext),
        key: value.key?.buildOrNull(zacContext),
        start: value.start?.buildOrNull(zacContext),
        top: value.top?.buildOrNull(zacContext),
        end: value.end?.buildOrNull(zacContext),
        bottom: value.bottom?.buildOrNull(zacContext),
        width: value.width?.buildOrNull(zacContext),
        height: value.height?.buildOrNull(zacContext),
        child: value.child.build(zacContext),
      ),
      fill: (value) => Positioned.fill(
        key: value.key?.buildOrNull(zacContext),
        left: value.left?.buildOrNull(zacContext),
        top: value.top?.buildOrNull(zacContext),
        right: value.right?.buildOrNull(zacContext),
        bottom: value.bottom?.buildOrNull(zacContext),
        child: value.child.build(zacContext),
      ),
    );
  }

  @override
  Positioned build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Positioned? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
