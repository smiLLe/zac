import 'package:zac/src/zac/origin.dart';
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
    ZacDouble? spacing,
    ZacDouble? runSpacing,
    FlutterWrapAlignment? runAlignment,
    FlutterWrapCrossAlignment? crossAxisAlignment,
    FlutterTextDirection? textDirection,
    FlutterVerticalDirection? verticalDirection,
    FlutterClip? clipBehavior,
    ListOfZacWidget? children,
  }) = _FlutterWrap;

  @override
  Wrap buildWidget(ZacOriginWidgetTree origin) {
    return Wrap(
      key: key?.buildKey(origin),
      direction: direction?.build(origin) ?? Axis.horizontal,
      alignment: alignment?.build(origin) ?? WrapAlignment.start,
      spacing: spacing?.getValue(origin) ?? 0.0,
      runAlignment: runAlignment?.build(origin) ?? WrapAlignment.start,
      runSpacing: runSpacing?.getValue(origin) ?? 0.0,
      crossAxisAlignment:
          crossAxisAlignment?.build(origin) ?? WrapCrossAlignment.start,
      textDirection: textDirection?.build(origin),
      verticalDirection:
          verticalDirection?.build(origin) ?? VerticalDirection.down,
      clipBehavior: clipBehavior?.build(origin) ?? Clip.none,
      children: children?.getValue(origin) ?? const <Widget>[],
    );
  }
}
