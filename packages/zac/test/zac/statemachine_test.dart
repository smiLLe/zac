import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/statemachine.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';

import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('validate duplicated states in StateMachine', () {
    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              state: 'foo',
              context: null,
              nodes: [
                StateNode(state: 'foo', on: []),
                StateNode(state: 'foo', on: []),
                StateNode(state: 'bar', on: []),
              ],
              ref: ref,
            ),
          ),
        ),
      ],
    );
    expect(
        () => container
            .read(StateMachine.provider('machine').notifier)
            .validateUniqueStates(),
        throwsA(isA<StateMachineValidationError>().having((p0) => p0.message,
            'error message', contains('Duplicated States found'))));
  });

  test('validate transition target in StateMachine', () {
    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              state: 'foo',
              context: null,
              nodes: [
                StateNode(
                    state: 'foo',
                    on: [Transition(event: 'Next', target: 'baz')]),
                StateNode(state: 'bar', on: []),
              ],
              ref: ref,
            ),
          ),
        ),
      ],
    );
    expect(
        () => container
            .read(StateMachine.provider('machine').notifier)
            .validateTransitionTargets(),
        throwsA(isA<StateMachineValidationError>().having((p0) => p0.message,
            'error message', contains('Invalid Transition target'))));
  });

  test('StateMachine.findNodeByState()', () {
    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              state: 'foo',
              context: null,
              nodes: [
                StateNode(state: 'foo', on: []),
                StateNode(state: 'bar', on: []),
              ],
              ref: ref,
            ),
          ),
        ),
      ],
    );

    expect(
        container
            .read(StateMachine.provider('machine').notifier)
            .findNodeByState('foo'),
        StateNode(state: 'foo', on: []));

    expect(
        () => container
            .read(StateMachine.provider('machine').notifier)
            .findNodeByState('ohh'),
        throwsStateError);
  });

  test('.findCandidates() in a List of Transition', () {
    expect([Transition(event: 'Event1', target: 'foo')].findCandidates('Other'),
        isEmpty);
    expect(
        [
          Transition(event: 'Event1', target: 'foo'),
          Transition(event: 'Event1', target: 'bar'),
          Transition(event: 'Event2', target: 'bar')
        ].findCandidates('Event1'),
        [
          Transition(event: 'Event1', target: 'foo'),
          Transition(event: 'Event1', target: 'bar')
        ]);
  });

  test('Transition to other state by sending event to the StateMachine',
      () async {
    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: null,
              state: 'red',
              nodes: [
                StateNode(
                  state: 'green',
                  on: [Transition(event: 'NEXT', target: 'yellow')],
                ),
                StateNode(
                  state: 'yellow',
                  on: [Transition(event: 'NEXT', target: 'red')],
                ),
                StateNode(
                  state: 'red',
                  on: [Transition(event: 'NEXT', target: 'green')],
                ),
              ],
            ),
          ),
        )
      ],
    );

    final sub = container.listen(
      StateMachine.provider('machine'),
      (previous, next) {},
    );

    expect(sub.read().state, 'red');
    expect(sub.read().context, isNull);

    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', const SendPayload.none());

    expect(sub.read().state, 'green');
    expect(sub.read().context, isNull);

    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', const SendPayload.none());

    expect(sub.read().state, 'yellow');
    expect(sub.read().context, isNull);

    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', const SendPayload.none());

    expect(sub.read().state, 'red');
    expect(sub.read().context, isNull);

    sub.close();
  });

  group('Lifetime of an Action', () {
    test('in a Transition is only active during the transiton', () async {
      bool? isActive;
      final c = Completer<void>();
      final cb = _MockOnBecomeInactiveCb();
      final container = ProviderContainer(
        overrides: [
          StateMachine.provider('machine').overrideWithProvider(
            StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
              (ref) => StateMachine(
                ref: ref,
                context: null,
                state: 'a',
                nodes: [
                  StateNode(
                    state: 'a',
                    on: [
                      Transition(
                        event: 'NEXT',
                        target: 'b',
                        actions: ZacActions([
                          LeakAction((origin, bag) async {
                            isActive =
                                origin.mapOrNull(statemachineAction: (origin) {
                              origin.lifetime.onBecomeInactive(cb);
                              return origin.lifetime.isActive();
                            });
                            await Future.microtask(() {});
                            isActive = origin.mapOrNull(
                                statemachineAction: (origin) =>
                                    origin.lifetime.isActive());
                            c.complete();
                          }),
                        ]),
                      )
                    ],
                  ),
                  StateNode(state: 'b'),
                ],
              ),
            ),
          )
        ],
      );

      final sub = container.listen(
        StateMachine.provider('machine'),
        (previous, next) {},
      );

      verifyZeroInteractions(cb);
      container
          .read(StateMachine.provider('machine').notifier)
          .send('NEXT', const SendPayload.none());

      expect(isActive, isTrue);

      verify(cb()).called(1);
      await c.future;
      expect(isActive, isFalse);
      verifyNoMoreInteractions(cb);

      sub.close();
    });

    test(
        'that is executed while entering a state will remain active until state is left',
        () async {
      late ZacOriginLifetimeStateMachineAction lifetime;

      final container = ProviderContainer(
        overrides: [
          StateMachine.provider('machine').overrideWithProvider(
            StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
              (ref) => StateMachine(
                ref: ref,
                context: null,
                state: 'a',
                nodes: [
                  StateNode(
                    state: 'a',
                    on: [Transition(event: 'NEXT', target: 'b')],
                    actions: ZacActions(
                      [
                        LeakAction((origin, __) => lifetime =
                            (origin as ZacOriginStateMachineAction).lifetime),
                      ],
                    ),
                  ),
                  StateNode(state: 'b'),
                ],
              ),
            ),
          )
        ],
      );

      final sub = container.listen(
        StateMachine.provider('machine'),
        (previous, next) {},
      );

      expect(lifetime.isActive(), isTrue);
      await Future<void>.delayed(const Duration(milliseconds: 100));
      expect(lifetime.isActive(), isTrue);

      container
          .read(StateMachine.provider('machine').notifier)
          .send('NEXT', const SendPayload.none());

      expect(lifetime.isActive(), isFalse);

      sub.close();
      container.dispose();
    });

    test('will still become inactive when entering the same state again',
        () async {
      ZacOriginLifetimeStateMachineAction? lifetime;

      final container = ProviderContainer(
        overrides: [
          StateMachine.provider('machine').overrideWithProvider(
            StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
              (ref) => StateMachine(
                ref: ref,
                context: null,
                state: 'a',
                nodes: [
                  StateNode(
                    state: 'a',
                    on: [Transition(event: 'NEXT', target: 'a')],
                    actions: ZacActions(
                      [
                        LeakAction((origin, __) {
                          if (null != lifetime) return;
                          lifetime =
                              (origin as ZacOriginStateMachineAction).lifetime;
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );

      final sub = container.listen(
        StateMachine.provider('machine'),
        (previous, next) {},
      );

      expect(lifetime!.isActive(), isTrue);
      await Future<void>.delayed(const Duration(milliseconds: 100));
      expect(lifetime!.isActive(), isTrue);

      container
          .read(StateMachine.provider('machine').notifier)
          .send('NEXT', const SendPayload.none());

      expect(lifetime!.isActive(), isFalse);

      sub.close();
      container.dispose();
    });
  });

  test('An Action may update context', () async {
    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: 0,
              state: 'counter',
              nodes: [
                StateNode(
                  state: 'counter',
                  on: [
                    Transition(
                      event: 'NEXT',
                      target: 'counter',
                      actions: ZacActions([
                        StateMachineActions.updateContext(
                            transformer: ZacTransformers([_Incr()]))
                      ]),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );

    final sub = container.listen(
      StateMachine.provider('machine'),
      (previous, next) {},
    );

    expect(sub.read().state, 'counter');
    expect(sub.read().context, 0);

    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', const SendPayload.none());

    expect(sub.read().state, 'counter');
    expect(sub.read().context, 1);

    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', SendPayload(100));

    expect(sub.read().state, 'counter');
    expect(sub.read().context, 101);
  });

  test('A Transition Action may force a different state', () async {
    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: 0,
              state: 'a',
              nodes: [
                StateNode(
                  state: 'a',
                  on: [
                    Transition(
                      event: 'NEXT',
                      target: 'b',
                      actions: ZacActions([StateMachineActions.setState('c')]),
                    )
                  ],
                ),
                StateNode(state: 'b'),
                StateNode(state: 'c')
              ],
            ),
          ),
        )
      ],
    );

    final List<String> states = [];
    final sub = container.listen<CurrentState>(
      StateMachine.provider('machine'),
      (previous, next) {
        states.add(next.state);
      },
    );

    expect(sub.read().state, 'a');

    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', const SendPayload.none());

    expect(sub.read().state, 'c');
    expect(states, isNot(contains('b')));
  });

  test('Actions will execute in correct order in state ', () async {
    final enter1 = MockLeakedActionCb();
    final enter2 = MockLeakedActionCb();
    final exit1 = _LeaveStateCb();
    final exit2 = _LeaveStateCb();

    when(enter1(any, any)).thenAnswer((realInvocation) {
      final origin =
          realInvocation.positionalArguments[0] as ZacOriginStateMachineAction;
      origin.lifetime.onBecomeInactive(exit1);
    });
    when(enter2(any, any)).thenAnswer((realInvocation) {
      final origin =
          realInvocation.positionalArguments[0] as ZacOriginStateMachineAction;
      origin.lifetime.onBecomeInactive(exit2);
    });

    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: null,
              state: 'a',
              nodes: [
                StateNode(
                  state: 'a',
                  actions: ZacActions([
                    LeakAction(enter1),
                    LeakAction(enter2),
                  ]),
                  on: [Transition(event: 'NEXT', target: 'b')],
                ),
                StateNode(
                  state: 'b',
                  on: [Transition(event: 'NEXT', target: 'a')],
                ),
              ],
            ),
          ),
        )
      ],
    );

    final sub = container.listen(
      StateMachine.provider('machine'),
      (previous, next) {},
    );

    //to b
    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', const SendPayload.none());
    // to a
    container
        .read(StateMachine.provider('machine').notifier)
        .send('NEXT', const SendPayload.none());

    verifyInOrder([
      enter1(argThat(isA<ZacOriginStateMachineAction>()),
          argThat(isA<ContextBag>())),
      enter2(argThat(isA<ZacOriginStateMachineAction>()),
          argThat(isA<ContextBag>())),
      exit1(),
      exit2(),
      enter1(argThat(isA<ZacOriginStateMachineAction>()),
          argThat(isA<ContextBag>())),
      enter2(argThat(isA<ZacOriginStateMachineAction>()),
          argThat(isA<ContextBag>())),
    ]);

    sub.close();

    verifyNoMoreInteractions(enter1);
    verifyNoMoreInteractions(enter2);
    verifyNoMoreInteractions(exit1);
    verifyNoMoreInteractions(exit2);
  });

  test('Disposal of a StateMachine will execute exit actions', () async {
    final exit = _LeaveStateCb();

    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: null,
              state: 'a',
              nodes: [
                StateNode(
                  state: 'a',
                  actions: ZacActions([
                    LeakAction((origin, __) =>
                        (origin as ZacOriginStateMachineAction)
                            .lifetime
                            .onBecomeInactive(exit)),
                  ]),
                ),
              ],
            ),
          ),
        )
      ],
    );

    final sub = container.listen(
      StateMachine.provider('machine'),
      (previous, next) {},
    );

    verifyZeroInteractions(exit);
    sub.close();
    container.dispose();
    verify(exit()).called(1);
  });

  test(
      'Actions while entering a new state may transition to a new state immediately',
      () async {
    final enterNeverCalled = LeakedActionCb();

    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: null,
              state: 'a',
              nodes: [
                StateNode(
                  state: 'a',
                  actions: ZacActions(
                    [
                      LeakAction((origin, bag) {
                        final setState = bag.safeGet<StateMachineBagSetState>(
                          key: kBagStateMachineSetState,
                          notFound: null,
                        );
                        setState('b');
                      }),
                      LeakAction(enterNeverCalled),
                    ],
                  ),
                ),
                StateNode(state: 'b'),
              ],
            ),
          ),
        )
      ],
    );

    final sub = container.listen(
      StateMachine.provider('machine'),
      (previous, next) {},
    );

    expect(sub.read().state, 'b');
    verifyZeroInteractions(enterNeverCalled);
  });

  test('Actions executed in a state may transition to a state async', () async {
    final completer = Completer<void>();

    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: null,
              state: 'a',
              nodes: [
                StateNode(
                  state: 'a',
                  actions: ZacActions(
                    [
                      LeakAction((origin, bag) async {
                        final setState = bag.safeGet<StateMachineBagSetState>(
                          key: kBagStateMachineSetState,
                          notFound: null,
                        );
                        await Future.microtask(() {});
                        setState('b');
                        completer.complete();
                      }),
                    ],
                  ),
                ),
                StateNode(state: 'b'),
              ],
            ),
          ),
        )
      ],
    );

    final sub = container.listen(
      StateMachine.provider('machine'),
      (previous, next) {},
    );
    await completer.future;
    expect(sub.read().state, 'b');
  });

  group('Access Bag content', () {
    test('in transition action', () {
      var map = <String, dynamic>{};
      final container = ProviderContainer(
        overrides: [
          StateMachine.provider('machine').overrideWithProvider(
            StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
              (ref) => StateMachine(
                ref: ref,
                context: null,
                state: 'a',
                nodes: [
                  StateNode(
                    state: 'a',
                    on: [
                      Transition(
                        event: 'NEXT',
                        target: 'b',
                        actions: ZacActions(
                          [
                            LeakAction((origin, bag) async {
                              map = <String, dynamic>{...bag};
                            }),
                          ],
                        ),
                      )
                    ],
                  ),
                  StateNode(state: 'b', on: [
                    Transition(
                      event: 'BACK',
                      target: 'a',
                      actions: ZacActions(
                        [
                          LeakAction((origin, bag) async {
                            map = <String, dynamic>{...bag};
                          }),
                        ],
                      ),
                    )
                  ]),
                ],
              ),
            ),
          )
        ],
      );

      final sub = container.listen(
        StateMachine.provider('machine'),
        (previous, next) {},
      );

      container
          .read(StateMachine.provider('machine').notifier)
          .send('NEXT', const SendPayload.none());

      expect(
          map['StateMachine.currentContext'], isA<StateMachineBagGetContext>());
      expect(map['StateMachine.currentState'], isA<StateMachineBagGetState>());
      expect(
          map['StateMachine.updateContext'], isA<StateMachineBagSetContext>());
      expect(map['StateMachine.setState'], isA<StateMachineBagSetState>());
      expect(map['StateMachine.sendEvent'], 'NEXT');
      expect(map.containsKey('payload'), isFalse);
      expect(map.containsKey('StateMachine.sendPayload'), isFalse);

      /// back to 'a'
      container
          .read(StateMachine.provider('machine').notifier)
          .send('BACK', SendPayload('payload stuff'));

      expect(map['StateMachine.sendEvent'], 'BACK');
      expect(map['payload'], 'payload stuff');
      expect(map['StateMachine.sendPayload'], 'payload stuff');

      sub.close();
    });

    test('in state action', () {
      var map = <String, dynamic>{};
      final container = ProviderContainer(
        overrides: [
          StateMachine.provider('machine').overrideWithProvider(
            StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
              (ref) => StateMachine(
                ref: ref,
                context: null,
                state: 'a',
                nodes: [
                  StateNode(
                    state: 'a',
                    actions: ZacActions(
                      [
                        LeakAction((origin, bag) async {
                          map = <String, dynamic>{...bag};
                        }),
                        StateMachineActions.setState('b'),
                      ],
                    ),
                  ),
                  StateNode(
                    state: 'b',
                    on: [Transition(event: 'BACK', target: 'a')],
                  ),
                ],
              ),
            ),
          )
        ],
      );

      final sub = container.listen(
        StateMachine.provider('machine'),
        (previous, next) {},
      );

      container
          .read(StateMachine.provider('machine').notifier)
          .send('NEXT', const SendPayload.none());

      expect(
          map['StateMachine.currentContext'], isA<StateMachineBagGetContext>());
      expect(map['StateMachine.currentState'], isA<StateMachineBagGetState>());
      expect(
          map['StateMachine.updateContext'], isA<StateMachineBagSetContext>());
      expect(map['StateMachine.setState'], isA<StateMachineBagSetState>());
      expect(map['StateMachine.sendEvent'], 'machine.init');
      expect(map.containsKey('payload'), isFalse);
      expect(map.containsKey('StateMachine.sendPayload'), isFalse);

      /// back to 'a'
      container
          .read(StateMachine.provider('machine').notifier)
          .send('BACK', SendPayload('payload stuff'));

      expect(map['StateMachine.sendEvent'], 'BACK');
      expect(map['payload'], 'payload stuff');
      expect(map['StateMachine.sendPayload'], 'payload stuff');

      sub.close();
    });
  });
}

class _Incr implements ZacTransformer {
  _Incr();

  @override
  Object? transform(
      ZacTransformValue transformValue, ZacOrigin origin, ContextBag bag) {
    if (bag.containsKey(kBagPayload)) {
      final payload = bag.safeGet<int>(key: kBagPayload, notFound: null);
      return (transformValue.value as int) + payload;
    }

    return (transformValue.value as int) + 1;
  }
}

class _MockOnBecomeInactiveCb extends Mock {
  void call();
}

class _LeaveStateCb extends Mock {
  void call();
}
