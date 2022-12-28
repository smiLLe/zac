import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'row.freezed.dart';
part 'row.g.dart';

@freezedZacBuilder
class FlutterRow with _$FlutterRow implements ZacBuilder<Row> {
  const FlutterRow._();

  static const String unionValue = 'f:1:Row';

  factory FlutterRow.fromJson(Map<String, dynamic> json) =>
      _$FlutterRowFromJson(json);

  @FreezedUnionValue(FlutterRow.unionValue)
  factory FlutterRow({
    ZacBuilder<Key?>? key,
    ZacBuilder<MainAxisAlignment?>? mainAxisAlignment,
    ZacBuilder<MainAxisSize?>? mainAxisSize,
    ZacBuilder<CrossAxisAlignment?>? crossAxisAlignment,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<VerticalDirection?>? verticalDirection,
    ZacBuilder<TextBaseline?>? textBaseline,
    ZacListBuilder<Widget, List<Widget>?>? children,
  }) = _FlutterRow;

  Row _buildWidget(ZacContext zacContext) {
    return Row(
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
  Row build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
