import 'package:zac/src/zac/context.dart';
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
  Positioned buildWidget(ZacContext zacContext) {
    return map(
      (value) => Positioned(
        child: value.child.buildWidget(zacContext),
        key: value.key?.buildKey(zacContext),
        left: value.left?.getValue(zacContext),
        top: value.top?.getValue(zacContext),
        right: value.right?.getValue(zacContext),
        bottom: value.bottom?.getValue(zacContext),
        width: value.width?.getValue(zacContext),
        height: value.height?.getValue(zacContext),
      ),
      directional: (value) => Positioned.directional(
        child: value.child.buildWidget(zacContext),
        textDirection: value.textDirection.build(zacContext),
        key: value.key?.buildKey(zacContext),
        start: value.start?.getValue(zacContext),
        top: value.top?.getValue(zacContext),
        end: value.end?.getValue(zacContext),
        bottom: value.bottom?.getValue(zacContext),
        width: value.width?.getValue(zacContext),
        height: value.height?.getValue(zacContext),
      ),
      fill: (value) => Positioned.fill(
        child: value.child.buildWidget(zacContext),
        key: value.key?.buildKey(zacContext),
        left: value.left?.getValue(zacContext),
        top: value.top?.getValue(zacContext),
        right: value.right?.getValue(zacContext),
        bottom: value.bottom?.getValue(zacContext),
      ),
    );
  }
}
