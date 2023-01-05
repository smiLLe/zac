import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'completer.freezed.dart';
part 'completer.g.dart';

@freezedZacBuilder
class ZacCompleterVoidProvider
    with _$ZacCompleterVoidProvider, ZacBuilder<Widget> {
  const ZacCompleterVoidProvider._();

  factory ZacCompleterVoidProvider.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterVoidProviderFromJson(json);

  @FreezedUnionValue('z:1:Completer<void>.provide')
  factory ZacCompleterVoidProvider({
    required SharedValueFamily family,
    required ZacBuilder<Widget> child,
  }) = _ZacCompleterVoidProvider;

  Completer<void> _valueBuilder(AutoDisposeStateProviderRef<Object?> ref,
      BuildContext context, ZacContext zacContext) {
    return map((_) {
      final completer = Completer<void>();
      ref.onDispose(() {
        if (completer.isCompleted) return;
        completer.complete();
      });
      return completer;
    });
  }

  Widget _childBuilder(BuildContext context, ZacContext zacContext) => map(
        (obj) => obj.child.build(context, zacContext),
      );

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return map(
      (obj) {
        return SharedValueProvider(
          childBuilder: _childBuilder,
          valueBuilder: _valueBuilder,
          family: obj.family,
        );
      },
    );
  }
}

@freezedZacBuilder
class ZacCompleterActions with _$ZacCompleterActions implements ZacAction {
  ZacCompleterActions._();

  factory ZacCompleterActions.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterActionsFromJson(json);

  @FreezedUnionValue('z:1:Completer<void>.complete')
  factory ZacCompleterActions.completeVoid({
    required ZacBuilder<Completer> completer,
  }) = _ZacCompleterActionsVoid;

  @override
  void execute(
      ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      completeVoid: (obj) {
        final completer = obj.completer.build(context, zacContext);
        if (completer.isCompleted) return;
        completer.complete();
      },
    );
  }
}
