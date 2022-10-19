import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/state_machine.dart';
import 'package:zac/src/zac/zac_values.dart';

import '../helper.dart';

void main() {
  test('Get current config in StateMachine', () {
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('a'))),
        'b': ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('b')))
      },
      context: null,
      state: 'a',
      send: (event, context) {},
      trySend: (event, context) {},
    );

    expect(machine.config,
        ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('a'))));

    machine = machine.copyWith.call(state: 'b');
    expect(machine.config,
        ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('b'))));

    machine = machine.copyWith.call(state: 'c');
    expect(
        () => machine.config,
        throwsA(isA<StateError>().having((p0) => p0.message, 'message',
            contains('Invalid ZacStateMachine state'))));
  });

  test('Get current widget in StateMachine', () {
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('a'))),
      },
      context: null,
      state: 'a',
      send: (event, context) {},
      trySend: (event, context) {},
    );

    expect(machine.widget, FlutterSizedBox(key: FlutterValueKey('a')));
  });

  test('Find a config for a certain state in a StateMachine', () {
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('a'))),
        'b': ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('b')))
      },
      context: null,
      state: 'a',
      send: (event, context) {},
      trySend: (event, context) {},
    );

    expect(machine.findConfigByState('a'),
        ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('a'))));
    expect(machine.findConfigByState('b'),
        ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('b'))));
  });

  test('Find a transition candidate for event in a StateMachine', () {
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(
          widget: FlutterSizedBox(key: FlutterValueKey('a')),
          on: [
            ZacTransition(event: 'NEXT', target: 'b'),
            ZacTransition(event: 'NEXT', target: 'c')
          ],
        ),
        'b': ZacStateConfig(widget: FlutterSizedBox(key: FlutterValueKey('b')))
      },
      context: null,
      state: 'a',
      send: (event, context) {},
      trySend: (event, context) {},
    );

    expect(machine.findCandidate('NEXT'),
        ZacTransition(event: 'NEXT', target: 'b'));
    expect(machine.findCandidate('NOT FOUND'), isNull);
  });

  testWidgets('Provide the current state', (tester) async {
    Object? curMachine;
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialContext: ZacObject(1),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in a'),
            ),
          ),
        },
        child: LeakOrigin(
          cb: (origin) {
            curMachine = SharedValue.get(
                const SharedValueConsumeType.watch(), origin, 'machine');
          },
        ),
      ),
    );

    expect(
        curMachine,
        isA<ZacStateMachine>()
            .having((p0) => p0.state, 'state', 'a')
            .having(
                (p0) => p0.widget,
                'widget',
                FlutterSizedBox(
                  key: FlutterValueKey('in a'),
                ))
            .having((p0) => p0.context, 'context', 1));
  });

  testWidgets(
      'Transition to another state and update context through an event ',
      (tester) async {
    late ZacStateMachine curMachine;
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialContext: ZacObject(1),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in a'),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'b')],
          ),
          'b': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in a'),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'a')],
          ),
        },
        child: LeakOrigin(
          cb: (origin) {
            curMachine = SharedValue.get(
                    const SharedValueConsumeType.watch(), origin, 'machine')
                as ZacStateMachine;
          },
        ),
      ),
    );

    curMachine.send('NEXT', 'foo');
    await tester.pump();
    expect(
        curMachine,
        isA<ZacStateMachine>()
            .having((p0) => p0.state, 'state', 'b')
            .having((p0) => p0.context, 'context', 'foo'));

    curMachine.send('NEXT', 'bar');
    await tester.pump();
    expect(
        curMachine,
        isA<ZacStateMachine>()
            .having((p0) => p0.state, 'state', 'a')
            .having((p0) => p0.context, 'context', 'bar'));
  });

  testWidgets(
      'It is not possible to send another event after successful transition',
      (tester) async {
    late ZacStateMachine curMachine;
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: FlutterSizedBox(),
            on: [
              ZacTransition(event: 'NEXT', target: 'b'),
              ZacTransition(event: 'OTHER', target: 'c'),
            ],
          ),
          'b': ZacStateConfig(
            widget: FlutterSizedBox(),
          ),
          'c': ZacStateConfig(
            widget: FlutterSizedBox(),
          ),
        },
        child: LeakOrigin(
          cb: (origin) {
            curMachine = SharedValue.get(
                    const SharedValueConsumeType.watch(), origin, 'machine')
                as ZacStateMachine;
          },
        ),
      ),
    );

    curMachine.send('NEXT', null);
    expect(
        () => curMachine.send('OTHER', null),
        throwsA(isA<StateError>().having((p0) => p0.message, 'message',
            contains('No longer possible to send event "OTHER"'))));
    expect(() => curMachine.trySend('OTHER', null), returnsNormally);
  });

  testWidgets(
      'It is not possible to send another event after StateMachine dispose',
      (tester) async {
    late ZacStateMachine curMachine;
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: FlutterSizedBox(),
            on: [
              ZacTransition(event: 'NEXT', target: 'b'),
            ],
          ),
          'b': ZacStateConfig(
            widget: FlutterSizedBox(),
          ),
        },
        child: LeakOrigin(
          cb: (origin) {
            curMachine = SharedValue.get(
                    const SharedValueConsumeType.watch(), origin, 'machine')
                as ZacStateMachine;
          },
        ),
      ),
    );

    await testZacWidget(tester, FlutterSizedBox());

    expect(
        () => curMachine.send('NEXT', null),
        throwsA(isA<StateError>().having((p0) => p0.message, 'message',
            contains('No longer possible to send event "NEXT"'))));
    expect(() => curMachine.trySend('NEXT', null), returnsNormally);
  });

  testWidgets(
      'BuildState will build the StateConfig attached widget when in specified state',
      (tester) async {
    late ZacStateMachine machine;

    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in a'),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'b')],
          ),
          'b': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in b'),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'c')],
          ),
          'c': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in c'),
            ),
          ),
        },
        child: LeakOrigin(
          cb: (origin) {
            machine = SharedValue.get(
                    const SharedValueConsumeType.watch(), origin, 'machine')
                as ZacStateMachine;
          },
          child: ZacStateMachineBuildStateBuilder(
            family: ZacString('machine'),
            states: ['a', 'b'],
            unmappedStateWidget: FlutterSizedBox(
              key: FlutterValueKey('unmapped'),
            ),
          ),
        ),
      ),
    );

    expect(find.byKey(const ValueKey('in a')), findsOneWidget);

    machine.send('NEXT', null);
    await tester.pump();
    expect(find.byKey(const ValueKey('in b')), findsOneWidget);

    machine.send('NEXT', null);
    await tester.pump();
    expect(find.byKey(const ValueKey('unmapped')), findsOneWidget);
  });

  testWidgets(
      'BuildState will assert when a state does not exist in StateMachine',
      (tester) async {
    late FlutterErrorDetails details;
    FlutterError.onError = (d) {
      details = d;
    };

    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in a'),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'b')],
          ),
        },
        child: ZacStateMachineBuildStateBuilder(
          family: ZacString('machine'),
          states: ['b'],
        ),
      ),
    );

    expect(
        details.exception,
        isA<StateError>().having((p0) => p0.message, 'Error message',
            contains('It is not possible to build a widget for state "b"')));
  });
}
