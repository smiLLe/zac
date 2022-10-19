import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
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

extension XGetStateMachineSession on ContextBag {
  StateMachineSession getStateMachineSession() {
    return safeGet<StateMachineSession>(
        key: StateMachine.bagSessionKey, notFound: null);
  }
}

class StateMachineError extends StateError {
  StateMachineError(super.message);
}

@nonConverterFreezed
class EventPayload with _$EventPayload {
  factory EventPayload(Object? data) = _EventPayload;
  const factory EventPayload.none() = _EventPayloadNone;
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
    ZacTransformers? guard,
  }) = _Transition;
}

@defaultConverterFreezed
class StateMachineActions with _$StateMachineActions implements ZacAction {
  const StateMachineActions._();

  static const String unionValue = 'z:1:StateMachine:Action.send';
  static const String unionValueUpdateContext =
      'z:1:StateMachine:Action.setContext';
  static const String unionValueSetState = 'z:1:StateMachine:Action.setState';

  factory StateMachineActions.fromJson(Map<String, dynamic> json) =>
      _$StateMachineActionsFromJson(json);

  @FreezedUnionValue(StateMachineActions.unionValue)
  factory StateMachineActions.send({
    required SharedValueFamily family,
    required ZacString event,
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
                  ? const EventPayload.none()
                  : EventPayload(obj.payload?.getValue(origin)),
              withBag: bag,
            );
      },
      updateContext: (obj) {
        final session = bag.getStateMachineSession();
        session.setContext(
          obj.transformer.transformWithBag(
              ZacTransformValue(session.context), origin, bag),
        );
      },
      setState: (obj) => bag.getStateMachineSession().nextState(obj.state),
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
  static const String eventInit = 'machine.init';
  static const String eventNext = 'machine.next';
  static const String bagSessionKey = 'machine.session';
  static const String bagPayloadKey = 'machine.eventPayload';
  static const String bagSendEventKey = 'machine.sendEvent';

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
      session._enter();
    });
  }

  static final provider = AutoDisposeStateNotifierProviderFamily<StateMachine,
      CurrentState, Object>((_, fam) {
    throw UnimplementedError('Cannot request StateMachine for family: $fam');
  });

  final List<StateNode> nodes;
  final AutoDisposeStateNotifierProviderRef<StateMachine, CurrentState> ref;
  late StateMachineSession session = StateMachineSession(this, state.state,
      state.context, StateMachine.eventInit, const EventPayload.none());
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
          throw StateMachineError('''
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
      throw StateMachineError('''
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
      EventPayload payload) {
    session.dispose();

    scheduler.schedule(() {
      final nextState = cb(state.state, state.context);

      final nextSession = StateMachineSession(
          this, nextState.state, nextState.context, event, payload);
      session = nextSession;
      nextSession._enter();
      if (!nextSession._isActive) return;
      state = nextState;
    });
  }

  void send(
    String event,
    EventPayload payload, {
    ContextBag? withBag,
  }) {
    session.send(event, payload, withBag: withBag);
  }

  void trySend(
    String event,
    EventPayload payload, {
    ContextBag? withBag,
  }) {
    session.trySend(event, payload, withBag: withBag);
  }
}

class StateMachineSession {
  StateMachineSession(
    this._machine,
    this.inState,
    this._context,
    this.createdByEvent,
    this.createdFromPayload,
  );

  final StateMachine _machine;
  final String inState;
  final String createdByEvent;
  final EventPayload createdFromPayload;
  MachineContext _context;
  MachineContext get context => _context;

  late final ZacOriginStateMachineAction _enterStateOrigin =
      _getOrigin(_enterStateBag.onClear);
  late final ContextBag _enterStateBag = _getBag();
  bool _isActive = true;

  ZacOriginStateMachineAction _getOrigin(
          void Function(void Function() cb) add) =>
      ZacOriginStateMachineAction(
        ref: _machine.ref,
        lifetime: ZacOriginLifetimeStateMachineAction(
          isActive: () => _isActive,
          onBecomeInactive: add,
        ),
      );

  ContextBag _getBag() {
    final bag = ContextBag();
    final pl = createdFromPayload;
    bag.addAll(<String, dynamic>{
      StateMachine.bagSessionKey: this,
      if (pl is _EventPayload) StateMachine.bagPayloadKey: pl.data,
      if (pl is _EventPayload) kBagPayload: pl.data,
    });
    return bag;
  }

  void _transition(
    String event,
    EventPayload payload, {
    ContextBag? withBag,
    required bool isTrySend,
  }) {
    assert(_isActive, '''
It is no longer possible to send event "$event" to the $StateMachine in state "$inState".
This state and so the $StateMachineSession is no longer active.''');
    if (!_isActive) return;

    final bag = withBag ?? _getBag();
    final origin = _getOrigin(bag.onClear);
    bag.addAll(<String, dynamic>{
      StateMachine.bagSendEventKey: event,
      if (payload is _EventPayload) StateMachine.bagPayloadKey: payload.data,
      if (payload is _EventPayload) kBagPayload: payload.data,
    });

    final curNode = _machine.findNodeByState(inState);

    /// transitions that just match the event
    final allCandidates =
        curNode.on.where((transition) => transition.event == event);

    if (isTrySend) return;

    if (allCandidates.isEmpty) {
      throw StateMachineError('''
An error occurred while sending an event to a $StateMachine.
There was no transition found for event "$event" in state "$inState".
Using payload: $payload''');
    }

    /// filter the candidates by their guard condition
    final candidatesAfterGuard = allCandidates.where((transition) {
      final isCandidate = transition.guard
              ?.transformWithBag(ZacTransformValue(context), origin, bag) ??
          true;

      if (isCandidate is! bool) {
        throw StateMachineError('''
It was not possible to guard a $StateMachine $Transition because the guard
$ZacTransformers did not return a bool. 
Instead the transformed value is: $isCandidate
''');
      }
      return isCandidate;
    });

    if (candidatesAfterGuard.isEmpty) return;

    final transition = candidatesAfterGuard.first;
    final targetNode = _machine.findNodeByState(transition.target);
    if (true == transition.actions?.actions.isNotEmpty) {
      final bag = withBag ?? _getBag();
      final origin = _getOrigin(bag.onClear);
      bag.addAll(<String, dynamic>{
        StateMachine.bagSendEventKey: event,
        if (payload is _EventPayload) StateMachine.bagPayloadKey: payload.data,
        if (payload is _EventPayload) kBagPayload: payload.data,
      });
      transition.actions?.executeWithBag(origin, bag);
      bag.clear();
    }

    /// An Action might have set another state
    if (!_isActive) return;

    _machine.next(
        (_, __) => CurrentState(state: targetNode.state, context: _context),
        event,
        payload);
  }

  void _enter() {
    final node = _machine.findNodeByState(inState);
    node.actions?.executeWithBag(_enterStateOrigin, _enterStateBag);
  }

  @mustCallSuper
  void dispose() {
    _enterStateBag.clear();
    _isActive = false;
  }

  void setContext(MachineContext context) {
    if (!_isActive) return;
    _context = context;
  }

  void nextState(String state) {
    if (!_isActive) return;
    _machine.next((_, __) => CurrentState(state: state, context: _context),
        StateMachine.eventNext, const EventPayload.none());
  }

  void trySend(
    String event,
    EventPayload payload, {
    ContextBag? withBag,
  }) {
    _transition(event, payload, withBag: withBag, isTrySend: true);
  }

  void send(
    String event,
    EventPayload payload, {
    ContextBag? withBag,
  }) {
    _transition(event, payload, withBag: withBag, isTrySend: false);
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

class StateMachineProvider extends StatelessWidget {
  const StateMachineProvider({
    required this.initialState,
    required this.initialContext,
    required this.states,
    required this.family,
    required this.builder,
    super.key,
  });

  final String initialState;
  final Object? initialContext;
  final List<StateNode> states;
  final String family;
  final Widget Function(ZacOriginWidgetTree origin) builder;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        StateMachine.provider(family).overrideWithProvider(
            AutoDisposeStateNotifierProvider<StateMachine, CurrentState>((ref) {
          return StateMachine(
            ref: ref,
            context: initialContext,
            state: initialState,
            nodes: states,
          );
        })),
        SharedValue.provider('$family.state')
            .overrideWithProvider(AutoDisposeStateProvider<SharedValueType>(
          (ref) {
            return ref.watch(StateMachine.provider(family)
                .select((curState) => curState.state));
          },
        )),
        SharedValue.provider('$family.context')
            .overrideWithProvider(AutoDisposeStateProvider<SharedValueType>(
          (ref) {
            return ref.watch(StateMachine.provider(family)
                .select((curState) => curState.context));
          },
        )),
      ],
      child: ZacUpdateOrigin(builder: builder),
    );
  }
}

@defaultConverterFreezed
class MapStateToWidgetBuilder
    with _$MapStateToWidgetBuilder
    implements FlutterWidget {
  const MapStateToWidgetBuilder._();
  static const String unionValue = 'z:1:StateMachine:MapStateToWidget';

  factory MapStateToWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$MapStateToWidgetBuilderFromJson(json);

  @FreezedUnionValue(MapStateToWidgetBuilder.unionValue)
  factory MapStateToWidgetBuilder({
    FlutterKey? key,
    required ZacString family,
    required Map<String, FlutterWidget> stateToWidget,
    FlutterWidget? unmappedStateWidget,
  }) = _MapStateToWidgetBuilder;

  @override
  MapStateToWidget buildWidget(ZacOriginWidgetTree origin) {
    return MapStateToWidget(
      key: key?.buildKey(origin),
      family: family.getValue(origin),
      stateToWidget: stateToWidget,
      unmappedStateWidget:
          unmappedStateWidget ?? const FlutterSizedBox.shrink(),
    );
  }
}

class MapStateToWidget extends HookConsumerWidget {
  const MapStateToWidget(
      {required this.family,
      required this.stateToWidget,
      required this.unmappedStateWidget,
      super.key});

  final String family;
  final Map<String, FlutterWidget> stateToWidget;
  final FlutterWidget unmappedStateWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final origin = useZacOrigin(ref);
    final state = SharedValue.get(
        const SharedValueConsumeType.watch(), origin, '$family.state');

    /// check if mapped states actually exist in the StateMachine
    assert(() {
      final machine = ref.read(StateMachine.provider(family).notifier);
      for (var searchForState in stateToWidget.keys) {
        var found = false;
        for (var node in machine.nodes) {
          found = node.state == searchForState;
          if (found) break;
        }
        if (!found) {
          throw StateMachineError('''
Trying to map state "$searchForState" to a $FlutterWidget in "${MapStateToWidgetBuilder.unionValue}"
failed because "$searchForState" does not exist in $StateMachine of family "$family".
''');
        }
      }
      return true;
    }(), '');

    if (stateToWidget.containsKey(state)) {
      return stateToWidget[state]!.buildWidget(origin);
    }
    return unmappedStateWidget.buildWidget(origin);
  }
}
