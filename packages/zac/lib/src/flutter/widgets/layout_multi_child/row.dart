import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
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
    ListOfZacWidget? children,
  }) = _FlutterRow;

  @override
  Row buildWidget(ZacOriginWidgetTree origin) {
    return Row(
      key: key?.buildKey(origin),
      mainAxisAlignment:
          mainAxisAlignment?.build(origin) ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize?.build(origin) ?? MainAxisSize.max,
      crossAxisAlignment:
          crossAxisAlignment?.build(origin) ?? CrossAxisAlignment.center,
      textDirection: textDirection?.build(origin),
      verticalDirection:
          verticalDirection?.build(origin) ?? VerticalDirection.down,
      textBaseline: textBaseline?.build(origin),
      children: children?.getValue(origin) ?? const <Widget>[],
    );
  }
}
