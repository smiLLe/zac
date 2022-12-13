import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'completer.freezed.dart';
part 'completer.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class DartCompleterVoid with _$DartCompleterVoid, ZacBuilder<Completer<void>> {
  const DartCompleterVoid._();

  factory DartCompleterVoid.fromJson(Map<String, dynamic> json) =>
      _$DartCompleterVoidFromJson(json);

  @FreezedUnionValue('z:1:Completer<void>.consume')
  @With<ConsumeSharedValue<Completer<void>>>()
  factory DartCompleterVoid.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _DartCompleterVoidConsumeSharedValue;

  @override
  Completer<void> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(consume: (obj) => obj.buildConsume(zacContext, onConsume));
  }

  @override
  Completer<void>? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(consume: (obj) => obj.buildConsumeOrNull(zacContext, onConsume));
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacCompleterProviderBuilder
    with _$ZacCompleterProviderBuilder
    implements FlutterWidget {
  ZacCompleterProviderBuilder._();

  static const String unionValue = 'z:1:CompleterProvider.void';

  factory ZacCompleterProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterProviderBuilderFromJson(json);

  @FreezedUnionValue(ZacCompleterProviderBuilder.unionValue)
  factory ZacCompleterProviderBuilder.asVoid({
    required ZacValue<Widget> child,
    required SharedValueFamily family,
  }) = _ZacCompleterProviderBuilderVoid;

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      asVoid: (value) => ZacCompleterProvider<void>(
        childBuilder: (zacContext) => value.child.build(zacContext),
        completerBuilder: () => Completer<void>(),
        disposeComplete: (completer) => completer.complete(null),
        family: family,
      ),
    );
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

class ZacCompleterProvider<T> extends StatelessWidget {
  const ZacCompleterProvider({
    required this.completerBuilder,
    required this.disposeComplete,
    required this.childBuilder,
    required this.family,
    Key? key,
  }) : super(key: key);

  final Widget Function(ZacContext zacContext) childBuilder;
  final SharedValueFamily family;

  /// Always return a new Completer instance when this function is called
  final Completer<T> Function() completerBuilder;

  /// Must call .complete() or .completeError(). This is only called when the
  /// provider is going to be disposed and is meant to "cleanUp" the Completer
  /// and its attached Future.
  final Function(Completer<T> completer) disposeComplete;

  @override
  Widget build(BuildContext context) {
    return SharedValueProvider(
      childBuilder: childBuilder,
      valueBuilder: (ref, zacContext) {
        final completer = completerBuilder();
        ref.onDispose(() {
          if (completer.isCompleted) return;
          disposeComplete(completer);
          assert(completer.isCompleted,
              '${Completer<T>} was not completed in disposeComplete callback');
        });
        return completer;
      },
      family: family,
      autoCreate: true,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacCompleterActions with _$ZacCompleterActions implements ZacAction {
  ZacCompleterActions._();

  static const String unionValueCompleteVoid =
      'z:1:CompleterAction.completeVoid';

  factory ZacCompleterActions.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterActionsFromJson(json);

  @FreezedUnionValue(ZacCompleterActions.unionValueCompleteVoid)
  factory ZacCompleterActions.completeVoid({
    required DartCompleterVoid completer,
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
