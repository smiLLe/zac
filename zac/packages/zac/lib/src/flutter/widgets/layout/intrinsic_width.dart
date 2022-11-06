import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';

part 'intrinsic_width.freezed.dart';
part 'intrinsic_width.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
  IntrinsicWidth buildWidget(ZacContext zacContext) {
    return IntrinsicWidth(
      key: key?.buildKey(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
