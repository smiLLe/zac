import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'stack.freezed.dart';
part 'stack.g.dart';

@freezedZacBuilder
class FlutterStack with _$FlutterStack implements ZacBuilder<Stack> {
  const FlutterStack._();

  static const String unionValue = 'f:1:Stack';

  factory FlutterStack.fromJson(Map<String, dynamic> json) =>
      _$FlutterStackFromJson(json);

  @FreezedUnionValue(FlutterStack.unionValue)
  factory FlutterStack({
    ZacBuilder<Key?>? key,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<StackFit?>? fit,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<List<Widget>?>? children,
  }) = _FlutterStack;

  Stack _buildWidget(BuildContext context, ZacContext zacContext) {
    return Stack(
      key: key?.build(context, zacContext),
      alignment: alignment?.build(context, zacContext) ??
          AlignmentDirectional.topStart,
      textDirection: textDirection?.build(context, zacContext),
      fit: fit?.build(context, zacContext) ?? StackFit.loose,
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
      children: children?.build(context, zacContext) ?? const <Widget>[],
    );
  }

  @override
  Stack build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
