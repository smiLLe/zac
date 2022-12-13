import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacListOfFlutterWidget? children,
  }) = _FlutterColumn;

  Column _buildWidget(ZacContext zacContext) {
    return Column(
      key: key?.build(zacContext),
      mainAxisAlignment:
          mainAxisAlignment?.build(zacContext) ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize?.build(zacContext) ?? MainAxisSize.max,
      crossAxisAlignment:
          crossAxisAlignment?.build(zacContext) ?? CrossAxisAlignment.center,
      textDirection: textDirection?.build(zacContext),
      verticalDirection:
          verticalDirection?.build(zacContext) ?? VerticalDirection.down,
      textBaseline: textBaseline?.build(zacContext),
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  Column build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Column? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
