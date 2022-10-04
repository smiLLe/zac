import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  Wrap buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Wrap(
      key: key?.buildKey(context, ref, lifetime),
      direction: direction?.build(context, ref, lifetime) ?? Axis.horizontal,
      alignment:
          alignment?.build(context, ref, lifetime) ?? WrapAlignment.start,
      spacing: spacing?.getValue(zacRef) ?? 0.0,
      runAlignment:
          runAlignment?.build(context, ref, lifetime) ?? WrapAlignment.start,
      runSpacing: runSpacing?.getValue(zacRef) ?? 0.0,
      crossAxisAlignment: crossAxisAlignment?.build(context, ref, lifetime) ??
          WrapCrossAlignment.start,
      textDirection: textDirection?.build(context, ref, lifetime),
      verticalDirection: verticalDirection?.build(context, ref, lifetime) ??
          VerticalDirection.down,
      clipBehavior: clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
      children: children?.getValue(context, ref, lifetime) ?? const <Widget>[],
    );
  }
}
