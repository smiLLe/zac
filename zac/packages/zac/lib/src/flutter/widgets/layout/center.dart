import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'center.freezed.dart';
part 'center.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterCenter with _$FlutterCenter implements FlutterWidget {
  const FlutterCenter._();

  static const String unionValue = 'f:1:Center';

  factory FlutterCenter.fromJson(Map<String, dynamic> json) =>
      _$FlutterCenterFromJson(json);

  @FreezedUnionValue(FlutterCenter.unionValue)
  factory FlutterCenter({
    FlutterKey? key,
    ZacDouble? widthFactor,
    ZacDouble? heightFactor,
    FlutterWidget? child,
  }) = _FlutterCenter;

  @override
  Center buildWidget(ZacContext zacContext) {
    return Center(
      key: key?.buildKey(zacContext),
      widthFactor: widthFactor?.buildOrNull(zacContext),
      heightFactor: heightFactor?.buildOrNull(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
