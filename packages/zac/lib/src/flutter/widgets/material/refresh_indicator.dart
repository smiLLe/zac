import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
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
    required ZacUiActions onRefresh,
    FlutterColor? color,
    FlutterColor? backgroundColor,
// ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
    ZacString? semanticsLabel,
    ZacString? semanticsValue,
    ZacDouble? strokeWidth,
    FlutterRefreshIndicatorTriggerMode? triggerMode,
  }) = _FlutterRefreshIndicator;

  @override
  RefreshIndicator buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return RefreshIndicator(
      key: key?.buildKey(context, ref, helper),
      child: child.buildWidget(context, ref, helper),
      onRefresh: () async {
        final completer = Completer<void>();
        onRefresh.execute(
          context,
          ref,
          helper,
          prefillBag: (bag) => bag..setActionPayload(completer),
        );
        return completer.future;
      },
      displacement: displacement?.getValue(zacRef) ?? 40.0,
      edgeOffset: edgeOffset?.getValue(zacRef) ?? 0.0,
      color: color?.build(context, ref, helper),
      backgroundColor: backgroundColor?.build(context, ref, helper),
      semanticsLabel: semanticsLabel?.getValue(zacRef),
      semanticsValue: semanticsValue?.getValue(zacRef),
      triggerMode: triggerMode?.build(context, ref, helper) ??
          RefreshIndicatorTriggerMode.onEdge,
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

  RefreshIndicatorTriggerMode build(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return map(
      onEdge: (_) => RefreshIndicatorTriggerMode.onEdge,
      anywhere: (_) => RefreshIndicatorTriggerMode.anywhere,
    );
  }
}
