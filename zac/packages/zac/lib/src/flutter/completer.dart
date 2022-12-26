import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'completer.freezed.dart';
part 'completer.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacCompleterVoidProvider
    with _$ZacCompleterVoidProvider, ZacBuild<Widget> {
  const ZacCompleterVoidProvider._();

  factory ZacCompleterVoidProvider.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterVoidProviderFromJson(json);

  @FreezedUnionValue('z:1:Completer<void>.provide')
  factory ZacCompleterVoidProvider({
    required SharedValueFamily family,
    required ZacValue<Widget> child,
  }) = _ZacCompleterVoidProvider;

  Completer<void> _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref, ZacContext zacContext) {
    return map((_) {
      final completer = Completer<void>();
      ref.onDispose(() {
        if (completer.isCompleted) return;
        completer.complete();
      });
      return completer;
    });
  }

  Widget _childBuilder(ZacContext zacContext) => map(
        (obj) => obj.child.build(zacContext),
      );

  @override
  Widget build(ZacContext zacContext) {
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
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacCompleterActions with _$ZacCompleterActions implements ZacAction {
  ZacCompleterActions._();

  factory ZacCompleterActions.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterActionsFromJson(json);

  @FreezedUnionValue('z:1:Completer<void>.complete')
  factory ZacCompleterActions.completeVoid({
    required ZacValue<Completer> completer,
  }) = _ZacCompleterActionsVoid;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      completeVoid: (obj) {
        final completer = obj.completer.build(zacContext);
        if (completer.isCompleted) return;
        completer.complete();
      },
    );
  }
}
