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

part 'row.freezed.dart';
part 'row.g.dart';

@freezedZacBuilder
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
    ZacListOfFlutterWidget? children,
  }) = _FlutterRow;

  Row _buildWidget(ZacContext zacContext) {
    return Row(
      key: key?.buildOrNull(zacContext),
      mainAxisAlignment:
          mainAxisAlignment?.buildOrNull(zacContext) ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize?.buildOrNull(zacContext) ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment?.buildOrNull(zacContext) ??
          CrossAxisAlignment.center,
      textDirection: textDirection?.buildOrNull(zacContext),
      verticalDirection:
          verticalDirection?.buildOrNull(zacContext) ?? VerticalDirection.down,
      textBaseline: textBaseline?.buildOrNull(zacContext),
      children: children?.buildOrNull(zacContext) ?? const <Widget>[],
    );
  }

  @override
  Row build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Row? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
