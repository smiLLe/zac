import 'dart:async';

import 'package:zac/src/flutter/completer.dart';
import 'package:zac/src/zac/action.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_indicator.freezed.dart';
part 'refresh_indicator.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    DartCompleterVoid? onRefreshCompleter,
  }) = _FlutterRefreshIndicator;

  @override
  Widget buildWidget(ZacContext zacContext) {
    return RefreshIndicator(
      onRefresh: () async {
        if (null == onRefreshCompleter) {
          onRefresh.execute(const ZacActionPayload(), zacContext);
          return Future.value(null);
        }

        zacContext.ref
            .invalidate(SharedValue.provider(onRefreshCompleter!.family));
        final completer = onRefreshCompleter!.getValue(zacContext);
        onRefresh.execute(ZacActionPayload.param(completer), zacContext);
        return completer.future;
      },
      displacement: displacement?.getValueOrNull(zacContext) ?? 40.0,
      edgeOffset: edgeOffset?.getValueOrNull(zacContext) ?? 0.0,
      color: color?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      semanticsLabel: semanticsLabel?.getValueOrNull(zacContext),
      semanticsValue: semanticsValue?.getValueOrNull(zacContext),
      strokeWidth: strokeWidth?.getValueOrNull(zacContext) ??
          RefreshProgressIndicator.defaultStrokeWidth,
      triggerMode:
          triggerMode?.build(zacContext) ?? RefreshIndicatorTriggerMode.onEdge,
      child: child.buildWidget(zacContext),
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
