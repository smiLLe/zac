import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/state_machine.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

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
      isActive: () => true,
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

  testWidgets('Get current widget in StateMachine', (tester) async {
    await testWithContexts(
      tester,
      (getContext, getZacContext) {
        var machine = ZacStateMachine(
          states: {
            'a': ZacStateConfig(
                widget: FlutterSizedBox(key: FlutterValueKey('a'))),
          },
          context: null,
          state: 'a',
          send: (event, context) {},
          trySend: (event, context) {},
          isActive: () => true,
        );

        expect(machine.getWidget(getContext(), getZacContext()),
            FlutterSizedBox(key: FlutterValueKey('a')));
      },
    );
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
      isActive: () => true,
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
      isActive: () => true,
    );

    expect(machine.findCandidate('NEXT'),
        ZacTransition(event: 'NEXT', target: 'b'));
    expect(machine.findCandidate('NOT FOUND'), isNull);
  });

  testWidgets('Provide the current machine', (tester) async {
    await testWithContextsWraped(
      tester,
      (child) => ZacStateMachineProviderBuilder(
          family: ZacBuilder<String>.fromJson('machine'),
          initialContext: ZacBuilder<Object>.fromJson(1),
          initialState: ZacBuilder<String>.fromJson('a'),
          states: <String, ZacStateConfig>{
            'a': ZacStateConfig(
              widget: FlutterSizedBox(
                key: FlutterValueKey('in a'),
              ),
            ),
          },
          child: child),
      (getContext, getZacContext) {
        expect(
            SharedValue.get(
              context: getContext(),
              zacContext: getZacContext(),
              consumeType: const SharedValueConsumeType.watch(),
              family: 'machine',
            ),
            isA<ZacStateMachine>()
                .having((p0) => p0.state, 'state', 'a')
                .having(
                    (p0) => p0.getWidget(getContext(), getZacContext()),
                    'widget',
                    FlutterSizedBox(
                      key: FlutterValueKey('in a'),
                    ))
                .having((p0) => p0.context, 'context', 1));
      },
    );
  });

  testWidgets(
      'Transition to another state and update context through an event ',
      (tester) async {
    await testWithContextsWraped(
      tester,
      (child) => ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialContext: ZacBuilder<Object>.fromJson(1),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
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
        child: child,
      ),
      (getContext, getZacContext) async {
        var curMachine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.read(),
          family: 'machine',
        ) as ZacStateMachine;
        curMachine.send('NEXT', 'foo');
        await tester.pump();
        curMachine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.read(),
          family: 'machine',
        ) as ZacStateMachine;

        expect(
            curMachine,
            isA<ZacStateMachine>()
                .having((p0) => p0.state, 'state', 'b')
                .having((p0) => p0.context, 'context', 'foo'));

        curMachine.send('NEXT', 'bar');
        await tester.pump();
        curMachine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.read(),
          family: 'machine',
        ) as ZacStateMachine;

        expect(
            curMachine,
            isA<ZacStateMachine>()
                .having((p0) => p0.state, 'state', 'a')
                .having((p0) => p0.context, 'context', 'bar'));
      },
    );
  });

  testWidgets(
      'It is not possible to send another event after successful transition',
      (tester) async {
    await testWithContextsWraped(
      tester,
      (child) => ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
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
        child: child,
      ),
      (getContext, getZacContext) {
        final curMachine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.watch(),
          family: 'machine',
        ) as ZacStateMachine;

        curMachine.send('NEXT', null);

        expect(
            () => curMachine.send('OTHER', null),
            throwsA(isA<StateError>().having((p0) => p0.message, 'message',
                contains('No longer possible to send event "OTHER"'))));
        expect(() => curMachine.trySend('OTHER', null), returnsNormally);
      },
    );
  });

  testWidgets(
      'It is not possible to send another event after StateMachine dispose',
      (tester) async {
    await testWithContextsWraped(
      tester,
      (child) => ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
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
        child: child,
      ),
      (getContext, getZacContext) async {
        final curMachine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.read(),
          family: 'machine',
        ) as ZacStateMachine;

        await tester.pumpWidget(const SizedBox());

        expect(
            () => curMachine.send('NEXT', null),
            throwsA(isA<StateError>().having((p0) => p0.message, 'message',
                contains('No longer possible to send event "NEXT"'))));
        expect(() => curMachine.trySend('NEXT', null), returnsNormally);
      },
    );
  });

  testWidgets('Check StateMachine for being active', (tester) async {
    await testWithContextsWraped(
      tester,
      (child) => ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
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
        child: child,
      ),
      (getContext, getZacContext) async {
        final m1 = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.watch(),
          family: 'machine',
        ) as ZacStateMachine;
        expect(m1.isActive(), isTrue);
        m1.send('NEXT', null);
        await tester.pump();
        final m2 = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.watch(),
          family: 'machine',
        ) as ZacStateMachine;
        expect(m1.isActive(), isFalse);
        expect(m2.isActive(), isTrue);

        /// dispose
        await tester.pumpWidget(const SizedBox());
        expect(m2.isActive(), isFalse);
      },
    );
  });

  testWidgets(
      'BuildState will build the StateConfig attached widget when in specified state',
      (tester) async {
    await testWithContextsWraped(
      tester,
      (child) => ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
          'a': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in a'),
              child: child,
            ),
            on: [ZacTransition(event: 'NEXT', target: 'b')],
          ),
          'b': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in b'),
              child: child,
            ),
            on: [ZacTransition(event: 'NEXT', target: 'c')],
          ),
          'c': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in c'),
              child: child,
            ),
          ),
        },
        child: ZacStateMachineBuildStateBuilder(
          family: ZacBuilder<String>.fromJson('machine'),
          states: ['a', 'b'],
          unmappedStateWidget: FlutterSizedBox(
            key: FlutterValueKey('unmapped'),
            child: child,
          ),
        ),
      ),
      (getContext, getZacContext) async {
        var machine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.watch(),
          family: 'machine',
        ) as ZacStateMachine;

        expect(find.byKey(const ValueKey('in a')), findsOneWidget);

        machine.send('NEXT', null);

        await tester.pump();
        machine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.watch(),
          family: 'machine',
        ) as ZacStateMachine;
        expect(find.byKey(const ValueKey('in b')), findsOneWidget);

        machine.send('NEXT', null);

        await tester.pump();
        machine = SharedValue.get(
          context: getContext(),
          zacContext: getZacContext(),
          consumeType: const SharedValueConsumeType.watch(),
          family: 'machine',
        ) as ZacStateMachine;
        expect(find.byKey(const ValueKey('unmapped')), findsOneWidget);
      },
    );
  });

  testWidgets(
      'BuildState will assert when a state does not exist in StateMachine',
      (tester) async {
    late FlutterErrorDetails details;
    FlutterError.onError = (d) {
      details = d;
    };

    await testWidgetBuilder(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
          'a': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in a'),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'b')],
          ),
        },
        child: ZacStateMachineBuildStateBuilder(
          family: ZacBuilder<String>.fromJson('machine'),
          states: ['b'],
        ),
      ),
    );

    expect(
        details.exception,
        isA<StateError>().having((p0) => p0.message, 'Error message',
            contains('It is not possible to build a widget for state "b"')));
  });

  testWidgets('Send an event through an Action', (tester) async {
    await testWidgetBuilder(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
          'a': ZacStateConfig(
            widget: ZacExecuteActionsBuilder.once(
              actions: ZacListOfActions([
                ZacStateMachineActions.send(
                  family: 'machine',
                  event: ZacBuilder<String>.fromJson('NEXT'),
                )
              ]),
              child: FlutterSizedBox(),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'b')],
          ),
          'b': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in b'),
            ),
          ),
        },
        child: ZacStateMachineBuildStateBuilder(
          family: ZacBuilder<String>.fromJson('machine'),
          states: ['a', 'b'],
        ),
      ),
    );

    await tester.pump();

    expect(find.byKey(const ValueKey('in b')), findsOneWidget);
  });

  testWidgets('Trying to send an event through an Action', (tester) async {
    await testWidgetBuilder(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacBuilder<String>.fromJson('machine'),
        initialState: ZacBuilder<String>.fromJson('a'),
        states: <String, ZacStateConfig>{
          'a': ZacStateConfig(
            widget: ZacExecuteActionsBuilder.once(
              actions: ZacListOfActions([
                ZacStateMachineActions.trySend(
                  family: 'machine',
                  event: ZacBuilder<String>.fromJson('NEXT'),
                )
              ]),
              child: FlutterSizedBox(),
            ),
            on: [ZacTransition(event: 'NEXT', target: 'b')],
          ),
          'b': ZacStateConfig(
            widget: FlutterSizedBox(
              key: FlutterValueKey('in b'),
            ),
          ),
        },
        child: ZacStateMachineBuildStateBuilder(
          family: ZacBuilder<String>.fromJson('machine'),
          states: ['a', 'b'],
        ),
      ),
    );

    await tester.pump();

    expect(find.byKey(const ValueKey('in b')), findsOneWidget);
  });

  testWidgets('Let a transformer pick and return the state of a StateMachine ',
      (tester) async {
    await testWithContexts(
      tester,
      (getContext, getZacContext) {
        expect(
            ZacStateMachineTransformer.pickState()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(ZacStateMachine(
                      states: {
                        'a': ZacStateConfig(
                            widget: FlutterSizedBox(key: FlutterValueKey('a'))),
                      },
                      context: null,
                      state: 'a',
                      send: (event, context) {},
                      trySend: (event, context) {},
                      isActive: () => true,
                    )),
                    getContext(),
                    getZacContext(),
                    null),
            'a');

        expect(
            () => ZacStateMachineTransformer.pickState()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue('FAIL'), getContext(),
                    getZacContext(), null),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'Error',
                contains(
                    'The ZacStateMachineTransformer expected a transformer value of ZacStateMachine'))));
      },
    );
  });

  testWidgets(
      'Let a transformer pick and return the context of a StateMachine ',
      (tester) async {
    await testWithContexts(
      tester,
      (getContext, getZacContext) {
        expect(
            ZacStateMachineTransformer.pickContext()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(ZacStateMachine(
                      states: {
                        'a': ZacStateConfig(
                            widget: FlutterSizedBox(key: FlutterValueKey('a'))),
                      },
                      context: 'hello',
                      state: 'a',
                      send: (event, context) {},
                      trySend: (event, context) {},
                      isActive: () => true,
                    )),
                    getContext(),
                    getZacContext(),
                    null),
            'hello');

        expect(
            () => ZacStateMachineTransformer.pickContext()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue('FAIL'), getContext(),
                    getZacContext(), null),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'Error',
                contains(
                    'The ZacStateMachineTransformer expected a transformer value of ZacStateMachine'))));
      },
    );
  });
}
