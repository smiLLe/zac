import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'limited_box.freezed.dart';
part 'limited_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterLimitedBox with _$FlutterLimitedBox implements FlutterWidget {
  const FlutterLimitedBox._();

  static const String unionValue = 'f:1:LimitedBox';

  factory FlutterLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterLimitedBoxFromJson(json);

  @FreezedUnionValue(FlutterLimitedBox.unionValue)
  factory FlutterLimitedBox({
    FlutterKey? key,
    ZacValue<double?>? maxWidth,
    ZacValue<double?>? maxHeight,
    FlutterWidget? child,
  }) = _FlutterLimitedBox;

  LimitedBox _buildWidget(ZacContext zacContext) {
    return LimitedBox(
      key: key?.build(zacContext),
      maxHeight: maxHeight?.build(zacContext) ?? double.infinity,
      maxWidth: maxWidth?.build(zacContext) ?? double.infinity,
      child: child?.build(zacContext),
    );
  }

  @override
  LimitedBox build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  LimitedBox? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
