import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';

part 'wrap.freezed.dart';
part 'wrap.g.dart';

@defaultConverterFreezed
class FlutterWrap with _$FlutterWrap implements ZacWidget {
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
  Wrap buildWidget(ZacBuildContext context) {
    return Wrap(
      key: key?.build(context),
      direction: direction?.build(context) ?? Axis.horizontal,
      alignment: alignment?.build(context) ?? WrapAlignment.start,
      spacing: spacing?.getValue(context) ?? 0.0,
      runAlignment: runAlignment?.build(context) ?? WrapAlignment.start,
      runSpacing: runSpacing?.getValue(context) ?? 0.0,
      crossAxisAlignment:
          crossAxisAlignment?.build(context) ?? WrapCrossAlignment.start,
      textDirection: textDirection?.build(context),
      verticalDirection:
          verticalDirection?.build(context) ?? VerticalDirection.down,
      clipBehavior: clipBehavior?.build(context) ?? Clip.none,
      children: children?.getValue(context) ?? const <Widget>[],
    );
  }
}
