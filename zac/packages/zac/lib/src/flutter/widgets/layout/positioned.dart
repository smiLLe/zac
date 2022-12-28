import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';

part 'positioned.freezed.dart';
part 'positioned.g.dart';

@freezedZacBuilder
class FlutterPositioned
    with _$FlutterPositioned
    implements ZacBuild<Positioned> {
  const FlutterPositioned._();

  static const String unionValue = 'f:1:Positioned';
  static const String unionValueDirectional = 'f:1:Positioned.directional';
  static const String unionValueFill = 'f:1:Positioned.fill';

  factory FlutterPositioned.fromJson(Map<String, dynamic> json) =>
      _$FlutterPositionedFromJson(json);

  @FreezedUnionValue(FlutterPositioned.unionValue)
  factory FlutterPositioned({
    ZacValue<Key?>? key,
    ZacValue<double?>? left,
    ZacValue<double?>? top,
    ZacValue<double?>? right,
    ZacValue<double?>? bottom,
    ZacValue<double?>? width,
    ZacValue<double?>? height,
    required ZacValue<Widget> child,
  }) = _FlutterPositioneddirectional;

  @FreezedUnionValue(FlutterPositioned.unionValueDirectional)
  factory FlutterPositioned.directional({
    ZacValue<Key?>? key,
    required ZacValue<TextDirection> textDirection,
    ZacValue<double?>? start,
    ZacValue<double?>? top,
    ZacValue<double?>? end,
    ZacValue<double?>? bottom,
    ZacValue<double?>? width,
    ZacValue<double?>? height,
    required ZacValue<Widget> child,
  }) = _FlutterPositioned;

  @FreezedUnionValue(FlutterPositioned.unionValueFill)
  factory FlutterPositioned.fill({
    ZacValue<Key?>? key,
    ZacValue<double?>? left,
    ZacValue<double?>? top,
    ZacValue<double?>? right,
    ZacValue<double?>? bottom,
    required ZacValue<Widget> child,
  }) = _FlutterPositionedfill;

  Positioned _buildWidget(ZacContext zacContext) {
    return map(
      (value) => Positioned(
        key: value.key?.getValue(zacContext),
        left: value.left?.getValue(zacContext),
        top: value.top?.getValue(zacContext),
        right: value.right?.getValue(zacContext),
        bottom: value.bottom?.getValue(zacContext),
        width: value.width?.getValue(zacContext),
        height: value.height?.getValue(zacContext),
        child: value.child.getValue(zacContext),
      ),
      directional: (value) => Positioned.directional(
        textDirection: value.textDirection.getValue(zacContext),
        key: value.key?.getValue(zacContext),
        start: value.start?.getValue(zacContext),
        top: value.top?.getValue(zacContext),
        end: value.end?.getValue(zacContext),
        bottom: value.bottom?.getValue(zacContext),
        width: value.width?.getValue(zacContext),
        height: value.height?.getValue(zacContext),
        child: value.child.getValue(zacContext),
      ),
      fill: (value) => Positioned.fill(
        key: value.key?.getValue(zacContext),
        left: value.left?.getValue(zacContext),
        top: value.top?.getValue(zacContext),
        right: value.right?.getValue(zacContext),
        bottom: value.bottom?.getValue(zacContext),
        child: value.child.getValue(zacContext),
      ),
    );
  }

  @override
  Positioned build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
