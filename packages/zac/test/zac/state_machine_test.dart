import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/state_machine.dart';
import 'package:zac/src/zac/zac_values.dart';

import '../helper.dart';

void main() {
  group('convert', () {
    test('Transition', () {
      expect(
          () => ConverterHelper.convertToType<ZacTransition>(<String, dynamic>{
                'converter': 'z:1:StateMachine:Transition',
                'event': 'NEXT',
                'target': 'foo',
              }),
          returnsNormally);
    });

    test('StateConfig', () {
      expect(
          () => ConverterHelper.convertToType<ZacStateConfig>(<String, dynamic>{
                'converter': 'z:1:StateMachine:StateConfig',
                'widget': {'converter': 'f:1:SizedBox'},
              }),
          returnsNormally);
    });

    test('ZacStateMachineProvider', () {
      expect(
          () => ConverterHelper.convertToType<
                  ZacStateMachineProviderBuilder>(<String, dynamic>{
                'converter': 'z:1:StateMachine.provide',
                'family': 'machine',
                'initialState': 'foo',
                'states': <String, dynamic>{},
                'child': {'converter': 'f:1:SizedBox'},
              }),
          returnsNormally);
    });

    test('ZacStateMachineBuildState', () {
      expect(
          () => ConverterHelper.convertToType<
                  ZacStateMachineBuildStateBuilder>(<String, dynamic>{
                'converter': 'z:1:StateMachine:BuildState',
                'family': 'machine',
                'states': <String>[],
              }),
          returnsNormally);
    });

    test('ZacStateMachineActions.send', () {
      expect(
          () => ConverterHelper.convertToType<
                  ZacStateMachineActions>(<String, dynamic>{
                'converter': 'z:1:StateMachine:Action.send',
                'family': 'machine',
                'event': 'NEXT',
              }),
          returnsNormally);
    });

    test('ZacStateMachineActions.trySend', () {
      expect(
          () => ConverterHelper.convertToType<
                  ZacStateMachineActions>(<String, dynamic>{
                'converter': 'z:1:StateMachine:Action.trySend',
                'family': 'machine',
                'event': 'NEXT',
              }),
          returnsNormally);
    });
  });

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

  testWidgets('Provide the current machine', (tester) async {
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
        child: LeakContext(
          cb: (zacContext) {
            curMachine = SharedValue.get(
                const SharedValueConsumeType.watch(), zacContext, 'machine');
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
      'Provided machine is automatically created and kept alive even if it is never listened to',
      (tester) async {
    late ZacContext context;
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
              on: [
                ZacTransition(event: 'NEXT', target: 'b'),
              ],
            ),
            'b': ZacStateConfig(
              widget: FlutterSizedBox(
                key: FlutterValueKey('in b'),
              ),
            ),
          },
          child: TestBuildCustomWidget((zacContext) {
            context = zacContext;
            return TextButton(
              key: const Key('button'),
              child: const SizedBox(),
              onPressed: () {
                (zacContext.ref.read(SharedValue.provider('machine'))
                        as ZacStateMachine)
                    .send('NEXT', null);
              },
            );
          }),
        ));

    await tester.tap(find.byKey(const Key('button')));
    await tester.pump();
    expect(
        (context.ref.read(SharedValue.provider('machine')) as ZacStateMachine)
            .state,
        'b');
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
        child: LeakContext(
          cb: (zacContext) {
            curMachine = SharedValue.get(
                    const SharedValueConsumeType.watch(), zacContext, 'machine')
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
        child: LeakContext(
          cb: (zacContext) {
            curMachine = SharedValue.get(
                    const SharedValueConsumeType.watch(), zacContext, 'machine')
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
        child: LeakContext(
          cb: (zacContext) {
            curMachine = SharedValue.get(
                    const SharedValueConsumeType.watch(), zacContext, 'machine')
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
        child: LeakContext(
          cb: (zacContext) {
            machine = SharedValue.get(
                    const SharedValueConsumeType.watch(), zacContext, 'machine')
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

  testWidgets('Send an event through an Action', (tester) async {
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: ZacExecuteActionsBuilder.once(
              actions: ZacActions(
                [
                  ZacStateMachineActions.send(
                    family: 'machine',
                    event: ZacString('NEXT'),
                  )
                ],
              ),
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
          family: ZacString('machine'),
          states: ['a', 'b'],
        ),
      ),
    );

    await tester.pump();

    expect(find.byKey(const ValueKey('in b')), findsOneWidget);
  });

  testWidgets('Trying to send an event through an Action', (tester) async {
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacString('machine'),
        initialState: ZacString('a'),
        states: {
          'a': ZacStateConfig(
            widget: ZacExecuteActionsBuilder.once(
              actions: ZacActions(
                [
                  ZacStateMachineActions.trySend(
                    family: 'machine',
                    event: ZacString('NEXT'),
                  )
                ],
              ),
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
          family: ZacString('machine'),
          states: ['a', 'b'],
        ),
      ),
    );

    await tester.pump();

    expect(find.byKey(const ValueKey('in b')), findsOneWidget);
  });
}
