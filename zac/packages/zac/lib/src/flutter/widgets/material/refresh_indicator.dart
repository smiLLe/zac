import 'dart:async';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_indicator.freezed.dart';
part 'refresh_indicator.g.dart';

@freezedZacBuilder
class FlutterRefreshIndicator
    with _$FlutterRefreshIndicator
    implements ZacBuilder<RefreshIndicator> {
  const FlutterRefreshIndicator._();

  static const String unionValue = 'f:1:RefreshIndicator';

  factory FlutterRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicator.unionValue)
  factory FlutterRefreshIndicator({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> child,
    ZacBuilder<double?>? displacement,
    ZacBuilder<double?>? edgeOffset,
    required ZacListBuilder<ZacAction, List<ZacAction>> onRefresh,
    ZacBuilder<Color?>? color,
    ZacBuilder<Color?>? backgroundColor,
// ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
    ZacBuilder<String?>? semanticsLabel,
    ZacBuilder<String?>? semanticsValue,
    ZacBuilder<double?>? strokeWidth,
    ZacBuilder<RefreshIndicatorTriggerMode?>? triggerMode,
  }) = _FlutterRefreshIndicator;

  RefreshIndicator _buildWidget(BuildContext context, ZacContext zacContext) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh
            .build(context, zacContext)
            .execute(const ZacActionPayload(), context, zacContext);
        return Future.value(null);
      },
      displacement: displacement?.build(context, zacContext) ?? 40.0,
      edgeOffset: edgeOffset?.build(context, zacContext) ?? 0.0,
      color: color?.build(context, zacContext),
      backgroundColor: backgroundColor?.build(context, zacContext),
      semanticsLabel: semanticsLabel?.build(context, zacContext),
      semanticsValue: semanticsValue?.build(context, zacContext),
      strokeWidth: strokeWidth?.build(context, zacContext) ??
          RefreshProgressIndicator.defaultStrokeWidth,
      triggerMode: triggerMode?.build(context, zacContext) ??
          RefreshIndicatorTriggerMode.onEdge,
      child: child.build(context, zacContext),
    );
  }

  @override
  RefreshIndicator build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
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

  RefreshIndicatorTriggerMode _build(
      BuildContext context, ZacContext zacContext) {
    return map(
      onEdge: (_) => RefreshIndicatorTriggerMode.onEdge,
      anywhere: (_) => RefreshIndicatorTriggerMode.anywhere,
    );
  }

  @override
  RefreshIndicatorTriggerMode build(
      BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
