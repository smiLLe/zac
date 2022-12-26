import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'state_machine.freezed.dart';
part 'state_machine.g.dart';

@freezedZacBuilder
@ZacGenerate()
class ZacTransition with _$ZacTransition {
  static const String unionValue = 'z:1:StateMachine:Transition';

  factory ZacTransition.fromJson(Map<String, dynamic> json) =>
      _$ZacTransitionFromJson(json);

  @FreezedUnionValue(ZacTransition.unionValue)
  factory ZacTransition({
    required String event,
    required String target,
  }) = _ZacTransition;
}

@freezedZacBuilder
@ZacGenerate()
class ZacStateConfig with _$ZacStateConfig {
  static const String unionValue = 'z:1:StateMachine:StateConfig';

  factory ZacStateConfig.fromJson(Map<String, dynamic> json) =>
      _$ZacStateConfigFromJson(json);

  @FreezedUnionValue(ZacStateConfig.unionValue)
  factory ZacStateConfig({
    required ZacValue<Widget> widget,
    @Default(<ZacTransition>[]) List<ZacTransition> on,
  }) = _ZacStateConfig;
}

@freezed
class ZacStateMachine with _$ZacStateMachine {
  ZacStateMachine._();

  factory ZacStateMachine({
    required Map<String, ZacStateConfig> states,
    required String state,
    required SharedValueType context,
    required void Function(String event, SharedValueType context) send,
    required void Function(String event, SharedValueType context) trySend,
    required bool Function() isActive,
  }) = _ZacStateMachine;

  ZacStateConfig get config {
    if (!states.containsKey(state)) {
      throw StateError('''
Invalid $ZacStateMachine state.
The current state of the $ZacStateMachine is "$state" which has no $ZacStateConfig.
All configured states are "${states.keys.join(', ')}".
''');
    }
    return states[state]!;
  }

  ZacValue<Widget> getWidget(ZacContext zacContext) {
    return config.widget;
  }

  ZacStateConfig findConfigByState(String state) {
    return states.entries
        .firstWhere(
          (entry) => entry.key == state,
          orElse: () => throw StateError('''
State does not exist:
Could not find State "$state" in $this'''),
        )
        .value;
  }

  ZacTransition? findCandidate(String event) {
    final candidates =
        config.on.where((transition) => transition.event == event);
    return candidates.isEmpty ? null : candidates.first;
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacStateMachineProviderBuilder
    with _$ZacStateMachineProviderBuilder
    implements ZacBuild<Widget> {
  const ZacStateMachineProviderBuilder._();
  static const String unionValue = 'z:1:StateMachine.provide';

  factory ZacStateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineProviderBuilderFromJson(json);

  @FreezedUnionValue(ZacStateMachineProviderBuilder.unionValue)
  factory ZacStateMachineProviderBuilder({
    ZacValue<Key?>? key,
    required ZacValue<String> family,
    required ZacValue<String> initialState,
    required ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>> states,
    required ZacValue<Widget> child,
    ZacValue<Object?>? initialContext,
  }) = _ZacStateMachineProviderBuilder;

  ZacStateMachine _createMachine(
      AutoDisposeStateProviderRef<SharedValueType> ref, ZacContext zacContext) {
    int sessionId = 0;

    void Function(String event, SharedValueType? context) getSend({
      required bool trySend,
      required int sId,
    }) {
      return (event, context) {
        if (sId != sessionId) {
          if (trySend) return;
          throw StateError('''
No longer possible to send event "$event" to $ZacStateMachine.
It is no longer possible to transition away from the current $ZacStateMachine 
because there was already a transition.''');
        }

        ref.controller.update((curMachine) {
          curMachine as ZacStateMachine;

          final transition = curMachine.findCandidate(event);

          if (null == transition) return curMachine;

          final nextSession = ++sessionId;

          return curMachine.copyWith.call(
            state: transition.target,
            context: context,
            send: getSend(trySend: false, sId: nextSession),
            trySend: getSend(trySend: true, sId: nextSession),
            isActive: () => nextSession == sessionId,
          );
        });
      };
    }

    ref.onDispose(() {
      sessionId = -1;
    });

    return ZacStateMachine(
      states: states.build(zacContext),
      state: initialState.build(zacContext),
      context: initialContext?.build(zacContext),
      send: getSend(trySend: false, sId: sessionId),
      trySend: getSend(trySend: true, sId: sessionId),
      isActive: () => sessionId == 0,
    );
  }

  Widget _buildWidget(ZacContext zacContext) {
    return SharedValueProvider(
      key: key?.build(zacContext),
      family: family.build(zacContext),
      autoCreate: true,
      childBuilder: child.build,
      valueBuilder: _createMachine,
    );
  }

  @override
  Widget build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacStateMachineBuildStateBuilder
    with _$ZacStateMachineBuildStateBuilder
    implements ZacBuild<Widget> {
  const ZacStateMachineBuildStateBuilder._();
  static const String unionValue = 'z:1:StateMachine:BuildState';

  factory ZacStateMachineBuildStateBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$ZacStateMachineBuildStateBuilderFromJson(json);

  @FreezedUnionValue(ZacStateMachineBuildStateBuilder.unionValue)
  factory ZacStateMachineBuildStateBuilder({
    ZacValue<Key?>? key,
    required ZacValue<String> family,
    required List<String> states,
    ZacValue<Widget?>? unmappedStateWidget,
  }) = _ZacStateMachineBuildStateBuilder;

  ZacStateMachineBuildState _buildWidget(ZacContext zacContext) {
    return ZacStateMachineBuildState(
      key: key?.build(zacContext),
      family: family.build(zacContext),
      states: states,
      unmappedStateWidget: (zacContext) =>
          unmappedStateWidget?.build(zacContext) ?? const SizedBox.shrink(),
    );
  }

  @override
  ZacStateMachineBuildState build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

class ZacStateMachineBuildState extends HookConsumerWidget {
  const ZacStateMachineBuildState(
      {required this.family,
      required this.states,
      required this.unmappedStateWidget,
      super.key});

  final String family;
  final List<String> states;
  final Widget Function(ZacContext zacContext) unmappedStateWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final machine = SharedValue.get(
      zacContext: zacContext,
      consumeType: const SharedValueConsumeType.watch(),
      family: family,
      select: null,
    ) as ZacStateMachine;

    /// check if mapped states actually exist in the StateMachine
    assert(() {
      for (var searchForState in states) {
        var found = false;
        for (var state in machine.states.keys) {
          found = state == searchForState;
          if (found) break;
        }
        if (!found) {
          throw StateError('''
It is not possible to build a widget for state "$searchForState".
"$searchForState" does not exist in $ZacStateMachine of family "$family".
All possible states are "${machine.states.keys.join(', ')}".
''');
        }
      }
      return true;
    }(), '');

    if (states.contains(machine.state)) {
      return machine.getWidget(zacContext).build(zacContext);
    }
    return unmappedStateWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate()
class ZacStateMachineActions
    with _$ZacStateMachineActions
    implements ZacAction {
  const ZacStateMachineActions._();

  static const String unionValue = 'z:1:StateMachine:Action.send';
  static const String unionValueTrySend = 'z:1:StateMachine:Action.trySend';

  factory ZacStateMachineActions.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineActionsFromJson(json);

  @FreezedUnionValue(ZacStateMachineActions.unionValue)
  factory ZacStateMachineActions.send({
    required SharedValueFamily family,
    required ZacValue<String> event,
  }) = _ZacStateMachineActionsSend;

  @FreezedUnionValue(ZacStateMachineActions.unionValueTrySend)
  factory ZacStateMachineActions.trySend({
    required SharedValueFamily family,
    required ZacValue<String> event,
  }) = _ZacStateMachineActionsTrySend;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      send: (obj) {
        final machine = SharedValue.get(
          zacContext: zacContext,
          consumeType: const SharedValueConsumeType.read(),
          family: obj.family,
          select: null,
        ) as ZacStateMachine;
        machine.send(
            obj.event.build(
              zacContext,
              onConsume: const SharedValueConsumeType.read(),
            ),
            payload.params);
      },
      trySend: (obj) {
        final machine = SharedValue.get(
          zacContext: zacContext,
          consumeType: const SharedValueConsumeType.read(),
          family: obj.family,
          select: null,
        ) as ZacStateMachine;
        machine.trySend(
            obj.event.build(
              zacContext,
              onConsume: const SharedValueConsumeType.read(),
            ),
            payload.params);
      },
    );
  }
}

@freezedZacBuilder
@ZacGenerate()
class ZacStateMachineTransformer
    with _$ZacStateMachineTransformer
    implements ZacTransformer {
  const ZacStateMachineTransformer._();

  static const String unionValue = 'z:1:StateMachine:Transformer.pickState';
  static const String unionValuePickContext =
      'z:1:StateMachine:Transformer.pickContext';

  factory ZacStateMachineTransformer.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineTransformerFromJson(json);

  @FreezedUnionValue(ZacStateMachineTransformer.unionValue)
  factory ZacStateMachineTransformer.pickState() =
      _ZacStateMachineTransformerPickState;

  @FreezedUnionValue(ZacStateMachineTransformer.unionValuePickContext)
  factory ZacStateMachineTransformer.pickContext() =
      _ZacStateMachineTransformerPickContext;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    if (value is! ZacStateMachine) {
      throw StateError('''
The $ZacStateMachineTransformer expected a transformer value of $ZacStateMachine
but instead got: $value''');
    }

    return map(
      pickState: (_) => value.state,
      pickContext: (_) => value.context,
    );
  }
}
