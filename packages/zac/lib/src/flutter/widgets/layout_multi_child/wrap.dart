import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
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
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return Wrap(
      key: key?.buildKey(context, ref, helper),
      direction: direction?.build(context, ref, helper) ?? Axis.horizontal,
      alignment: alignment?.build(context, ref, helper) ?? WrapAlignment.start,
      spacing: spacing?.getValue(zacRef) ?? 0.0,
      runAlignment:
          runAlignment?.build(context, ref, helper) ?? WrapAlignment.start,
      runSpacing: runSpacing?.getValue(zacRef) ?? 0.0,
      crossAxisAlignment: crossAxisAlignment?.build(context, ref, helper) ??
          WrapCrossAlignment.start,
      textDirection: textDirection?.build(context, ref, helper),
      verticalDirection: verticalDirection?.build(context, ref, helper) ??
          VerticalDirection.down,
      clipBehavior: clipBehavior?.build(context, ref, helper) ?? Clip.none,
      children: children?.getValue(context, ref, helper) ?? const <Widget>[],
    );
  }
}
