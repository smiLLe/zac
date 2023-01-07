import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'state_machine.freezed.dart';
part 'state_machine.g.dart';

@freezedZacBuilder
class ZacTransition with _$ZacTransition {
  ZacTransition._();

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
class ZacStateConfig with _$ZacStateConfig {
  ZacStateConfig._();

  static const String unionValue = 'z:1:StateMachine:StateConfig';

  factory ZacStateConfig.fromJson(Map<String, dynamic> json) =>
      _$ZacStateConfigFromJson(json);

  @FreezedUnionValue(ZacStateConfig.unionValue)
  factory ZacStateConfig({
    required ZacBuilder<Widget> widget,
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

  ZacBuilder<Widget> getWidget(BuildContext context, ZacContext zacContext) {
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
class ZacStateMachineProviderBuilder
    with _$ZacStateMachineProviderBuilder
    implements ZacBuilder<Widget> {
  const ZacStateMachineProviderBuilder._();
  static const String unionValue = 'z:1:StateMachine.provide';

  factory ZacStateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineProviderBuilderFromJson(json);

  @FreezedUnionValue(ZacStateMachineProviderBuilder.unionValue)
  factory ZacStateMachineProviderBuilder({
    ZacBuilder<Key?>? key,
    required ZacBuilder<String> family,
    required ZacBuilder<String> initialState,
    required Map<String, ZacStateConfig> states,
    required ZacBuilder<Widget> child,
    ZacBuilder<Object?>? initialContext,
  }) = _ZacStateMachineProviderBuilder;

  ZacStateMachine _createMachine(
      AutoDisposeStateProviderRef<SharedValueType> ref,
      BuildContext context,
      ZacContext zacContext) {
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
      states: states,
      state: initialState.build(context, zacContext),
      context: initialContext?.build(context, zacContext),
      send: getSend(trySend: false, sId: sessionId),
      trySend: getSend(trySend: true, sId: sessionId),
      isActive: () => sessionId == 0,
    );
  }

  Widget _buildWidget(BuildContext context, ZacContext zacContext) {
    return SharedValueProvider(
      key: key?.build(context, zacContext),
      family: family.build(context, zacContext),
      autoCreate: true,
      childBuilder: child.build,
      valueBuilder: _createMachine,
    );
  }

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
class ZacStateMachineBuildStateBuilder
    with _$ZacStateMachineBuildStateBuilder
    implements ZacBuilder<Widget> {
  const ZacStateMachineBuildStateBuilder._();
  static const String unionValue = 'z:1:StateMachine:BuildState';

  factory ZacStateMachineBuildStateBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$ZacStateMachineBuildStateBuilderFromJson(json);

  @FreezedUnionValue(ZacStateMachineBuildStateBuilder.unionValue)
  factory ZacStateMachineBuildStateBuilder({
    ZacBuilder<Key?>? key,
    required ZacBuilder<String> family,
    required List<String> states,
    ZacBuilder<Widget?>? unmappedStateWidget,
  }) = _ZacStateMachineBuildStateBuilder;

  ZacStateMachineBuildState _buildWidget(
      BuildContext context, ZacContext zacContext) {
    return ZacStateMachineBuildState(
      key: key?.build(context, zacContext),
      family: family.build(context, zacContext),
      states: states,
      unmappedStateWidget: (zacContext) =>
          unmappedStateWidget?.build(context, zacContext) ??
          const SizedBox.shrink(),
    );
  }

  @override
  ZacStateMachineBuildState build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
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
    final zacContext = useZacContext();
    final machine = SharedValue.get(
      context: context,
      zacContext: zacContext,
      consumeType: const SharedValueConsumeType.watch(),
      family: family,
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
      return machine.getWidget(context, zacContext).build(context, zacContext);
    }
    return unmappedStateWidget(zacContext);
  }
}

@freezedZacBuilder
class ZacStateMachineActions
    with _$ZacStateMachineActions
    implements ZacBuilder<ZacAction> {
  ZacStateMachineActions._();

  static const String unionValue = 'z:1:StateMachine:Action.send';
  static const String unionValueTrySend = 'z:1:StateMachine:Action.trySend';

  factory ZacStateMachineActions.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineActionsFromJson(json);

  @FreezedUnionValue(ZacStateMachineActions.unionValue)
  factory ZacStateMachineActions.send({
    required SharedValueFamily family,
    required ZacBuilder<String> event,
  }) = _ZacStateMachineActionsSend;

  @FreezedUnionValue(ZacStateMachineActions.unionValueTrySend)
  factory ZacStateMachineActions.trySend({
    required SharedValueFamily family,
    required ZacBuilder<String> event,
  }) = _ZacStateMachineActionsTrySend;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      send: (obj) {
        final machine = SharedValue.get(
          context: context,
          zacContext: zacContext,
          consumeType: const SharedValueConsumeType.read(),
          family: obj.family,
        ) as ZacStateMachine;
        machine.send(obj.event.build(context, zacContext), payload.params);
      },
      trySend: (obj) {
        final machine = SharedValue.get(
          context: context,
          zacContext: zacContext,
          consumeType: const SharedValueConsumeType.read(),
          family: obj.family,
        ) as ZacStateMachine;
        machine.trySend(obj.event.build(context, zacContext), payload.params);
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

@freezedZacBuilder
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
  Object? transform(ZacTransformValue transformValue, BuildContext context,
      ZacContext zacContext, ZacActionPayload? payload) {
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
