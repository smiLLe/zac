import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'row.freezed.dart';
part 'row.g.dart';

@defaultConverterFreezed
class FlutterRow with _$FlutterRow implements ZacWidget {
  const FlutterRow._();

  static const String unionValue = 'f:1:Row';

  factory FlutterRow.fromJson(Map<String, dynamic> json) =>
      _$FlutterRowFromJson(json);

  @FreezedUnionValue(FlutterRow.unionValue)
  factory FlutterRow({
    FlutterKey? key,
    FlutterMainAxisAlignment? mainAxisAlignment,
    FlutterMainAxisSize? mainAxisSize,
    FlutterCrossAxisAlignment? crossAxisAlignment,
    FlutterTextDirection? textDirection,
    FlutterVerticalDirection? verticalDirection,
    FlutterTextBaseline? textBaseline,
    ListOfZacWidget? children,
  }) = _FlutterRow;

  @override
  Row buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Row(
      key: key?.buildKey(context, ref, zacContext),
      mainAxisAlignment: mainAxisAlignment?.build(context, ref, zacContext) ??
          MainAxisAlignment.start,
      mainAxisSize:
          mainAxisSize?.build(context, ref, zacContext) ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment?.build(context, ref, zacContext) ??
          CrossAxisAlignment.center,
      textDirection: textDirection?.build(context, ref, zacContext),
      verticalDirection: verticalDirection?.build(context, ref, zacContext) ??
          VerticalDirection.down,
      textBaseline: textBaseline?.build(context, ref, zacContext),
      children:
          children?.getValue(context, ref, zacContext) ?? const <Widget>[],
    );
  }
}
