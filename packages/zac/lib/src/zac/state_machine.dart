import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/zac_values.dart';

part 'state_machine.freezed.dart';
part 'state_machine.g.dart';

@defaultConverterFreezed
class ZacTransition with _$ZacTransition {
  static const String unionValue = 'z:1:StateMachine:Transition';

  factory ZacTransition.fromJson(Map<String, dynamic> json) =>
      _$ZacTransitionFromJson(json);

  @FreezedUnionValue(ZacTransition.unionValue)
  factory ZacTransition({
    required String event,
    required String target,
    // ZacActions? actions,
    // ZacTransformers? guard,
  }) = _ZacTransition;
}

@defaultConverterFreezed
class ZacStateConfig with _$ZacStateConfig {
  static const String unionValue = 'z:1:StateMachine:StateConfig';

  factory ZacStateConfig.fromJson(Map<String, dynamic> json) =>
      _$ZacStateConfigFromJson(json);

  @FreezedUnionValue(ZacStateConfig.unionValue)
  factory ZacStateConfig({
    required FlutterWidget widget,
    @Default(<ZacTransition>[]) List<ZacTransition> on,
  }) = _ZacStateConfig;
}

@freezed
class ZacStateMachine with _$ZacStateMachine {
  ZacStateMachine._();

  factory ZacStateMachine({
    required Map<String, ZacStateConfig> states,
    required String state,
    required SharedValueType? context,
    required void Function(String event, SharedValueType? context) send,
    required void Function(String event, SharedValueType? context) trySend,
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

  FlutterWidget get widget => config.widget;

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

@defaultConverterFreezed
class ZacStateMachineProviderBuilder
    with _$ZacStateMachineProviderBuilder
    implements FlutterWidget {
  const ZacStateMachineProviderBuilder._();
  static const String unionValue = 'z:1:StateMachine.provide';

  factory ZacStateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineProviderBuilderFromJson(json);

  @FreezedUnionValue(ZacStateMachineProviderBuilder.unionValue)
  factory ZacStateMachineProviderBuilder({
    FlutterKey? key,
    required ZacString family,
    required ZacString initialState,
    required Map<String, ZacStateConfig> states,
    required FlutterWidget child,
    ZacObject? initialContext,
  }) = _ZacStateMachineProviderBuilder;

  @override
  ZacStateMachineProvider buildWidget(ZacOriginWidgetTree origin) {
    return ZacStateMachineProvider(
      key: key?.buildKey(origin),
      initialState: initialState.getValue(origin),
      initialContext: initialContext?.getValue(origin),
      states: states,
      family: family.getValue(origin),
      builder: child.buildWidget,
    );
  }
}

class ZacStateMachineProvider extends StatelessWidget {
  const ZacStateMachineProvider({
    required this.initialState,
    required this.initialContext,
    required this.states,
    required this.family,
    required this.builder,
    super.key,
  });

  final String family;
  final Widget Function(ZacOriginWidgetTree origin) builder;

  final Map<String, ZacStateConfig> states;
  final String initialState;
  final SharedValueType initialContext;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        SharedValue.provider(family).overrideWithProvider(
            AutoDisposeStateProvider<SharedValueType>((ref) {
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
because there was already a transition.
''');
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
                );
              });
            };
          }

          ref.onDispose(() {
            sessionId = -1;
          });

          return ZacStateMachine(
            states: states,
            state: initialState,
            context: initialContext,
            send: getSend(trySend: false, sId: sessionId),
            trySend: getSend(trySend: true, sId: sessionId),
          );
        })),
      ],
      child: ZacUpdateOrigin(builder: builder),
    );
  }
}

@defaultConverterFreezed
class ZacStateMachineBuildStateBuilder
    with _$ZacStateMachineBuildStateBuilder
    implements FlutterWidget {
  const ZacStateMachineBuildStateBuilder._();
  static const String unionValue = 'z:1:StateMachine:BuildState';

  factory ZacStateMachineBuildStateBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$ZacStateMachineBuildStateBuilderFromJson(json);

  @FreezedUnionValue(ZacStateMachineBuildStateBuilder.unionValue)
  factory ZacStateMachineBuildStateBuilder({
    FlutterKey? key,
    required ZacString family,
    required List<String> states,
    FlutterWidget? unmappedStateWidget,
  }) = _ZacStateMachineBuildStateBuilder;

  @override
  ZacStateMachineBuildState buildWidget(ZacOriginWidgetTree origin) {
    return ZacStateMachineBuildState(
      key: key?.buildKey(origin),
      family: family.getValue(origin),
      states: states,
      unmappedStateWidget: (origin) =>
          unmappedStateWidget?.buildWidget(origin) ??
          (const FlutterSizedBox.shrink()).buildWidget(origin),
    );
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
  final Widget Function(ZacOriginWidgetTree origin) unmappedStateWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final origin = useZacOrigin(ref);
    final machine =
        SharedValue.get(const SharedValueConsumeType.watch(), origin, family)
            as ZacStateMachine;

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
      return machine.widget.buildWidget(origin);
    }
    return unmappedStateWidget(origin);
  }
}
