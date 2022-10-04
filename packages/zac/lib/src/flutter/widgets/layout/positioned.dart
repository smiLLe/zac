import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

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
  Positioned buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      (value) => Positioned(
        child: value.child.buildWidget(context, ref, lifetime),
        key: value.key?.buildKey(context, ref, lifetime),
        left: value.left?.getValue(zacRef),
        top: value.top?.getValue(zacRef),
        right: value.right?.getValue(zacRef),
        bottom: value.bottom?.getValue(zacRef),
        width: value.width?.getValue(zacRef),
        height: value.height?.getValue(zacRef),
      ),
      directional: (value) => Positioned.directional(
        child: value.child.buildWidget(context, ref, lifetime),
        textDirection: value.textDirection.build(context, ref, lifetime),
        key: value.key?.buildKey(context, ref, lifetime),
        start: value.start?.getValue(zacRef),
        top: value.top?.getValue(zacRef),
        end: value.end?.getValue(zacRef),
        bottom: value.bottom?.getValue(zacRef),
        width: value.width?.getValue(zacRef),
        height: value.height?.getValue(zacRef),
      ),
      fill: (value) => Positioned.fill(
        child: value.child.buildWidget(context, ref, lifetime),
        key: value.key?.buildKey(context, ref, lifetime),
        left: value.left?.getValue(zacRef),
        top: value.top?.getValue(zacRef),
        right: value.right?.getValue(zacRef),
        bottom: value.bottom?.getValue(zacRef),
      ),
    );
  }
}
