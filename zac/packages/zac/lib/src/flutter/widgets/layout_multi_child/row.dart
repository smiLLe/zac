import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
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
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterRow with _$FlutterRow implements FlutterWidget {
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
    ZacValueList<FlutterWidget>? children,
  }) = _FlutterRow;

  @override
  Row buildWidget(ZacContext zacContext) {
    return Row(
      key: key?.buildKey(zacContext),
      mainAxisAlignment:
          mainAxisAlignment?.build(zacContext) ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize?.build(zacContext) ?? MainAxisSize.max,
      crossAxisAlignment:
          crossAxisAlignment?.build(zacContext) ?? CrossAxisAlignment.center,
      textDirection: textDirection?.build(zacContext),
      verticalDirection:
          verticalDirection?.build(zacContext) ?? VerticalDirection.down,
      textBaseline: textBaseline?.build(zacContext),
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
