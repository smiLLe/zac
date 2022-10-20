import 'dart:async';

import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/context.dart';
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
  RefreshIndicator buildWidget(ZacContext zacContext) {
    return RefreshIndicator(
      key: key?.buildKey(zacContext),
      child: child.buildWidget(zacContext),
      onRefresh: () async {
        final completer = Completer<void>();
        final bag = ContextBag();
        bag.setActionPayload(completer);
        zacContext.onUnmount(() {
          if (completer.isCompleted) return;
          completer.completeError(const Object());
        });
        completer.future.whenComplete(() {
          bag.clear();
        });

        onRefresh.executeWithBag(
            ZacActionPayload.param(completer), zacContext, bag);
        return completer.future;
      },
      displacement: displacement?.getValue(zacContext) ?? 40.0,
      edgeOffset: edgeOffset?.getValue(zacContext) ?? 0.0,
      color: color?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      semanticsLabel: semanticsLabel?.getValue(zacContext),
      semanticsValue: semanticsValue?.getValue(zacContext),
      triggerMode:
          triggerMode?.build(zacContext) ?? RefreshIndicatorTriggerMode.onEdge,
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

  RefreshIndicatorTriggerMode build(ZacContext zacContext) {
    return map(
      onEdge: (_) => RefreshIndicatorTriggerMode.onEdge,
      anywhere: (_) => RefreshIndicatorTriggerMode.anywhere,
    );
  }
}
