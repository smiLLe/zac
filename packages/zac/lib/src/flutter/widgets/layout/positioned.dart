import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'positioned.freezed.dart';
part 'positioned.g.dart';

@defaultConverterFreezed
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

  @override
  Positioned buildWidget(ZacOriginWidgetTree origin) {
    return map(
      (value) => Positioned(
        child: value.child.buildWidget(origin),
        key: value.key?.buildKey(origin),
        left: value.left?.getValue(origin),
        top: value.top?.getValue(origin),
        right: value.right?.getValue(origin),
        bottom: value.bottom?.getValue(origin),
        width: value.width?.getValue(origin),
        height: value.height?.getValue(origin),
      ),
      directional: (value) => Positioned.directional(
        child: value.child.buildWidget(origin),
        textDirection: value.textDirection.build(origin),
        key: value.key?.buildKey(origin),
        start: value.start?.getValue(origin),
        top: value.top?.getValue(origin),
        end: value.end?.getValue(origin),
        bottom: value.bottom?.getValue(origin),
        width: value.width?.getValue(origin),
        height: value.height?.getValue(origin),
      ),
      fill: (value) => Positioned.fill(
        child: value.child.buildWidget(origin),
        key: value.key?.buildKey(origin),
        left: value.left?.getValue(origin),
        top: value.top?.getValue(origin),
        right: value.right?.getValue(origin),
        bottom: value.bottom?.getValue(origin),
      ),
    );
  }
}
