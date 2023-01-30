import 'package:flutter/widgets.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'wrap.g.dart';
part 'wrap.freezed.dart';

@freezedZacBuilder
class FlutterWrap with _$FlutterWrap implements ZacBuilder<Wrap> {
  const FlutterWrap._();

  static const String unionValue = 'f:1:Wrap';

  factory FlutterWrap.fromJson(Map<String, dynamic> json) =>
      _$FlutterWrapFromJson(json);

  @FreezedUnionValue(FlutterWrap.unionValue)
  factory FlutterWrap({
    ZacBuilder<Key?>? key,
    ZacBuilder<Axis?>? direction,
    ZacBuilder<WrapAlignment?>? alignment,
    ZacBuilder<double?>? spacing,
    ZacBuilder<double?>? runSpacing,
    ZacBuilder<WrapAlignment?>? runAlignment,
    ZacBuilder<WrapCrossAlignment?>? crossAxisAlignment,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<VerticalDirection?>? verticalDirection,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<List<Widget>?>? children,
  }) = _FlutterWrap;

  Wrap _buildWidget(BuildContext context, ZacContext zacContext) {
    return Wrap(
      key: key?.build(context, zacContext),
      direction: direction?.build(context, zacContext) ?? Axis.horizontal,
      alignment: alignment?.build(context, zacContext) ?? WrapAlignment.start,
      spacing: spacing?.build(context, zacContext) ?? 0.0,
      runAlignment:
          runAlignment?.build(context, zacContext) ?? WrapAlignment.start,
      runSpacing: runSpacing?.build(context, zacContext) ?? 0.0,
      crossAxisAlignment: crossAxisAlignment?.build(context, zacContext) ??
          WrapCrossAlignment.start,
      textDirection: textDirection?.build(context, zacContext),
      verticalDirection: verticalDirection?.build(context, zacContext) ??
          VerticalDirection.down,
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.none,
      children: children?.build(context, zacContext) ?? const <Widget>[],
    );
  }

  @override
  Wrap build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
