import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/statemachine.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';

import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  // group('StateMachine', () {
  //   test('validate duplicated states', () {
  //     expect(
  //         () => StateMachine(state: 'foo', context: null, states: [
  //               StateNode('foo', []),
  //               StateNode('foo', []),
  //               StateNode('bar', []),
  //             ]).validateUniqueStates(),
  //         throwsA(isA<StateMachineValidationError>().having((p0) => p0.message,
  //             'error message', contains('Duplicated States found'))));
  //   });

  //   test('validate transition target', () {
  //     expect(
  //         () => StateMachine(
  //               'foo',
  //               [
  //                 StateNode('foo', [Transition('Next', 'baz')]),
  //                 StateNode('bar', []),
  //               ],
  //             ).validateTransitionTargets(),
  //         throwsA(isA<StateMachineValidationError>().having((p0) => p0.message,
  //             'error message', contains('Invalid Transition target'))));
  //   });

  //   test('findNodeByState', () {
  //     expect(
  //         StateMachine('foo', [
  //           StateNode('foo', []),
  //           StateNode('bar', []),
  //         ]).findNodeByState('foo'),
  //         StateNode('foo', []));

  //     expect(
  //         () => StateMachine('foo', [
  //               StateNode('foo', []),
  //               StateNode('bar', []),
  //             ]).findNodeByState('ohh'),
  //         throwsStateError);
  //   });
  // });

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
    testWidgets('to other state on event', (tester) async {
      late ZacOriginWidgetTree origin;
      await testZacWidget(
        tester,
        StateMachineProviderBuilder(
          family: ZacString('machine1'),
          initialState: ZacString('red'),
          states: [
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
          child: LeakOrigin(
            cb: (o) => origin = o,
          ),
        ),
      );

      expect(ZacString.consume('machine1.state').getValue(origin), 'red');
      expect(origin.ref.watch(SharedValue.provider('machine1.context')),
          SharedValue(null));

      origin.ref
          .read(statemachineProvider('machine1'))
          .send('NEXT', const SendPayload.none());

      expect(ZacString.consume('machine1.state').getValue(origin), 'green');

      origin.ref
          .read(statemachineProvider('machine1'))
          .send('NEXT', const SendPayload.none());

      expect(ZacString.consume('machine1.state').getValue(origin), 'yellow');

      origin.ref
          .read(statemachineProvider('machine1'))
          .send('NEXT', const SendPayload.none());

      expect(ZacString.consume('machine1.state').getValue(origin), 'red');
    });

    testWidgets('may update context', (tester) async {
      late ZacOriginWidgetTree origin;
      await testZacWidget(
        tester,
        StateMachineProviderBuilder(
          family: ZacString('machine1'),
          initialState: ZacString('counter'),
          initialContext: ZacObject(0),
          states: [
            StateNode(
              'counter',
              [
                Transition(
                  'NEXT',
                  'counter',
                  actions: ZacActions([
                    StateMachineActions.updateContext(
                        transformer: ZacTransformers([_Incr()]))
                  ]),
                )
              ],
            ),
          ],
          child: LeakOrigin(
            cb: (o) => origin = o,
          ),
        ),
      );

      expect(ZacString.consume('machine1.state').getValue(origin), 'counter');
      expect(ZacInt.consume('machine1.context').getValue(origin), 0);

      origin.ref
          .read(statemachineProvider('machine1'))
          .send('NEXT', const SendPayload.none());

      expect(ZacString.consume('machine1.state').getValue(origin), 'counter');
      expect(ZacInt.consume('machine1.context').getValue(origin), 1);

      origin.ref
          .read(statemachineProvider('machine1'))
          .send('NEXT', SendPayload(100));

      expect(ZacString.consume('machine1.state').getValue(origin), 'counter');
      expect(ZacInt.consume('machine1.context').getValue(origin), 101);
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
