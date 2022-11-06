import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';

part 'intrinsic_height.freezed.dart';
part 'intrinsic_height.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIntrinsicHeight
    with _$FlutterIntrinsicHeight
    implements FlutterWidget {
  const FlutterIntrinsicHeight._();

  static const String unionValue = 'f:1:IntrinsicHeight';

  factory FlutterIntrinsicHeight.fromJson(Map<String, dynamic> json) =>
      _$FlutterIntrinsicHeightFromJson(json);

  @FreezedUnionValue(FlutterIntrinsicHeight.unionValue)
  factory FlutterIntrinsicHeight({
    FlutterKey? key,
    FlutterWidget? child,
  }) = _FlutterIntrinsicHeight;

  @override
  IntrinsicHeight buildWidget(ZacContext zacContext) {
    return IntrinsicHeight(
      key: key?.buildKey(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
