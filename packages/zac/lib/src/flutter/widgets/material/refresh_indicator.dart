import 'dart:async';

import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_indicator.freezed.dart';
part 'refresh_indicator.g.dart';

@defaultConverterFreezed
class FlutterRefreshIndicator
    with _$FlutterRefreshIndicator
    implements FlutterWidget {
  const FlutterRefreshIndicator._();

  static const String unionValue = 'f:1:RefreshIndicator';

  factory FlutterRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicator.unionValue)
  factory FlutterRefreshIndicator({
    FlutterKey? key,
    required FlutterWidget child,
    ZacDouble? displacement,
    ZacDouble? edgeOffset,
    required ZacActions onRefresh,
    FlutterColor? color,
    FlutterColor? backgroundColor,
// ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
    ZacString? semanticsLabel,
    ZacString? semanticsValue,
    ZacDouble? strokeWidth,
    FlutterRefreshIndicatorTriggerMode? triggerMode,
  }) = _FlutterRefreshIndicator;

  @override
  RefreshIndicator buildWidget(ZacOriginWidgetTree origin) {
    return RefreshIndicator(
      key: key?.buildKey(origin),
      child: child.buildWidget(origin),
      onRefresh: () async {
        final completer = Completer<void>();
        onRefresh.execute(
          origin,
          prefillBag: (bag) => bag..setActionPayload(completer),
        );
        return completer.future;
      },
      displacement: displacement?.getValue(origin) ?? 40.0,
      edgeOffset: edgeOffset?.getValue(origin) ?? 0.0,
      color: color?.build(origin),
      backgroundColor: backgroundColor?.build(origin),
      semanticsLabel: semanticsLabel?.getValue(origin),
      semanticsValue: semanticsValue?.getValue(origin),
      triggerMode:
          triggerMode?.build(origin) ?? RefreshIndicatorTriggerMode.onEdge,
    );
  }
}

@defaultConverterFreezed
class FlutterRefreshIndicatorTriggerMode
    with _$FlutterRefreshIndicatorTriggerMode {
  const FlutterRefreshIndicatorTriggerMode._();

  static const String unionValueOnEdge =
      'f:1:RefreshIndicatorTriggerMode.onEdge';
  static const String unionValueAnyWhere =
      'f:1:RefreshIndicatorTriggerMode.anywhere';

  factory FlutterRefreshIndicatorTriggerMode.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorTriggerModeFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicatorTriggerMode.unionValueOnEdge)
  factory FlutterRefreshIndicatorTriggerMode.onEdge() =
      _FlutterRefreshIndicatorTriggerModeonEdge;

  @FreezedUnionValue(FlutterRefreshIndicatorTriggerMode.unionValueAnyWhere)
  factory FlutterRefreshIndicatorTriggerMode.anywhere() =
      _FlutterRefreshIndicatorTriggerModeanywhere;

  RefreshIndicatorTriggerMode build(ZacOriginWidgetTree origin) {
    return map(
      onEdge: (_) => RefreshIndicatorTriggerMode.onEdge,
      anywhere: (_) => RefreshIndicatorTriggerMode.anywhere,
    );
  }
}
