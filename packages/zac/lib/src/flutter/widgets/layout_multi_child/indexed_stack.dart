import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'indexed_stack.freezed.dart';
part 'indexed_stack.g.dart';

@defaultConverterFreezed
class FlutterIndexedStack with _$FlutterIndexedStack implements ZacWidget {
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
    ListOfZacWidget? children,
  }) = _FlutterIndexedStack;

  @override
  IndexedStack buildWidget(ZacBuildContext context) {
    return IndexedStack(
      key: key?.buildKey(context),
      alignment: alignment?.build(context) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.build(context),
      sizing: sizing?.build(context) ?? StackFit.loose,
      index: index?.getValue(context),
      children: children?.getValue(context) ?? const <Widget>[],
    );
  }
}
