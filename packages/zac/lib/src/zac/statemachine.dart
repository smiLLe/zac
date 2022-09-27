import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/update_context.dart';

part 'statemachine.freezed.dart';
part 'statemachine.g.dart';

typedef MachineContext = Object?;
typedef UpdateContext = void Function(MachineContext context);

@nonConverterFreezed
class SendPayload with _$SendPayload {
  factory SendPayload(Object? data) = _SendPayload;
  const factory SendPayload.none() = _SendPayloadNone;
}

@defaultConverterFreezed
class StateNode with _$StateNode {
  static const String unionValue = 'z:1:StateMachine:State';

  factory StateNode.fromJson(Map<String, dynamic> json) =>
      _$StateNodeFromJson(json);

  @FreezedUnionValue(StateNode.unionValue)
  factory StateNode(String state, List<Transition> on) = _StateNode;
}

@defaultConverterFreezed
class Transition with _$Transition {
  static const String unionValue = 'z:1:StateMachine:Transition';

  factory Transition.fromJson(Map<String, dynamic> json) =>
      _$TransitionFromJson(json);

  @FreezedUnionValue(Transition.unionValue)
  factory Transition(
    String event,
    String targetState, {
    ZacActions? actions,
  }) = _Transition;
}

class StateMachineValidationError extends StateError {
  StateMachineValidationError(super.message);
}

@freezed
class StateMachine with _$StateMachine {
  StateMachine._();

  factory StateMachine({
    required String state,
    required MachineContext context,
    required List<StateNode> states,
    required void Function(
      String event,

      /// Optional payload which will be available as [kBagStateMachineSendPayload]
      /// and [kBagPayload].
      SendPayload payload, {
      void Function(ContextBag bag)? prefillBag,
    })
        send,
  }) = _StateMachine;

  @visibleForTesting
  void validateTransitionTargets() {
    for (var node in states) {
      for (var transition in node.on) {
        var found = false;
        for (var targetNode in states) {
          found = targetNode.state == transition.targetState ? true : found;
        }
        if (!found) {
          throw StateMachineValidationError('''
Invalid $Transition target.
It is not possible to transition away from state "${node.state}"
on event "${transition.event}".
The target state for event "${transition.event}" is "${transition.targetState}"
which is not a configured state in the $StateMachine.
$this
''');
        }
      }
    }
  }

  @visibleForTesting
  void validateUniqueStates() {
    final states = this.states.map((e) => e.state.toLowerCase());
    final uniqueStates = states.toSet().toList();
    if (uniqueStates.length != states.length) {
      throw StateMachineValidationError('''
Duplicated States found.
It is not allowed to define the same state more than once in a $StateMachine.
Remove the duplicated state: $states
''');
    }
  }

  void validate() {
    validateUniqueStates();
    validateTransitionTargets();
  }

  StateNode findNodeByState(String state) {
    return states.firstWhere(
      (element) => element.state == state,
      orElse: () => throw StateError('''
Could not find State "$state" in List<$StateNode>.
$this
'''),
    );
  }
}

extension XTransitions on Iterable<Transition> {
  Iterable<Transition> findCandidates(String event) {
    return where((transition) => transition.event == event);
  }
}

final statemachineProvider =
    AutoDisposeProviderFamily<StateMachine, Object>((_, fam) {
  throw UnimplementedError('Cannot request StateMachine for family: $fam');
});

StateMachine createStateMachineProvider({
  required String initialState,
  required Object? initialContext,
  required List<StateNode> states,
  required ZacBuildContext zacContext,
  required AutoDisposeProviderRef<StateMachine> ref,
}) {
  ref.listenSelf((previous, next) {});

  return StateMachine(
    state: initialState,
    context: initialContext,
    states: states,
    send: (event, payload, {prefillBag}) {
      final curNode = ref.state.findNodeByState(ref.state.state);
      final candidates = curNode.on.findCandidates(event);
      if (candidates.isEmpty) return;
      final transition = candidates.first;
      final targetNode = ref.state.findNodeByState(transition.targetState);

      MachineContext nextContext = ref.state.context;
      transition.actions?.execute(
        zacContext,
        prefillBag: (bag) {
          bag
            ..addKeyValue(kBagStateMachineSendEvent, event)
            ..addKeyValue(kBagStateMachineCurrentContext, ref.state.context)
            ..addKeyValue(kBagStateMachineUpdateContext,
                (MachineContext context) {
              bag.addKeyValue(
                  kBagStateMachineCurrentContext, ref.state.context);
              return nextContext = context;
            });
          if (payload is _SendPayload) {
            bag.setStateMachinePayload(payload.data);
          }
        },
      );

      ref.state = ref.state.copyWith.call(
        state: targetNode.state,
        context: nextContext,
      );
    },
  );
}

@defaultConverterFreezed
class StateMachineActions with _$StateMachineActions implements ZacAction {
  const StateMachineActions._();

  static const String unionValue = 'z:1:StateMachine:Action.send';
  static const String unionValueUpdateContext =
      'z:1:StateMachine:Action.updateContext';

  factory StateMachineActions.fromJson(Map<String, dynamic> json) =>
      _$StateMachineActionsFromJson(json);

  @FreezedUnionValue(StateMachineActions.unionValue)
  factory StateMachineActions.send({
    required SharedValueFamily family,
    required ZacString event,

    /// Optional payload which will be available as [kBagStateMachineSendPayload]
    /// and [kBagPayload].
    /// A payload send by an action will still be available
    /// through [kBagActionPayload].
    ZacObject? payload,
  }) = _StateMachineActionsSend;

  @FreezedUnionValue(StateMachineActions.unionValueUpdateContext)
  factory StateMachineActions.updateContext({
    required List<ZacTransformer> transformer,
  }) = _StateMachineActionsUpdateContext;

  @override
  void execute(ZacBuildContext context, ContextBag bag) {
    map(
      send: (obj) {
        context.ref.read(statemachineProvider(obj.family)).send(
              obj.event.getValue(context),
              null == obj.payload
                  ? const SendPayload.none()
                  : SendPayload(obj.payload?.getValue(context)),
              prefillBag: (bag) => bag.addEntries(bag.entries),
            );
      },
      updateContext: (obj) {
        final updateContext = bag.safeGet<UpdateContext>(
            key: kBagStateMachineUpdateContext, notFound: null);
        final machineContext = bag.safeGet<MachineContext>(
            key: kBagStateMachineCurrentContext, notFound: null);
        updateContext(
          obj.transformer.transformValues(
            ZacTransformValue(machineContext),
            context,
            prefillBag: (innerBag) => innerBag..addEntries(bag.entries),
          ),
        );
      },
    );
  }
}

@defaultConverterFreezed
class StateMachineProviderBuilder
    with _$StateMachineProviderBuilder
    implements ZacWidget {
  const StateMachineProviderBuilder._();
  static const String unionValue = 'z:1:StateMachine.provide';

  factory StateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$StateMachineProviderBuilderFromJson(json);

  @FreezedUnionValue(StateMachineProviderBuilder.unionValue)
  factory StateMachineProviderBuilder({
    FlutterKey? key,
    required ZacString initialState,
    required List<StateNode> states,
    required ZacString family,
    required ZacWidget child,
    ZacObject? initialContext,
  }) = _StateMachineProviderBuilder;

  @override
  StateMachineProvider buildWidget(ZacBuildContext context) {
    return StateMachineProvider(
      key: key?.buildKey(context),
      initialState: initialState.getValue(context),
      initialContext: initialContext?.getValue(context),
      states: states,
      family: family.getValue(context),
      builder: child.buildWidget,
    );
  }
}

class StateMachineProvider extends HookConsumerWidget {
  const StateMachineProvider({
    required this.initialState,
    required this.initialContext,
    required this.states,
    required this.family,
    required this.builder,
    Key? key,
  }) : super(key: key);

  final String initialState;
  final Object? initialContext;
  final List<StateNode> states;
  final String family;
  final Widget Function(ZacBuildContext context) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacBuildContext(ref);

    final provider = useMemoized(() {
      return AutoDisposeProvider<StateMachine>(
          (ref) => createStateMachineProvider(
                ref: ref,
                initialContext: initialContext,
                initialState: initialState,
                states: states,
                zacContext: zacContext,
              ));
    }, [initialState, initialContext, states]);

    return ProviderScope(
      overrides: [
        statemachineProvider(family).overrideWithProvider(provider),
        SharedValue.provider('$family.state')
            .overrideWithProvider(AutoDisposeStateProvider<SharedValue>(
          (ref) {
            return SharedValue(ref.watch(
                statemachineProvider(family).select((value) => value.state)));
          },
          // dependencies: [statemachineProvider(family)],
        )),
        SharedValue.provider('$family.context')
            .overrideWithProvider(AutoDisposeStateProvider<SharedValue>(
          (ref) {
            return SharedValue(ref.watch(
                statemachineProvider(family).select((value) => value.context)));
          },
          // dependencies: [statemachineProvider(family)],
        )),
      ],
      child: ZacUpdateContext(builder: builder),
    );
  }
}
