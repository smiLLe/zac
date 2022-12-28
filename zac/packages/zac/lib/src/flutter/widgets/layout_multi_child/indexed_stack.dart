import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'indexed_stack.freezed.dart';
part 'indexed_stack.g.dart';

@freezedZacBuilder
class FlutterIndexedStack
    with _$FlutterIndexedStack
    implements ZacBuild<IndexedStack> {
  const FlutterIndexedStack._();

  static const String unionValue = 'f:1:IndexedStack';

  factory FlutterIndexedStack.fromJson(Map<String, dynamic> json) =>
      _$FlutterIndexedStackFromJson(json);

  @FreezedUnionValue(FlutterIndexedStack.unionValue)
  factory FlutterIndexedStack({
    ZacValue<Key?>? key,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<StackFit?>? sizing,
    ZacValue<int?>? index,
    ZacValueList<Widget, List<Widget>?>? children,
  }) = _FlutterIndexedStack;

  IndexedStack _buildWidget(ZacContext zacContext) {
    return IndexedStack(
      key: key?.getValue(zacContext),
      alignment:
          alignment?.getValue(zacContext) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.getValue(zacContext),
      sizing: sizing?.getValue(zacContext) ?? StackFit.loose,
      index: index?.getValue(zacContext),
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  IndexedStack build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
