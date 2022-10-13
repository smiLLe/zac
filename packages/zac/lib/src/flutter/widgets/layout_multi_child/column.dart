import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
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
class FlutterColumn with _$FlutterColumn implements FlutterWidget {
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
  Column buildWidget(ZacOriginWidgetTree origin) {
    return Column(
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
