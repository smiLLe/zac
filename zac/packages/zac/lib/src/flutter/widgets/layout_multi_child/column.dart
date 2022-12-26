import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterColumn with _$FlutterColumn implements ZacBuild<Column> {
  const FlutterColumn._();

  static const String unionValue = 'f:1:Column';

  factory FlutterColumn.fromJson(Map<String, dynamic> json) =>
      _$FlutterColumnFromJson(json);

  @FreezedUnionValue(FlutterColumn.unionValue)
  factory FlutterColumn({
    ZacValue<Key?>? key,
    ZacValue<MainAxisAlignment?>? mainAxisAlignment,
    ZacValue<MainAxisSize?>? mainAxisSize,
    ZacValue<CrossAxisAlignment?>? crossAxisAlignment,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<VerticalDirection?>? verticalDirection,
    ZacValue<TextBaseline?>? textBaseline,
    ZacValueList<Widget, List<Widget>?>? children,
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
  Column build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
