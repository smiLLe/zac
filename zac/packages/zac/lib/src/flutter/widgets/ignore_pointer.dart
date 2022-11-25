import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'ignore_pointer.freezed.dart';
part 'ignore_pointer.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIgnorePointer
    with _$FlutterIgnorePointer
    implements FlutterWidget {
  const FlutterIgnorePointer._();

  static const String unionValue = 'f:1:IgnorePointer';

  factory FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =>
      _$FlutterIgnorePointerFromJson(json);

  @FreezedUnionValue(FlutterIgnorePointer.unionValue)
  factory FlutterIgnorePointer({
    FlutterKey? key,
    ZacBool? ignoring,
    ZacBool? ignoringSemantics,
    FlutterWidget? child,
  }) = _FlutterIgnorePointer;

  IgnorePointer _buildWidget(ZacContext zacContext) {
    return IgnorePointer(
      key: key?.buildOrNull(zacContext),
      ignoring: ignoring?.buildOrNull(zacContext) ?? true,
      ignoringSemantics: ignoringSemantics?.buildOrNull(zacContext),
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  IgnorePointer build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  IgnorePointer? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
