import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';

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
  Row buildWidget(ZacBuildContext context) {
    return Row(
      key: key?.build(context),
      mainAxisAlignment:
          mainAxisAlignment?.build(context) ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize?.build(context) ?? MainAxisSize.max,
      crossAxisAlignment:
          crossAxisAlignment?.build(context) ?? CrossAxisAlignment.center,
      textDirection: textDirection?.build(context),
      verticalDirection:
          verticalDirection?.build(context) ?? VerticalDirection.down,
      textBaseline: textBaseline?.build(context),
      children: children?.getValue(context) ?? const <Widget>[],
    );
  }
}
