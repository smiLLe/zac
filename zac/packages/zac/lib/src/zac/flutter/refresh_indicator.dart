import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/material/refresh_indicator.dart';
import 'package:zac/src/zac/action.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';

part 'refresh_indicator.freezed.dart';
part 'refresh_indicator.g.dart';

@defaultConverterFreezed
@ZacGenerate()
class FlutterRefreshIndicatorAction
    with _$FlutterRefreshIndicatorAction
    implements ZacAction {
  const FlutterRefreshIndicatorAction._();

  static const String unionValue = 'z:1:RefreshIndicator.complete';

  factory FlutterRefreshIndicatorAction.fromJson(Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorActionFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicatorAction.unionValue)
  const factory FlutterRefreshIndicatorAction() =
      _FlutterRefreshIndicatorAction;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    final completer = SharedValue.get(
      zacContext: zacContext,
      consumeType: const SharedValueConsumeType.read(),
      family: FlutterRefreshIndicator.familyName,
      select: null,
    ) as Completer<void>;

    if (completer.isCompleted) return;
    completer.complete();
  }
}
