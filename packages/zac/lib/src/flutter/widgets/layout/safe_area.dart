import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

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
  SafeArea buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return SafeArea(
      child: child.buildWidget(context, ref, zacContext),
      key: key?.buildKey(context, ref, zacContext),
      left: left?.getValue(zacContext) ?? true,
      top: top?.getValue(zacContext) ?? true,
      right: right?.getValue(zacContext) ?? true,
      bottom: bottom?.getValue(zacContext) ?? true,
      minimum: minimum?.build(context, ref, zacContext) ?? EdgeInsets.zero,
      maintainBottomViewPadding:
          maintainBottomViewPadding?.getValue(zacContext) ?? false,
    );
  }
}
