import 'package:zac/src/zac/context.dart';
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
    ZacValue<double?>? left,
    ZacValue<double?>? top,
    ZacValue<double?>? right,
    ZacValue<double?>? bottom,
    ZacValue<double?>? width,
    ZacValue<double?>? height,
    required FlutterWidget child,
  }) = _FlutterPositioneddirectional;

  @FreezedUnionValue(FlutterPositioned.unionValueDirectional)
  factory FlutterPositioned.directional({
    FlutterKey? key,
    required FlutterTextDirection textDirection,
    ZacValue<double?>? start,
    ZacValue<double?>? top,
    ZacValue<double?>? end,
    ZacValue<double?>? bottom,
    ZacValue<double?>? width,
    ZacValue<double?>? height,
    required FlutterWidget child,
  }) = _FlutterPositioned;

  @FreezedUnionValue(FlutterPositioned.unionValueFill)
  factory FlutterPositioned.fill({
    FlutterKey? key,
    ZacValue<double?>? left,
    ZacValue<double?>? top,
    ZacValue<double?>? right,
    ZacValue<double?>? bottom,
    required FlutterWidget child,
  }) = _FlutterPositionedfill;

  Positioned _buildWidget(ZacContext zacContext) {
    return map(
      (value) => Positioned(
        key: value.key?.build(zacContext),
        left: value.left?.build(zacContext),
        top: value.top?.build(zacContext),
        right: value.right?.build(zacContext),
        bottom: value.bottom?.build(zacContext),
        width: value.width?.build(zacContext),
        height: value.height?.build(zacContext),
        child: value.child.build(zacContext),
      ),
      directional: (value) => Positioned.directional(
        textDirection: value.textDirection.build(zacContext),
        key: value.key?.build(zacContext),
        start: value.start?.build(zacContext),
        top: value.top?.build(zacContext),
        end: value.end?.build(zacContext),
        bottom: value.bottom?.build(zacContext),
        width: value.width?.build(zacContext),
        height: value.height?.build(zacContext),
        child: value.child.build(zacContext),
      ),
      fill: (value) => Positioned.fill(
        key: value.key?.build(zacContext),
        left: value.left?.build(zacContext),
        top: value.top?.build(zacContext),
        right: value.right?.build(zacContext),
        bottom: value.bottom?.build(zacContext),
        child: value.child.build(zacContext),
      ),
    );
  }

  @override
  Positioned build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
