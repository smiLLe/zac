import 'package:flutter/widgets.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'wrap.g.dart';
part 'wrap.freezed.dart';

@freezedZacBuilder
class FlutterWrap with _$FlutterWrap implements ZacBuild<Wrap> {
  const FlutterWrap._();

  static const String unionValue = 'f:1:Wrap';

  factory FlutterWrap.fromJson(Map<String, dynamic> json) =>
      _$FlutterWrapFromJson(json);

  @FreezedUnionValue(FlutterWrap.unionValue)
  factory FlutterWrap({
    ZacValue<Key?>? key,
    ZacValue<Axis?>? direction,
    ZacValue<WrapAlignment?>? alignment,
    ZacValue<double?>? spacing,
    ZacValue<double?>? runSpacing,
    ZacValue<WrapAlignment?>? runAlignment,
    ZacValue<WrapCrossAlignment?>? crossAxisAlignment,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<VerticalDirection?>? verticalDirection,
    ZacValue<Clip?>? clipBehavior,
    ZacValueList<Widget, List<Widget>?>? children,
  }) = _FlutterWrap;

  Wrap _buildWidget(ZacContext zacContext) {
    return Wrap(
      key: key?.getValue(zacContext),
      direction: direction?.getValue(zacContext) ?? Axis.horizontal,
      alignment: alignment?.getValue(zacContext) ?? WrapAlignment.start,
      spacing: spacing?.getValue(zacContext) ?? 0.0,
      runAlignment: runAlignment?.getValue(zacContext) ?? WrapAlignment.start,
      runSpacing: runSpacing?.getValue(zacContext) ?? 0.0,
      crossAxisAlignment:
          crossAxisAlignment?.getValue(zacContext) ?? WrapCrossAlignment.start,
      textDirection: textDirection?.getValue(zacContext),
      verticalDirection:
          verticalDirection?.getValue(zacContext) ?? VerticalDirection.down,
      clipBehavior: clipBehavior?.getValue(zacContext) ?? Clip.none,
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  Wrap build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
