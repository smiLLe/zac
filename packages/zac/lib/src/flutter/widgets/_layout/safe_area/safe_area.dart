import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'safe_area.freezed.dart';
part 'safe_area.g.dart';

@defaultConverterFreezed
class FlutterSafeArea with _$FlutterSafeArea implements ZacWidget {
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
    required ZacWidget child,
  }) = _FlutterSafeArea;

  @override
  SafeArea buildWidget(ZacBuildContext context) {
    return SafeArea(
      child: child.buildWidget(context),
      key: key?.build(context),
      left: left?.getValue(context) ?? true,
      top: top?.getValue(context) ?? true,
      right: right?.getValue(context) ?? true,
      bottom: bottom?.getValue(context) ?? true,
      minimum: minimum?.build(context) ?? EdgeInsets.zero,
      maintainBottomViewPadding:
          maintainBottomViewPadding?.getValue(context) ?? false,
    );
  }
}
