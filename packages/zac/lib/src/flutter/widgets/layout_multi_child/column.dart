import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@defaultConverterFreezed
class FlutterColumn with _$FlutterColumn implements ZacWidget {
  const FlutterColumn._();

  static const String unionValue = 'f:1:Column';

  factory FlutterColumn.fromJson(Map<String, dynamic> json) =>
      _$FlutterColumnFromJson(json);

  @FreezedUnionValue(FlutterColumn.unionValue)
  factory FlutterColumn({
    FlutterKey? key,
    FlutterMainAxisAlignment? mainAxisAlignment,
    FlutterMainAxisSize? mainAxisSize,
    FlutterCrossAxisAlignment? crossAxisAlignment,
    FlutterTextDirection? textDirection,
    FlutterVerticalDirection? verticalDirection,
    FlutterTextBaseline? textBaseline,
    ListOfZacWidget? children,
  }) = _FlutterColumn;

  @override
  Column buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return Column(
      key: key?.buildKey(context, ref, helper),
      mainAxisAlignment: mainAxisAlignment?.build(context, ref, helper) ??
          MainAxisAlignment.start,
      mainAxisSize:
          mainAxisSize?.build(context, ref, helper) ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment?.build(context, ref, helper) ??
          CrossAxisAlignment.center,
      textDirection: textDirection?.build(context, ref, helper),
      verticalDirection: verticalDirection?.build(context, ref, helper) ??
          VerticalDirection.down,
      textBaseline: textBaseline?.build(context, ref, helper),
      children: children?.getValue(context, ref, helper) ?? const <Widget>[],
    );
  }
}
