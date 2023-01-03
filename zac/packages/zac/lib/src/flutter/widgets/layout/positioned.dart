import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'positioned.freezed.dart';
part 'positioned.g.dart';

@freezedZacBuilder
class FlutterPositioned
    with _$FlutterPositioned
    implements ZacBuilder<Positioned> {
  const FlutterPositioned._();

  static const String unionValue = 'f:1:Positioned';
  static const String unionValueDirectional = 'f:1:Positioned.directional';
  static const String unionValueFill = 'f:1:Positioned.fill';

  factory FlutterPositioned.fromJson(Map<String, dynamic> json) =>
      _$FlutterPositionedFromJson(json);

  @FreezedUnionValue(FlutterPositioned.unionValue)
  factory FlutterPositioned({
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? left,
    ZacBuilder<double?>? top,
    ZacBuilder<double?>? right,
    ZacBuilder<double?>? bottom,
    ZacBuilder<double?>? width,
    ZacBuilder<double?>? height,
    required ZacBuilder<Widget> child,
  }) = _FlutterPositioneddirectional;

  @FreezedUnionValue(FlutterPositioned.unionValueDirectional)
  factory FlutterPositioned.directional({
    ZacBuilder<Key?>? key,
    required ZacBuilder<TextDirection> textDirection,
    ZacBuilder<double?>? start,
    ZacBuilder<double?>? top,
    ZacBuilder<double?>? end,
    ZacBuilder<double?>? bottom,
    ZacBuilder<double?>? width,
    ZacBuilder<double?>? height,
    required ZacBuilder<Widget> child,
  }) = _FlutterPositioned;

  @FreezedUnionValue(FlutterPositioned.unionValueFill)
  factory FlutterPositioned.fill({
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? left,
    ZacBuilder<double?>? top,
    ZacBuilder<double?>? right,
    ZacBuilder<double?>? bottom,
    required ZacBuilder<Widget> child,
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
