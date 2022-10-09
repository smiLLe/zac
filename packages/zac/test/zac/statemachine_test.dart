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
  group('StateMachine', () {
    test('validate duplicated states', () {
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

    test('validate transition target', () {
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

    test('findNodeByState', () {
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
  });

  group('Transition', () {
    test('findCandidates', () {
      expect(
          [Transition(event: 'Event1', target: 'foo')].findCandidates('Other'),
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

    test('to other state on event', () async {
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

    group('can execute actions', () {
      test('and provices some state liftetime features', () async {
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
                              isActive = origin.mapOrNull(
                                  statemachineAction: (origin) {
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
      test('and may update context', () async {
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

      test('and may force a different state', () async {
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
                          actions: ZacActions(
                              [StateMachineActions.setState('other')]),
                        )
                      ],
                    ),
                    StateNode(state: 'other')
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

        container
            .read(StateMachine.provider('machine').notifier)
            .send('NEXT', const SendPayload.none());

        expect(sub.read().state, 'other');
      });
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
