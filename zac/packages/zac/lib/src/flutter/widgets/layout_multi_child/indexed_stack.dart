import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'indexed_stack.freezed.dart';
part 'indexed_stack.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIndexedStack with _$FlutterIndexedStack implements FlutterWidget {
  const FlutterIndexedStack._();

  static const String unionValue = 'f:1:IndexedStack';

  factory FlutterIndexedStack.fromJson(Map<String, dynamic> json) =>
      _$FlutterIndexedStackFromJson(json);

  @FreezedUnionValue(FlutterIndexedStack.unionValue)
  factory FlutterIndexedStack({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    FlutterTextDirection? textDirection,
    FlutterStackFit? sizing,
    ZacInt? index,
    ZacValueList<FlutterWidget>? children,
  }) = _FlutterIndexedStack;

  @override
  IndexedStack buildWidget(ZacContext zacContext) {
    return IndexedStack(
      key: key?.buildKey(zacContext),
      alignment: alignment?.build(zacContext) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.build(zacContext),
      sizing: sizing?.build(zacContext) ?? StackFit.loose,
      index: index?.getValueOrNull(zacContext),
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
