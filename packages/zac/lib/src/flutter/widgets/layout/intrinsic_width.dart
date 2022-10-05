import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/origin.dart';

part 'intrinsic_width.freezed.dart';
part 'intrinsic_width.g.dart';

@defaultConverterFreezed
class FlutterIntrinsicWidth
    with _$FlutterIntrinsicWidth
    implements FlutterWidget {
  const FlutterIntrinsicWidth._();

  static const String unionValue = 'f:1:IntrinsicWidth';

  factory FlutterIntrinsicWidth.fromJson(Map<String, dynamic> json) =>
      _$FlutterIntrinsicWidthFromJson(json);

  @FreezedUnionValue(FlutterIntrinsicWidth.unionValue)
  factory FlutterIntrinsicWidth({
    FlutterKey? key,
    FlutterWidget? child,
  }) = _FlutterIntrinsicWidth;

  @override
  IntrinsicWidth buildWidget(ZacOriginWidgetTree origin) {
    return IntrinsicWidth(
      key: key?.buildKey(origin),
      child: child?.buildWidget(origin),
    );
  }
}
