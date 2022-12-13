import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'intrinsic_height.freezed.dart';
part 'intrinsic_height.g.dart';

@freezedZacBuilder
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

  IntrinsicHeight _buildWidget(ZacContext zacContext) {
    return IntrinsicHeight(
      key: key?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  IntrinsicHeight build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  IntrinsicHeight? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
