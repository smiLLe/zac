import 'package:zac/src/zac/context.dart';
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
@TsClass(order: tsOrderFlutterWidget)
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
    ZacValueList<FlutterWidget>? children,
  }) = _FlutterColumn;

  @override
  Column buildWidget(ZacContext zacContext) {
    return Column(
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
