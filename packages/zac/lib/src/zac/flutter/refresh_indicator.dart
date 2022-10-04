import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/material/refresh_indicator.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/misc.dart';

part 'refresh_indicator.freezed.dart';
part 'refresh_indicator.g.dart';

@defaultConverterFreezed
class FlutterRefreshIndicatorAction
    with _$FlutterRefreshIndicatorAction
    implements ZacInteraction {
  const FlutterRefreshIndicatorAction._();

  static const String unionValue = 'z:1:RefreshIndicator.complete';

  factory FlutterRefreshIndicatorAction.fromJson(Map<String, dynamic> json) =>
      _$FlutterRefreshIndicatorActionFromJson(json);

  @FreezedUnionValue(FlutterRefreshIndicatorAction.unionValue)
  const factory FlutterRefreshIndicatorAction() =
      _FlutterRefreshIndicatorAction;

  @override
  void execute(BuildContext context, WidgetRef ref,
      ZacInteractionLifetime lifetime, ContextBag bag) {
    final completer = bag.safeGet<Completer<void>>(
      key: kBagActionPayload,
      notFound: () => throw StateError('''
There was an error in $FlutterRefreshIndicatorAction where no payload was found.
It is expected to receive a $Completer from $FlutterRefreshIndicator.
'''),
    );
    lifetime.onUnmount(() {
      if (completer.isCompleted) return;
      completer.completeError(const Object());
    });
    if (completer.isCompleted) return;
    completer.complete();
  }
}
