import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezedZacBuilder
class FlutterColumn with _$FlutterColumn implements ZacBuilder<Column> {
  const FlutterColumn._();

  static const String unionValue = 'f:1:Column';

  factory FlutterColumn.fromJson(Map<String, dynamic> json) =>
      _$FlutterColumnFromJson(json);

  @FreezedUnionValue(FlutterColumn.unionValue)
  factory FlutterColumn({
    ZacBuilder<Key?>? key,
    ZacBuilder<MainAxisAlignment?>? mainAxisAlignment,
    ZacBuilder<MainAxisSize?>? mainAxisSize,
    ZacBuilder<CrossAxisAlignment?>? crossAxisAlignment,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<VerticalDirection?>? verticalDirection,
    ZacBuilder<TextBaseline?>? textBaseline,
    ZacListBuilder<Widget, List<Widget>?>? children,
  }) = _FlutterColumn;

  Column _buildWidget(BuildContext context, ZacContext zacContext) {
    return Column(
      key: key?.build(context, zacContext),
      mainAxisAlignment: mainAxisAlignment?.build(context, zacContext) ??
          MainAxisAlignment.start,
      mainAxisSize:
          mainAxisSize?.build(context, zacContext) ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment?.build(context, zacContext) ??
          CrossAxisAlignment.center,
      textDirection: textDirection?.build(context, zacContext),
      verticalDirection: verticalDirection?.build(context, zacContext) ??
          VerticalDirection.down,
      textBaseline: textBaseline?.build(context, zacContext),
      children: children?.build(context, zacContext) ?? const <Widget>[],
    );
  }

  @override
  Column build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
