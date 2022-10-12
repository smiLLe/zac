import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/update_widget.dart';

part 'statemachine.freezed.dart';
part 'statemachine.g.dart';

typedef MachineContext = Object?;
typedef UpdateContext = void Function(MachineContext context);
typedef SetState = void Function(String state);

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
  factory StateNode({
    required String state,
    @Default(<Transition>[]) List<Transition> on,
    ZacActions? actions,
  }) = _StateNode;
}

@defaultConverterFreezed
class Transition with _$Transition {
  static const String unionValue = 'z:1:StateMachine:Transition';

  factory Transition.fromJson(Map<String, dynamic> json) =>
      _$TransitionFromJson(json);

  @FreezedUnionValue(Transition.unionValue)
  factory Transition({
    required String event,
    required String target,
    ZacActions? actions,
  }) = _Transition;
}

class StateMachineValidationError extends StateError {
  StateMachineValidationError(super.message);
}

extension XTransitions on Iterable<Transition> {
  Iterable<Transition> findCandidates(String event) {
    return where((transition) => transition.event == event);
  }
}

@defaultConverterFreezed
class StateMachineActions with _$StateMachineActions implements ZacAction {
  const StateMachineActions._();

  static const String unionValue = 'z:1:StateMachine:Action.send';
  static const String unionValueUpdateContext =
      'z:1:StateMachine:Action.updateContext';
  static const String unionValueSetState = 'z:1:StateMachine:Action.setState';

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
    required ZacTransformers transformer,
  }) = _StateMachineActionsUpdateContext;

  @FreezedUnionValue(StateMachineActions.unionValueSetState)
  factory StateMachineActions.setState(String state) =
      _StateMachineActionsSetState;

  @override
  void execute(ZacOrigin origin, ContextBag bag) {
    map(
      send: (obj) {
        origin
            .map(
                widgetTree: (origin) =>
                    origin.ref.read(StateMachine.provider(obj.family).notifier),
                statemachineAction: (origin) =>
                    origin.ref.read(StateMachine.provider(obj.family).notifier))
            .send(
              obj.event.getValue(origin),
              null == obj.payload
                  ? const SendPayload.none()
                  : SendPayload(obj.payload?.getValue(origin)),
              withBag: bag,
            );
      },
      updateContext: (obj) {
        final updateContext = bag.safeGet<UpdateContext>(
            key: kBagStateMachineUpdateContext, notFound: null);
        final machineContext = bag.safeGet<MachineContext>(
            key: kBagStateMachineCurrentContext, notFound: null);
        updateContext(
          obj.transformer
              .transformWithBag(ZacTransformValue(machineContext), origin, bag),
        );
      },
      setState: (obj) => bag.safeGet<SetState>(
          key: kBagStateMachineSetState, notFound: null)(obj.state),
    );
  }
}

@defaultConverterFreezed
class StateMachineProviderBuilder
    with _$StateMachineProviderBuilder
    implements FlutterWidget {
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
    required FlutterWidget child,
    ZacObject? initialContext,
  }) = _StateMachineProviderBuilder;

  @override
  StateMachineProvider buildWidget(ZacOriginWidgetTree origin) {
    return StateMachineProvider(
      key: key?.buildKey(origin),
      initialState: initialState.getValue(origin),
      initialContext: initialContext?.getValue(origin),
      states: states,
      family: family.getValue(origin),
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
  final Widget Function(ZacOriginWidgetTree origin) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = useMemoized(() {
      return AutoDisposeStateNotifierProvider<StateMachine, CurrentState>(
          (ref) {
        return StateMachine(
          ref: ref,
          context: initialContext,
          state: initialState,
          nodes: states,
        );
      });
    }, [initialState, initialContext, states]);

    return ProviderScope(
      overrides: [
        StateMachine.provider(family).overrideWithProvider(provider),
        SharedValue.provider('$family.state')
            .overrideWithProvider(AutoDisposeStateProvider<SharedValue>(
          (ref) {
            return SharedValue(ref.watch(StateMachine.provider(family)
                .select((curState) => curState.state)));
          },
          // dependencies: [statemachineProvider(family)],
        )),
        SharedValue.provider('$family.context')
            .overrideWithProvider(AutoDisposeStateProvider<SharedValue>(
          (ref) {
            return SharedValue(ref.watch(StateMachine.provider(family)
                .select((curState) => curState.context)));
          },
          // dependencies: [statemachineProvider(family)],
        )),
      ],
      child: ZacUpdateOrigin(builder: builder),
    );
  }
}

@freezed
class CurrentState with _$CurrentState {
  factory CurrentState({
    required String state,
    required MachineContext context,
  }) = _CurrentState;
}

class StateMachine extends StateNotifier<CurrentState> {
  StateMachine({
    required String state,
    required MachineContext context,
    required this.nodes,
    required this.ref,
  }) : super(CurrentState(state: state, context: context)) {
    assert(() {
      validateUniqueStates();
      validateTransitionTargets();
      return true;
    }(), '');

    scheduler.schedule(() {
      session.enter();
    });
  }

  static final provider = AutoDisposeStateNotifierProviderFamily<StateMachine,
      CurrentState, Object>((_, fam) {
    throw UnimplementedError('Cannot request StateMachine for family: $fam');
  });

  final List<StateNode> nodes;
  final AutoDisposeStateNotifierProviderRef<StateMachine, CurrentState> ref;
  late StateMachineSession session = StateMachineSession(this, state.state,
      state.context, 'machine.init', const SendPayload.none());
  final StateMachineScheduler scheduler = StateMachineScheduler();

  StateNode findNodeByState(String state) {
    return nodes.firstWhere(
      (element) => element.state == state,
      orElse: () => throw StateError('''
Could not find State "$state" in List<$StateNode>.
$this
'''),
    );
  }

  @visibleForTesting
  void validateTransitionTargets() {
    for (var node in nodes) {
      for (var transition in node.on) {
        var found = false;
        for (var targetNode in nodes) {
          found = targetNode.state == transition.target ? true : found;
        }
        if (!found) {
          throw StateMachineValidationError('''
Invalid $Transition target.
It is not possible to transition away from state "${node.state}"
on event "${transition.event}".
The target state for event "${transition.event}" is "${transition.target}"
which is not a configured state in the $StateMachine.
$this
''');
        }
      }
    }
  }

  @visibleForTesting
  void validateUniqueStates() {
    final states = nodes.map((e) => e.state.toLowerCase());
    final uniqueStates = states.toSet().toList();
    if (uniqueStates.length != states.length) {
      throw StateMachineValidationError('''
Duplicated States found.
It is not allowed to define the same state more than once in a $StateMachine.
Remove the duplicated state: $states
''');
    }
  }

  @override
  void dispose() {
    scheduler.dispose();
    session.dispose();
    super.dispose();
  }

  void next(
      CurrentState Function(String currentState, MachineContext context) cb,
      String event,
      SendPayload payload) {
    session.dispose();

    scheduler.schedule(() {
      final nextState = cb(state.state, state.context);
      state = nextState;
      session = StateMachineSession(
          this, nextState.state, nextState.context, event, payload);
      session.enter();
    });
  }

  void send(
    String event,
    SendPayload payload, {
    ContextBag? withBag,
  }) {
    session.send(event, payload, withBag: withBag);
  }
}

class StateMachineSession {
  StateMachineSession(
    this._machine,
    this.inState,
    this.context,
    this.onEvent,
    this.payload,
  );

  final StateMachine _machine;
  final String inState;
  final String onEvent;
  final SendPayload payload;
  MachineContext context;

  late final ZacOriginStateMachineAction origin = ZacOriginStateMachineAction(
    ref: _machine.ref,
    lifetime: ZacOriginLifetimeStateMachineAction(
      isActive: () => _isActive,
      onBecomeInactive: onBecomeInactiveCbs.add,
    ),
  );

  final List<void Function()> onBecomeInactiveCbs = [];
  bool _isActive = true;
  late final ContextBag _actionsBag = _getBag();

  ContextBag _getBag() {
    final bag = ContextBag();
    _fillBag(bag);
    return bag;
  }

  void _fillBag(ContextBag bag) {
    final pl = payload;
    bag.addAll(<String, dynamic>{
      kBagStateMachineCurrentContext: context,
      kBagStateMachineUpdateContext: (MachineContext context) {
        if (!_isActive) return;
        bag.addKeyValue(kBagStateMachineCurrentContext, context);
        this.context = context;
      },
      kBagStateMachineCurrentState: inState,
      kBagStateMachineSetState: (String state) {
        if (!_isActive) return;
        _machine.next((_, __) => CurrentState(state: state, context: context),
            'machine.next', const SendPayload.none());
      },
      kBagStateMachineSendEvent: onEvent,
      if (pl is _SendPayload) kBagStateMachineSendPayload: pl.data,
      if (pl is _SendPayload) kBagPayload: pl.data,
    });
  }

  @mustCallSuper
  void dispose() {
    for (var cb in onBecomeInactiveCbs) {
      cb();
    }
    onBecomeInactiveCbs.clear();
    _isActive = false;
    _actionsBag.clear();
  }

  void enter() {
    final node = _machine.findNodeByState(inState);
    node.actions?.executeWithBag(origin, _actionsBag);
  }

  void send(
    String event,
    SendPayload payload, {
    ContextBag? withBag,
  }) {
    if (!_isActive) return;

    final curNode = _machine.findNodeByState(inState);
    final candidates = curNode.on.findCandidates(event);
    if (candidates.isEmpty) return;
    final transition = candidates.first;
    final targetNode = _machine.findNodeByState(transition.target);

    if (true == transition.actions?.actions.isNotEmpty) {
      final bag = withBag ?? _getBag();
      bag.addAll(<String, dynamic>{
        kBagStateMachineSendEvent: event,
        if (payload is _SendPayload) kBagStateMachineSendPayload: payload.data,
        if (payload is _SendPayload) kBagPayload: payload.data,
      });
      transition.actions?.executeWithBag(origin, bag);
      bag.clear();
    }

    if (!_isActive) return;
    _machine.next(
        (_, __) => CurrentState(state: targetNode.state, context: context),
        event,
        payload);
  }
}

class StateMachineScheduler {
  StateMachineScheduler();
  StateMachineScheduler.createAndExecute(void Function() callback) {
    _process(callback);
    _flushEvents();
  }
  final List<void Function()> _queue = [];
  bool _processingEvent = false;

  void dispose() {
    _queue.clear();
  }

  void schedule(void Function() task) {
    if (_processingEvent) {
      _queue.add(task);
      return;
    }

    if (_queue.isNotEmpty) {
      throw Exception(
          'Event queue should be empty when it is not processing events');
    }

    _process(task);
    _flushEvents();
  }

  void _flushEvents() {
    if (_queue.isEmpty) return;
    void Function()? nextCallback = _queue.removeAt(0);
    while (null != nextCallback) {
      _process(nextCallback);
      if (_queue.isEmpty) {
        nextCallback = null;
      } else {
        nextCallback = _queue.removeAt(0);
      }
    }
  }

  void _process(void Function() callback) {
    _processingEvent = true;
    try {
      callback();
    } catch (e, trace) {
      // there is no use to keep the future events
      // as the situation is not anymore the same
      _queue.clear();

      Error.throwWithStackTrace(e, trace);
    } finally {
      _processingEvent = false;
    }
  }
}
