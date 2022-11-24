import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'safe_area.freezed.dart';
part 'safe_area.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSafeArea with _$FlutterSafeArea implements FlutterWidget {
  const FlutterSafeArea._();

  static const String unionValue = 'f:1:SafeArea';

  factory FlutterSafeArea.fromJson(Map<String, dynamic> json) =>
      _$FlutterSafeAreaFromJson(json);

  @FreezedUnionValue(FlutterSafeArea.unionValue)
  factory FlutterSafeArea({
    FlutterKey? key,
    ZacBool? left,
    ZacBool? top,
    ZacBool? right,
    ZacBool? bottom,
    FlutterEdgeInsets? minimum,
    ZacBool? maintainBottomViewPadding,
    required FlutterWidget child,
  }) = _FlutterSafeArea;

  @override
  SafeArea buildWidget(ZacContext zacContext) {
    return SafeArea(
      key: key?.buildKey(zacContext),
      left: left?.buildOrNull(zacContext) ?? true,
      top: top?.buildOrNull(zacContext) ?? true,
      right: right?.buildOrNull(zacContext) ?? true,
      bottom: bottom?.buildOrNull(zacContext) ?? true,
      minimum: minimum?.build(zacContext) ?? EdgeInsets.zero,
      maintainBottomViewPadding:
          maintainBottomViewPadding?.buildOrNull(zacContext) ?? false,
      child: child.buildWidget(zacContext),
    );
  }
}
