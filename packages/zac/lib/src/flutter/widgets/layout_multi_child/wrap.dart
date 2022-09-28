import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
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
  Wrap buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Wrap(
      key: key?.buildKey(context, ref, zacContext),
      direction: direction?.build(context, ref, zacContext) ?? Axis.horizontal,
      alignment:
          alignment?.build(context, ref, zacContext) ?? WrapAlignment.start,
      spacing: spacing?.getValue(zacContext) ?? 0.0,
      runAlignment:
          runAlignment?.build(context, ref, zacContext) ?? WrapAlignment.start,
      runSpacing: runSpacing?.getValue(zacContext) ?? 0.0,
      crossAxisAlignment: crossAxisAlignment?.build(context, ref, zacContext) ??
          WrapCrossAlignment.start,
      textDirection: textDirection?.build(context, ref, zacContext),
      verticalDirection: verticalDirection?.build(context, ref, zacContext) ??
          VerticalDirection.down,
      clipBehavior: clipBehavior?.build(context, ref, zacContext) ?? Clip.none,
      children:
          children?.getValue(context, ref, zacContext) ?? const <Widget>[],
    );
  }
}
