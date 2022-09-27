import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/base.dart';
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

@freezed
class CurrentState with _$CurrentState {
  factory CurrentState(
    String state,
    MachineContext context, {
    required void Function(
      String event,

      /// Optional payload which will be available as [kBagStateMachineSendPayload]
      /// and [kBagPayload].
      SendPayload payload, {
      void Function(ContextBag bag)? prefillBag,
    })
        send,
  }) = _CurrentState;
}

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

@defaultConverterFreezed
class StateMachine with _$StateMachine {
  StateMachine._();

  static const String unionValue = 'z:1:StateMachine';

  factory StateMachine.fromJson(Map<String, dynamic> json) {
    final machine = _$StateMachineFromJson(json);
    assert(() {
      machine.validate();
      return true;
    }(), '');

    return machine;
  }

  @FreezedUnionValue(StateMachine.unionValue)
  factory StateMachine(
    String initial,
    List<StateNode> states, {
    MachineContext initialContext,
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
    AutoDisposeProviderFamily<CurrentState, Object>((_, fam) {
  throw UnimplementedError('Cannot request StateMachine for family: $fam');
});

AutoDisposeProvider<CurrentState> createStateMachineProvider({
  required StateMachine machine,
  required ZacBuildContext zacContext,
}) {
  return Provider.autoDispose<CurrentState>((ref) {
    ref.listenSelf((previous, next) {});

    return CurrentState(
      machine.initial,
      machine.initialContext,
      send: (event, payload, {prefillBag}) {
        final curNode = machine.findNodeByState(ref.state.state);
        final candidates = curNode.on.findCandidates(event);
        if (candidates.isEmpty) return;
        final transition = candidates.first;
        final targetNode = machine.findNodeByState(transition.targetState);

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
  });
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
        final updateContext = bag.saveGet<UpdateContext>(
            key: kBagStateMachineUpdateContext, notFound: null);
        final machineContext = bag.saveGet<MachineContext>(
            key: kBagStateMachineCurrentContext, notFound: null);
        updateContext(obj.transformer
            .transformValues(ZacTransformValue(machineContext), context));
      },
    );
  }
}
