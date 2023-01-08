import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'container.freezed.dart';
part 'container.g.dart';

@freezedZacBuilder
class FlutterContainer
    with _$FlutterContainer
    implements ZacBuilder<Container> {
  const FlutterContainer._();

  static const String unionValue = 'f:1:Container';

  factory FlutterContainer.fromJson(Map<String, dynamic> json) =>
      _$FlutterContainerFromJson(json);

  @FreezedUnionValue(FlutterContainer.unionValue)
  factory FlutterContainer({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<Color?>? color,
    ZacBuilder<EdgeInsetsGeometry?>? margin,
    ZacBuilder<EdgeInsetsGeometry?>? padding,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<Decoration?>? decoration,
  }) = _FlutterContainer;

  Container _buildWidget(BuildContext context, ZacContext zacContext) {
    return Container(
      key: key?.build(context, zacContext),
      color: color?.build(context, zacContext),
      padding: padding?.build(context, zacContext),
      margin: margin?.build(context, zacContext),
      alignment: alignment?.build(context, zacContext),
      decoration: decoration?.build(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  Container build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
