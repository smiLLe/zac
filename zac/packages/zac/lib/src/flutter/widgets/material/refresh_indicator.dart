import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/zac/action.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_indicator.freezed.dart';
part 'refresh_indicator.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterRefreshIndicator
    with _$FlutterRefreshIndicator
    implements FlutterWidget {
  const FlutterRefreshIndicator._();

  static const String familyName = 'refresh_indicator';

  static const String unionValue = 'f:1:RefreshIndicator';

  factory FlutterRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicator.unionValue)
  factory FlutterRefreshIndicator({
    FlutterKey? key,
    required FlutterWidget child,
    ZacValue<double>? displacement,
    ZacValue<double>? edgeOffset,
    required ZacActions onRefresh,
    FlutterColor? color,
    FlutterColor? backgroundColor,
// ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
    ZacValue<String>? semanticsLabel,
    ZacValue<String>? semanticsValue,
    ZacValue<double>? strokeWidth,
    FlutterRefreshIndicatorTriggerMode? triggerMode,
    @Default(FlutterRefreshIndicator.familyName) SharedValueFamily family,
  }) = _FlutterRefreshIndicator;

  @override
  Widget buildWidget(ZacContext zacContext) {
    return ProviderScope(
      key: key?.buildKey(zacContext),
      overrides: [
        SharedValue.provider(family).overrideWithProvider(
            AutoDisposeStateProvider<SharedValueType>((ref) {
          final completer = Completer<void>();
          ref.onDispose(() {
            if (completer.isCompleted) return;
            completer.complete();
          });
          return completer;
        })),
      ],
      child: ZacUpdateContext(
        builder: (zacContext) {
          final completer = SharedValue.get(
                  const SharedValueConsumeType.watch(), zacContext, family)
              as Completer<void>;
          return RefreshIndicator(
            onRefresh: () async {
              onRefresh.execute(ZacActionPayload.param(completer), zacContext);
              return completer.future;
            },
            displacement: displacement?.getValue(zacContext) ?? 40.0,
            edgeOffset: edgeOffset?.getValue(zacContext) ?? 0.0,
            color: color?.build(zacContext),
            backgroundColor: backgroundColor?.build(zacContext),
            semanticsLabel: semanticsLabel?.getValue(zacContext),
            semanticsValue: semanticsValue?.getValue(zacContext),
            triggerMode: triggerMode?.build(zacContext) ??
                RefreshIndicatorTriggerMode.onEdge,
            child: child.buildWidget(zacContext),
          );
        },
      ),
    );
  }
}

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
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
