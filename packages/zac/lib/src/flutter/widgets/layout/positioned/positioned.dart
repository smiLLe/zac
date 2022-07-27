import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'positioned.freezed.dart';
part 'positioned.g.dart';

@defaultConverterFreezed
class FlutterPositioned with _$FlutterPositioned implements ZacWidget {
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
    required ZacWidget child,
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
    required ZacWidget child,
  }) = _FlutterPositioned;

  @FreezedUnionValue(FlutterPositioned.unionValueFill)
  factory FlutterPositioned.fill({
    FlutterKey? key,
    ZacDouble? left,
    ZacDouble? top,
    ZacDouble? right,
    ZacDouble? bottom,
    required ZacWidget child,
  }) = _FlutterPositionedfill;

  @override
  Positioned buildWidget(ZacBuildContext context) {
    return map(
      (value) => Positioned(
        child: value.child.buildWidget(context),
        key: value.key?.build(context),
        left: value.left?.getValue(context),
        top: value.top?.getValue(context),
        right: value.right?.getValue(context),
        bottom: value.bottom?.getValue(context),
        width: value.width?.getValue(context),
        height: value.height?.getValue(context),
      ),
      directional: (value) => Positioned.directional(
        child: value.child.buildWidget(context),
        textDirection: value.textDirection.build(context),
        key: value.key?.build(context),
        start: value.start?.getValue(context),
        top: value.top?.getValue(context),
        end: value.end?.getValue(context),
        bottom: value.bottom?.getValue(context),
        width: value.width?.getValue(context),
        height: value.height?.getValue(context),
      ),
      fill: (value) => Positioned.fill(
        child: value.child.buildWidget(context),
        key: value.key?.build(context),
        left: value.left?.getValue(context),
        top: value.top?.getValue(context),
        right: value.right?.getValue(context),
        bottom: value.bottom?.getValue(context),
      ),
    );
  }
}
