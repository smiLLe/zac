import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'wrap.freezed.dart';
part 'wrap.g.dart';

@defaultConverterFreezed
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
    ZacValue<double>? spacing,
    ZacValue<double>? runSpacing,
    FlutterWrapAlignment? runAlignment,
    FlutterWrapCrossAlignment? crossAxisAlignment,
    FlutterTextDirection? textDirection,
    FlutterVerticalDirection? verticalDirection,
    FlutterClip? clipBehavior,
    ZacValueList<FlutterWidget>? children,
  }) = _FlutterWrap;

  @override
  Wrap buildWidget(ZacContext zacContext) {
    return Wrap(
      key: key?.buildKey(zacContext),
      direction: direction?.build(zacContext) ?? Axis.horizontal,
      alignment: alignment?.build(zacContext) ?? WrapAlignment.start,
      spacing: spacing?.getValue(zacContext) ?? 0.0,
      runAlignment: runAlignment?.build(zacContext) ?? WrapAlignment.start,
      runSpacing: runSpacing?.getValue(zacContext) ?? 0.0,
      crossAxisAlignment:
          crossAxisAlignment?.build(zacContext) ?? WrapCrossAlignment.start,
      textDirection: textDirection?.build(zacContext),
      verticalDirection:
          verticalDirection?.build(zacContext) ?? VerticalDirection.down,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
