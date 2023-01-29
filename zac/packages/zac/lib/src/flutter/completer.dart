import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'completer.freezed.dart';
part 'completer.g.dart';

@freezedZacBuilder
class ZacCompleterVoid with _$ZacCompleterVoid, ZacBuilder<Completer<void>> {
  ZacCompleterVoid._();

  factory ZacCompleterVoid.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterVoidFromJson(json);

  @FreezedUnionValue('f:1:Completer<void>')
  factory ZacCompleterVoid() = _ZacCompleterVoid;

  late final Completer<void> _completer = Completer<void>();

  @override
  Completer<void> build(BuildContext context, ZacContext zacContext) =>
      _completer;
}

@freezedZacBuilder
class ZacCompleterActions
    with _$ZacCompleterActions
    implements ZacBuilder<ZacAction> {
  ZacCompleterActions._();

  factory ZacCompleterActions.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterActionsFromJson(json);

  @FreezedUnionValue('f:1:Completer<void>.complete')
  factory ZacCompleterActions.completeVoid({
    required ZacBuilder<Completer> completer,
  }) = _ZacCompleterActionsVoid;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      completeVoid: (obj) {
        final completer = obj.completer.build(context, zacContext);
        if (completer.isCompleted) return;
        completer.complete();
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}
