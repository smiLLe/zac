import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@defaultConverterFreezed
class FlutterColumn with _$FlutterColumn implements FlutterWidget {
  const FlutterColumn._();

  static const String unionValue = 'f:1:Column';

  factory FlutterColumn.fromJson(Map<String, dynamic> json) =>
      _$FlutterColumnFromJson(json);

  @FreezedUnionValue(FlutterColumn.unionValue)
  factory FlutterColumn({
    FlutterKey? key,
    FlutterMainAxisAlignment? mainAxisAlignment,
    FlutterMainAxisSize? mainAxisSize,
    FlutterCrossAxisAlignment? crossAxisAlignment,
    FlutterTextDirection? textDirection,
    FlutterVerticalDirection? verticalDirection,
    FlutterTextBaseline? textBaseline,
    ListOfZacWidget? children,
  }) = _FlutterColumn;

  @override
  Column buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return Column(
      key: key?.buildKey(context, ref, lifetime),
      mainAxisAlignment: mainAxisAlignment?.build(context, ref, lifetime) ??
          MainAxisAlignment.start,
      mainAxisSize:
          mainAxisSize?.build(context, ref, lifetime) ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment?.build(context, ref, lifetime) ??
          CrossAxisAlignment.center,
      textDirection: textDirection?.build(context, ref, lifetime),
      verticalDirection: verticalDirection?.build(context, ref, lifetime) ??
          VerticalDirection.down,
      textBaseline: textBaseline?.build(context, ref, lifetime),
      children: children?.getValue(context, ref, lifetime) ?? const <Widget>[],
    );
  }
}
