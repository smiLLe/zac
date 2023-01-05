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

  Positioned _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => Positioned(
        key: value.key?.build(context, zacContext),
        left: value.left?.build(context, zacContext),
        top: value.top?.build(context, zacContext),
        right: value.right?.build(context, zacContext),
        bottom: value.bottom?.build(context, zacContext),
        width: value.width?.build(context, zacContext),
        height: value.height?.build(context, zacContext),
        child: value.child.build(context, zacContext),
      ),
      directional: (value) => Positioned.directional(
        textDirection: value.textDirection.build(context, zacContext),
        key: value.key?.build(context, zacContext),
        start: value.start?.build(context, zacContext),
        top: value.top?.build(context, zacContext),
        end: value.end?.build(context, zacContext),
        bottom: value.bottom?.build(context, zacContext),
        width: value.width?.build(context, zacContext),
        height: value.height?.build(context, zacContext),
        child: value.child.build(context, zacContext),
      ),
      fill: (value) => Positioned.fill(
        key: value.key?.build(context, zacContext),
        left: value.left?.build(context, zacContext),
        top: value.top?.build(context, zacContext),
        right: value.right?.build(context, zacContext),
        bottom: value.bottom?.build(context, zacContext),
        child: value.child.build(context, zacContext),
      ),
    );
  }

  @override
  Positioned build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
