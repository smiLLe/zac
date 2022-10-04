import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'safe_area.freezed.dart';
part 'safe_area.g.dart';

@defaultConverterFreezed
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
  SafeArea buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return SafeArea(
      child: child.buildWidget(context, ref, lifetime),
      key: key?.buildKey(context, ref, lifetime),
      left: left?.getValue(zacRef) ?? true,
      top: top?.getValue(zacRef) ?? true,
      right: right?.getValue(zacRef) ?? true,
      bottom: bottom?.getValue(zacRef) ?? true,
      minimum: minimum?.build(context, ref, lifetime) ?? EdgeInsets.zero,
      maintainBottomViewPadding:
          maintainBottomViewPadding?.getValue(zacRef) ?? false,
    );
  }
}
