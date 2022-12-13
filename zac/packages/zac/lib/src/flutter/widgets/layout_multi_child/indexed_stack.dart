import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
    ZacValue<int?>? index,
    ZacListOfFlutterWidget? children,
  }) = _FlutterIndexedStack;

  IndexedStack _buildWidget(ZacContext zacContext) {
    return IndexedStack(
      key: key?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.build(zacContext),
      sizing: sizing?.build(zacContext) ?? StackFit.loose,
      index: index?.build(zacContext),
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  IndexedStack build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  IndexedStack? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
