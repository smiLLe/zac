import 'package:flutter/widgets.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'wrap.g.dart';
part 'wrap.freezed.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterWrap with _$FlutterWrap implements FlutterWidget {
  const FlutterWrap._();

  static const String unionValue = 'f:1:Wrap';

  factory FlutterWrap.fromJson(Map<String, dynamic> json) =>
      _$FlutterWrapFromJson(json);

  @FreezedUnionValue(FlutterWrap.unionValue)
  factory FlutterWrap({
    ZacValue<Key>? key,
    ZacValue<Axis>? direction,
    ZacValue<WrapAlignment>? alignment,
    ZacValue<double?>? spacing,
    ZacValue<double?>? runSpacing,
    ZacValue<WrapAlignment>? runAlignment,
    ZacValue<WrapCrossAlignment>? crossAxisAlignment,
    FlutterTextDirection? textDirection,
    ZacValue<VerticalDirection>? verticalDirection,
    FlutterClip? clipBehavior,
    ZacValueList<Widget>? children,
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
  Wrap build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Wrap? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
