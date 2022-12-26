import 'dart:async';
import 'package:zac/src/zac/action.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_indicator.freezed.dart';
part 'refresh_indicator.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterRefreshIndicator
    with _$FlutterRefreshIndicator
    implements ZacBuild<RefreshIndicator> {
  const FlutterRefreshIndicator._();

  static const String unionValue = 'f:1:RefreshIndicator';

  factory FlutterRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicator.unionValue)
  factory FlutterRefreshIndicator({
    ZacValue<Key?>? key,
    required ZacValue<Widget> child,
    ZacValue<double?>? displacement,
    ZacValue<double?>? edgeOffset,
    required ZacActions onRefresh,
    ZacValue<Color?>? color,
    ZacValue<Color?>? backgroundColor,
// ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
    ZacValue<String?>? semanticsLabel,
    ZacValue<String?>? semanticsValue,
    ZacValue<double?>? strokeWidth,
    ZacValue<RefreshIndicatorTriggerMode?>? triggerMode,
    ZacValue<Completer>? onRefreshCompleter,
  }) = _FlutterRefreshIndicator;

  RefreshIndicator _buildWidget(ZacContext zacContext) {
    return RefreshIndicator(
      onRefresh: () async {
        if (null == onRefreshCompleter) {
          onRefresh.execute(const ZacActionPayload(), zacContext);
          return Future.value(null);
        }

        onRefreshCompleter!.map(
          (_) {},
          consume: (obj) {
            zacContext.ref.invalidate(SharedValue.provider(obj.family));
          },
        );
        final completer = onRefreshCompleter!.build(zacContext);

        onRefresh.execute(ZacActionPayload.param(completer), zacContext);
        return completer.future;
      },
      displacement: displacement?.build(zacContext) ?? 40.0,
      edgeOffset: edgeOffset?.build(zacContext) ?? 0.0,
      color: color?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      semanticsLabel: semanticsLabel?.build(zacContext),
      semanticsValue: semanticsValue?.build(zacContext),
      strokeWidth: strokeWidth?.build(zacContext) ??
          RefreshProgressIndicator.defaultStrokeWidth,
      triggerMode:
          triggerMode?.build(zacContext) ?? RefreshIndicatorTriggerMode.onEdge,
      child: child.build(zacContext),
    );
  }

  @override
  RefreshIndicator build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterRefreshIndicatorTriggerMode
    with
        _$FlutterRefreshIndicatorTriggerMode,
        ZacBuild<RefreshIndicatorTriggerMode> {
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
  RefreshIndicatorTriggerMode build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
