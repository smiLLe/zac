import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'container.freezed.dart';
part 'container.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterContainer with _$FlutterContainer implements ZacBuild<Container> {
  const FlutterContainer._();

  static const String unionValue = 'f:1:Container';

  factory FlutterContainer.fromJson(Map<String, dynamic> json) =>
      _$FlutterContainerFromJson(json);

  @FreezedUnionValue(FlutterContainer.unionValue)
  factory FlutterContainer({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacValue<Color?>? color,
    ZacValue<EdgeInsetsGeometry?>? margin,
    ZacValue<EdgeInsetsGeometry?>? padding,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<Decoration?>? decoration,
  }) = _FlutterContainer;

  Container _buildWidget(ZacContext zacContext) {
    return Container(
      key: key?.build(zacContext),
      color: color?.build(zacContext),
      padding: padding?.build(zacContext),
      margin: margin?.build(zacContext),
      alignment: alignment?.build(zacContext),
      decoration: decoration?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  Container build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
