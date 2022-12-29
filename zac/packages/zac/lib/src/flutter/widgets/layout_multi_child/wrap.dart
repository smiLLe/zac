import 'package:flutter/widgets.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';

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
    ZacListBuilder<Widget, List<Widget>?>? children,
  }) = _FlutterWrap;

  Wrap _buildWidget(ZacContext zacContext) {
    return Wrap(
      key: key?.build(zacContext),
      direction: direction?.build(zacContext) ?? Axis.horizontal,
      alignment: alignment?.build(zacContext) ?? WrapAlignment.start,
      spacing: spacing?.build(zacContext) ?? 0.0,
      runAlignment: runAlignment?.build(zacContext) ?? WrapAlignment.start,
      runSpacing: runSpacing?.build(zacContext) ?? 0.0,
      crossAxisAlignment:
          crossAxisAlignment?.build(zacContext) ?? WrapCrossAlignment.start,
      textDirection: textDirection?.build(zacContext),
      verticalDirection:
          verticalDirection?.build(zacContext) ?? VerticalDirection.down,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  Wrap build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
