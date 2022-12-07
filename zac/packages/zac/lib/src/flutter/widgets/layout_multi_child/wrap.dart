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
    ZacValue<Key>? key,
    ZacValue<Axis>? direction,
    ZacValue<WrapAlignment>? alignment,
    ZacValue<double>? spacing,
    ZacValue<double>? runSpacing,
    ZacValue<WrapAlignment>? runAlignment,
    ZacValue<WrapCrossAlignment>? crossAxisAlignment,
    ZacValue<TextDirection>? textDirection,
    ZacValue<VerticalDirection>? verticalDirection,
    ZacValue<Clip>? clipBehavior,
    ZacListOfFlutterWidget? children,
  }) = _FlutterWrap;

  Wrap _buildWidget(ZacContext zacContext) {
    return Wrap(
      key: key?.buildOrNull(zacContext),
      direction: direction?.buildOrNull(zacContext) ?? Axis.horizontal,
      alignment: alignment?.buildOrNull(zacContext) ?? WrapAlignment.start,
      spacing: spacing?.buildOrNull(zacContext) ?? 0.0,
      runAlignment:
          runAlignment?.buildOrNull(zacContext) ?? WrapAlignment.start,
      runSpacing: runSpacing?.buildOrNull(zacContext) ?? 0.0,
      crossAxisAlignment: crossAxisAlignment?.buildOrNull(zacContext) ??
          WrapCrossAlignment.start,
      textDirection: textDirection?.buildOrNull(zacContext),
      verticalDirection:
          verticalDirection?.buildOrNull(zacContext) ?? VerticalDirection.down,
      clipBehavior: clipBehavior?.buildOrNull(zacContext) ?? Clip.none,
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
