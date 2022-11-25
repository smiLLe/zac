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

part 'wrap.freezed.dart';
part 'wrap.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterWrap with _$FlutterWrap implements FlutterWidget {
  const FlutterWrap._();

  static const String unionValue = 'f:1:Wrap';

  factory FlutterWrap.fromJson(Map<String, dynamic> json) =>
      _$FlutterWrapFromJson(json);

  @FreezedUnionValue(FlutterWrap.unionValue)
  factory FlutterWrap({
    FlutterKey? key,
    FlutterAxis? direction,
    FlutterWrapAlignment? alignment,
    ZacDouble? spacing,
    ZacDouble? runSpacing,
    FlutterWrapAlignment? runAlignment,
    FlutterWrapCrossAlignment? crossAxisAlignment,
    FlutterTextDirection? textDirection,
    FlutterVerticalDirection? verticalDirection,
    FlutterClip? clipBehavior,
    ZacListOfFlutterWidget? children,
  }) = _FlutterWrap;

  Wrap _buildWidget(ZacContext zacContext) {
    return Wrap(
      key: key?.buildOrNull(zacContext),
      direction: direction?.build(zacContext) ?? Axis.horizontal,
      alignment: alignment?.build(zacContext) ?? WrapAlignment.start,
      spacing: spacing?.buildOrNull(zacContext) ?? 0.0,
      runAlignment: runAlignment?.build(zacContext) ?? WrapAlignment.start,
      runSpacing: runSpacing?.buildOrNull(zacContext) ?? 0.0,
      crossAxisAlignment:
          crossAxisAlignment?.build(zacContext) ?? WrapCrossAlignment.start,
      textDirection: textDirection?.build(zacContext),
      verticalDirection:
          verticalDirection?.build(zacContext) ?? VerticalDirection.down,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      children: children?.buildOrNull(zacContext) ?? const <Widget>[],
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
