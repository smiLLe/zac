import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'indexed_stack.freezed.dart';
part 'indexed_stack.g.dart';

@freezedZacBuilder
class FlutterIndexedStack
    with _$FlutterIndexedStack
    implements ZacBuilder<IndexedStack> {
  const FlutterIndexedStack._();

  static const String unionValue = 'f:1:IndexedStack';

  factory FlutterIndexedStack.fromJson(Map<String, dynamic> json) =>
      _$FlutterIndexedStackFromJson(json);

  @FreezedUnionValue(FlutterIndexedStack.unionValue)
  factory FlutterIndexedStack({
    ZacBuilder<Key?>? key,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<StackFit?>? sizing,
    ZacBuilder<int?>? index,
    ZacBuilder< List<Widget>?>? children,
  }) = _FlutterIndexedStack;

  IndexedStack _buildWidget(BuildContext context, ZacContext zacContext) {
    return IndexedStack(
      key: key?.build(context, zacContext),
      alignment: alignment?.build(context, zacContext) ??
          AlignmentDirectional.topStart,
      textDirection: textDirection?.build(context, zacContext),
      sizing: sizing?.build(context, zacContext) ?? StackFit.loose,
      index: index?.build(context, zacContext),
      children: children?.build(context, zacContext) ?? const <Widget>[],
    );
  }

  @override
  IndexedStack build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
