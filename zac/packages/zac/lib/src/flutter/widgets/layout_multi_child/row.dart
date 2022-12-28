import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'row.freezed.dart';
part 'row.g.dart';

@freezedZacBuilder
class FlutterRow with _$FlutterRow implements ZacBuild<Row> {
  const FlutterRow._();

  static const String unionValue = 'f:1:Row';

  factory FlutterRow.fromJson(Map<String, dynamic> json) =>
      _$FlutterRowFromJson(json);

  @FreezedUnionValue(FlutterRow.unionValue)
  factory FlutterRow({
    ZacValue<Key?>? key,
    ZacValue<MainAxisAlignment?>? mainAxisAlignment,
    ZacValue<MainAxisSize?>? mainAxisSize,
    ZacValue<CrossAxisAlignment?>? crossAxisAlignment,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<VerticalDirection?>? verticalDirection,
    ZacValue<TextBaseline?>? textBaseline,
    ZacValueList<Widget, List<Widget>?>? children,
  }) = _FlutterRow;

  Row _buildWidget(ZacContext zacContext) {
    return Row(
      key: key?.getValue(zacContext),
      mainAxisAlignment:
          mainAxisAlignment?.getValue(zacContext) ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize?.getValue(zacContext) ?? MainAxisSize.max,
      crossAxisAlignment:
          crossAxisAlignment?.getValue(zacContext) ?? CrossAxisAlignment.center,
      textDirection: textDirection?.getValue(zacContext),
      verticalDirection:
          verticalDirection?.getValue(zacContext) ?? VerticalDirection.down,
      textBaseline: textBaseline?.getValue(zacContext),
      children: children?.getList(zacContext) ?? const <Widget>[],
    );
  }

  @override
  Row build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
