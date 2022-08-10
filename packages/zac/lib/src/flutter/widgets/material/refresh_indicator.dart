import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/widget_context.dart';

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
    implements ZacWidget {
  const FlutterRefreshIndicator._();

  static const String unionValue = 'f:1:RefreshIndicator';

  factory FlutterRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicator.unionValue)
  factory FlutterRefreshIndicator({
    FlutterKey? key,
    required ZacWidget child,
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
  RefreshIndicator buildWidget(ZacBuildContext context) {
    return RefreshIndicator(
      key: key?.buildKey(context),
      child: child.buildWidget(context),
      onRefresh: () async =>
          onRefresh.execute(context, const ActionPayload.none()),
      displacement: displacement?.getValue(context) ?? 40.0,
      edgeOffset: edgeOffset?.getValue(context) ?? 0.0,
      color: color?.build(context),
      backgroundColor: backgroundColor?.build(context),
      semanticsLabel: semanticsLabel?.getValue(context),
      semanticsValue: semanticsValue?.getValue(context),
      triggerMode:
          triggerMode?.build(context) ?? RefreshIndicatorTriggerMode.onEdge,
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

  RefreshIndicatorTriggerMode build(ZacBuildContext context) {
    return map(
      onEdge: (_) => RefreshIndicatorTriggerMode.onEdge,
      anywhere: (_) => RefreshIndicatorTriggerMode.anywhere,
    );
  }
}
