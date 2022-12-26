import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'stack.freezed.dart';
part 'stack.g.dart';

@freezedZacBuilder
class FlutterStack with _$FlutterStack implements ZacBuild<Stack> {
  const FlutterStack._();

  static const String unionValue = 'f:1:Stack';

  factory FlutterStack.fromJson(Map<String, dynamic> json) =>
      _$FlutterStackFromJson(json);

  @FreezedUnionValue(FlutterStack.unionValue)
  factory FlutterStack({
    ZacValue<Key?>? key,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<StackFit?>? fit,
    ZacValue<Clip?>? clipBehavior,
    ZacValueList<Widget, List<Widget>?>? children,
  }) = _FlutterStack;

  Stack _buildWidget(ZacContext zacContext) {
    return Stack(
      key: key?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.build(zacContext),
      fit: fit?.build(zacContext) ?? StackFit.loose,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  Stack build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
