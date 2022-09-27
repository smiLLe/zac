import 'package:flutter/cupertino.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/statemachine.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';

import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  group('StateMachine', () {
    test('validate duplicated states', () {
      expect(
          () => StateMachine('foo', [
                StateNode('foo', []),
                StateNode('foo', []),
                StateNode('bar', []),
              ]).validateUniqueStates(),
          throwsA(isA<StateMachineValidationError>().having((p0) => p0.message,
              'error message', contains('Duplicated States found'))));
    });

    test('validate transition target', () {
      expect(
          () => StateMachine(
                'foo',
                [
                  StateNode('foo', [Transition('Next', 'baz')]),
                  StateNode('bar', []),
                ],
              ).validateTransitionTargets(),
          throwsA(isA<StateMachineValidationError>().having((p0) => p0.message,
              'error message', contains('Invalid Transition target'))));
    });

    test('findNodeByState', () {
      expect(
          StateMachine('foo', [
            StateNode('foo', []),
            StateNode('bar', []),
          ]).findNodeByState('foo'),
          StateNode('foo', []));

      expect(
          () => StateMachine('foo', [
                StateNode('foo', []),
                StateNode('bar', []),
              ]).findNodeByState('ohh'),
          throwsStateError);
    });
  });

  group('Transitions', () {
    test('findCandidates', () {
      expect([Transition('Event1', 'foo')].findCandidates('Other'), isEmpty);
      expect(
          [
            Transition('Event1', 'foo'),
            Transition('Event1', 'bar'),
            Transition('Event2', 'bar')
          ].findCandidates('Event1'),
          [Transition('Event1', 'foo'), Transition('Event1', 'bar')]);
    });
  });

  group('transition', () {
    test('on event', () {
      final container = ProviderContainer(
        overrides: [
          statemachineProvider('family1').overrideWithProvider(
            createStateMachineProvider(
              machine: StateMachine(
                'red',
                [
                  StateNode(
                    'green',
                    [Transition('NEXT', 'yellow')],
                  ),
                  StateNode(
                    'yellow',
                    [Transition('NEXT', 'red')],
                  ),
                  StateNode(
                    'red',
                    [Transition('NEXT', 'green')],
                  ),
                ],
              ),
              zacContext: FakeZacWidgetContext(),
            ),
          ),
        ],
      );

      final sub = container.listen(
          statemachineProvider('family1'), (previous, next) {});
      expect(sub.read().state, 'red');

      sub.read().send('NEXT', const SendPayload.none());
      expect(sub.read().state, 'green');

      sub.read().send('NEXT', const SendPayload.none());
      expect(sub.read().state, 'yellow');

      sub.read().send('NEXT', const SendPayload.none());
      expect(sub.read().state, 'red');

      sub.close();
    });

    testWidgets('update context', (tester) async {
      late ZacBuildContext context;
      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: StateMachine(
            'counter',
            [
              StateNode(
                'counter',
                [
                  Transition(
                    'NEXT',
                    'counter',
                    actions: ZacActions([
                      StateMachineActions.updateContext(transformer: [_Incr()])
                    ]),
                  )
                ],
              ),
            ],
            initialContext: 0,
          ),
          family: 'machine1',
          child: LeakContext(
            cb: (c) => context = c,
          ),
        ),
      );

      // final container = ProviderContainer(
      //   overrides: [
      //     statemachineProvider('family1').overrideWithProvider(
      //       createStateMachineProvider(
      //         machine: StateMachine(
      //           'counter',
      //           [
      //             StateNode(
      //               'counter',
      //               [
      //                 Transition(
      //                   'NEXT',
      //                   'counter',
      //                   actions: ZacActions([
      //                     StateMachineActions.updateContext(
      //                         transformer: [_Incr()])
      //                   ]),
      //                 )
      //               ],
      //             ),
      //           ],
      //           initialContext: 0,
      //         ),
      //         zacContext: FakeZacWidgetContext(),
      //       ),
      //     ),
      //   ],
      // );

      // final machine = SharedValue.getFilled(
      //     const SharedValueConsumeType.watch(), context, 'machine1');

      expect(context.ref.watch(statemachineProvider('family1')).context, 0);

      // final sub = container.listen(
      //     statemachineProvider('family1'), (previous, next) {});
      // expect(sub.read().context, 0);

      // sub.read().send('NEXT', const SendPayload.none());
      // expect(sub.read().context, 1);

      // sub.read().send('NEXT', SendPayload(100));
      // expect(sub.read().context, 101);
    });
  });
}

class _Incr implements ZacTransformer {
  _Incr();

  @override
  Object? transform(ZacTransformValue transformValue, ZacBuildContext context,
      ContextBag bag) {
    if (bag.containsKey(kBagPayload)) {
      final payload = bag.saveGet<int>(key: kBagPayload, notFound: null);
      return (transformValue.value as int) + payload;
    }

    return (transformValue.value as int) + 1;
  }
}
