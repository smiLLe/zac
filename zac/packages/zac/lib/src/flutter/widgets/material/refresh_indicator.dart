import 'dart:async';

import 'package:zac/src/flutter/completer.dart';
import 'package:zac/src/zac/action.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
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

  RefreshIndicator _buildWidget(ZacContext zacContext) {
    return RefreshIndicator(
      onRefresh: () async {
        if (null == onRefreshCompleter) {
          onRefresh.execute(const ZacActionPayload(), zacContext);
          return Future.value(null);
        }

        zacContext.ref
            .invalidate(SharedValue.provider(onRefreshCompleter!.family));
        final completer = onRefreshCompleter!.build(zacContext);
        onRefresh.execute(ZacActionPayload.param(completer), zacContext);
        return completer.future;
      },
      displacement: displacement?.buildOrNull(zacContext) ?? 40.0,
      edgeOffset: edgeOffset?.buildOrNull(zacContext) ?? 0.0,
      color: color?.buildOrNull(zacContext),
      backgroundColor: backgroundColor?.buildOrNull(zacContext),
      semanticsLabel: semanticsLabel?.buildOrNull(zacContext),
      semanticsValue: semanticsValue?.buildOrNull(zacContext),
      strokeWidth: strokeWidth?.buildOrNull(zacContext) ??
          RefreshProgressIndicator.defaultStrokeWidth,
      triggerMode: triggerMode?.buildOrNull(zacContext) ??
          RefreshIndicatorTriggerMode.onEdge,
      child: child.build(zacContext),
    );
  }

  @override
  RefreshIndicator build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  RefreshIndicator? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterRefreshIndicatorTriggerMode
    with
        _$FlutterRefreshIndicatorTriggerMode,
        ZacBuilder<RefreshIndicatorTriggerMode> {
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

  RefreshIndicatorTriggerMode _build(ZacContext zacContext) {
    return map(
      onEdge: (_) => RefreshIndicatorTriggerMode.onEdge,
      anywhere: (_) => RefreshIndicatorTriggerMode.anywhere,
    );
  }

  @override
  RefreshIndicatorTriggerMode build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  RefreshIndicatorTriggerMode? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}
