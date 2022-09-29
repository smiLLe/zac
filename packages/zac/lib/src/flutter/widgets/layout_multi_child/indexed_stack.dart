import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  IndexedStack buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return IndexedStack(
      key: key?.buildKey(context, ref, helper),
      alignment: alignment?.build(context, ref, helper) ??
          AlignmentDirectional.topStart,
      textDirection: textDirection?.build(context, ref, helper),
      sizing: sizing?.build(context, ref, helper) ?? StackFit.loose,
      index: index?.getValue(zacRef),
      children: children?.getValue(context, ref, helper) ?? const <Widget>[],
    );
  }
}
