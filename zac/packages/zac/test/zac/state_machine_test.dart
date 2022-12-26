import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/state_machine.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_value.dart';

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

    test('ZacStateMachineTransformer.pickState', () {
      expect(
          () => ConverterHelper.convertToType<
                  ZacStateMachineTransformer>(<String, dynamic>{
                'converter': 'z:1:StateMachine:Transformer.pickState',
              }),
          returnsNormally);
    });

    test('ZacStateMachineTransformer.pickContext', () {
      expect(
          () => ConverterHelper.convertToType<
                  ZacStateMachineTransformer>(<String, dynamic>{
                'converter': 'z:1:StateMachine:Transformer.pickContext',
              }),
          returnsNormally);
    });
  });

  test('Get current config in StateMachine', () {
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('a').toZacValue()))),
        'b': ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('b').toZacValue())))
      },
      context: null,
      state: 'a',
      send: (event, context) {},
      trySend: (event, context) {},
      isActive: () => true,
    );

    expect(
        machine.config,
        ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('a').toZacValue()))));

    machine = machine.copyWith.call(state: 'b');
    expect(
        machine.config,
        ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('b').toZacValue()))));

    machine = machine.copyWith.call(state: 'c');
    expect(
        () => machine.config,
        throwsA(isA<StateError>().having((p0) => p0.message, 'message',
            contains('Invalid ZacStateMachine state'))));
  });

  testWidgets('Get current widget in StateMachine', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('a').toZacValue()))),
      },
      context: null,
      state: 'a',
      send: (event, context) {},
      trySend: (event, context) {},
      isActive: () => true,
    );

    expect(
        machine.getWidget(zacContext),
        ZacValue<Widget>(
            FlutterSizedBox(key: FlutterValueKey('a').toZacValue())));
  });

  test('Find a config for a certain state in a StateMachine', () {
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('a').toZacValue()))),
        'b': ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('b').toZacValue())))
      },
      context: null,
      state: 'a',
      send: (event, context) {},
      trySend: (event, context) {},
      isActive: () => true,
    );

    expect(
        machine.findConfigByState('a'),
        ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('a').toZacValue()))));
    expect(
        machine.findConfigByState('b'),
        ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('b').toZacValue()))));
  });

  test('Find a transition candidate for event in a StateMachine', () {
    var machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(
          widget: ZacValue<Widget>(
              FlutterSizedBox(key: FlutterValueKey('a').toZacValue())),
          on: [
            ZacTransition(event: 'NEXT', target: 'b'),
            ZacTransition(event: 'NEXT', target: 'c')
          ],
        ),
        'b': ZacStateConfig(
            widget: ZacValue<Widget>(
                FlutterSizedBox(key: FlutterValueKey('b').toZacValue())))
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
    Object? curMachine;
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacValue<String>.fromJson('machine'),
        initialContext: ZacValue<Object>.fromJson(1),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in a').toZacValue(),
                  ),
                ),
              ),
            )
          },
        ),
        child: ZacValue<Widget>(
          LeakContext(
            cb: (c) {
              zacContext = c;
              curMachine = SharedValue.get(
                zacContext: c,
                consumeType: const SharedValueConsumeType.watch(),
                family: 'machine',
                select: null,
              );
            },
          ),
        ),
      ),
    );

    expect(
        curMachine,
        isA<ZacStateMachine>()
            .having((p0) => p0.state, 'state', 'a')
            .having(
                (p0) => p0.getWidget(zacContext),
                'widget',
                ZacValue<Widget>(FlutterSizedBox(
                  key: FlutterValueKey('in a').toZacValue(),
                )))
            .having((p0) => p0.context, 'context', 1));
  });

  testWidgets(
      'Provided machine is automatically created and kept alive even if it is never listened to',
      (tester) async {
    late ZacContext context;
    await testZacWidget(
        tester,
        ZacStateMachineProviderBuilder(
          family: ZacValue<String>.fromJson('machine'),
          initialState: ZacValue<String>.fromJson('a'),
          states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
            items: {
              'a': ZacValue<ZacStateConfig>(
                ZacStateConfig(
                  widget: ZacValue<Widget>(
                    FlutterSizedBox(
                      key: FlutterValueKey('in a').toZacValue(),
                    ),
                  ),
                  on: [
                    ZacTransition(event: 'NEXT', target: 'b'),
                  ],
                ),
              ),
              'b': ZacValue<ZacStateConfig>(
                ZacStateConfig(
                  widget: ZacValue<Widget>(
                    FlutterSizedBox(
                      key: FlutterValueKey('in b').toZacValue(),
                    ),
                  ),
                ),
              ),
            },
          ),
          child: ZacValue<Widget>(
            TestBuildCustomWidget((zacContext) {
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
          ),
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
        family: ZacValue<String>.fromJson('machine'),
        initialContext: ZacValue<Object>.fromJson(1),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in a').toZacValue(),
                  ),
                ),
                on: [ZacTransition(event: 'NEXT', target: 'b')],
              ),
            ),
            'b': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in a').toZacValue(),
                  ),
                ),
                on: [ZacTransition(event: 'NEXT', target: 'a')],
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          LeakContext(
            cb: (zacContext) {
              curMachine = SharedValue.get(
                zacContext: zacContext,
                consumeType: const SharedValueConsumeType.watch(),
                family: 'machine',
                select: null,
              ) as ZacStateMachine;
            },
          ),
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
        family: ZacValue<String>.fromJson('machine'),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(FlutterSizedBox()),
                on: [
                  ZacTransition(event: 'NEXT', target: 'b'),
                  ZacTransition(event: 'OTHER', target: 'c'),
                ],
              ),
            ),
            'b': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(FlutterSizedBox()),
              ),
            ),
            'c': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(FlutterSizedBox()),
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          LeakContext(
            cb: (zacContext) {
              curMachine = SharedValue.get(
                zacContext: zacContext,
                consumeType: const SharedValueConsumeType.watch(),
                family: 'machine',
                select: null,
              ) as ZacStateMachine;
            },
          ),
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
        family: ZacValue<String>.fromJson('machine'),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(FlutterSizedBox()),
                on: [
                  ZacTransition(event: 'NEXT', target: 'b'),
                ],
              ),
            ),
            'b': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(FlutterSizedBox()),
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          LeakContext(
            cb: (zacContext) {
              curMachine = SharedValue.get(
                zacContext: zacContext,
                consumeType: const SharedValueConsumeType.watch(),
                family: 'machine',
                select: null,
              ) as ZacStateMachine;
            },
          ),
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

  testWidgets('Check StateMachine for being active', (tester) async {
    final List<ZacStateMachine> machines = [];
    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacValue<String>.fromJson('machine'),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(FlutterSizedBox()),
                on: [
                  ZacTransition(event: 'NEXT', target: 'b'),
                ],
              ),
            ),
            'b': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(FlutterSizedBox()),
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          LeakContext(
            cb: (zacContext) {
              machines.add(SharedValue.get(
                zacContext: zacContext,
                consumeType: const SharedValueConsumeType.watch(),
                family: 'machine',
                select: null,
              ) as ZacStateMachine);
            },
          ),
        ),
      ),
    );

    expect(machines[0].isActive(), isTrue);
    machines[0].send('NEXT', null);
    await tester.pump();
    expect(machines[0].isActive(), isFalse);
    expect(machines[1].isActive(), isTrue);

    /// dispose
    await testZacWidget(tester, FlutterSizedBox());
    expect(machines[1].isActive(), isFalse);
  });

  testWidgets(
      'BuildState will build the StateConfig attached widget when in specified state',
      (tester) async {
    late ZacStateMachine machine;

    await testZacWidget(
      tester,
      ZacStateMachineProviderBuilder(
        family: ZacValue<String>.fromJson('machine'),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in a').toZacValue(),
                  ),
                ),
                on: [ZacTransition(event: 'NEXT', target: 'b')],
              ),
            ),
            'b': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in b').toZacValue(),
                  ),
                ),
                on: [ZacTransition(event: 'NEXT', target: 'c')],
              ),
            ),
            'c': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in c').toZacValue(),
                  ),
                ),
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          LeakContext(
            cb: (zacContext) {
              machine = SharedValue.get(
                zacContext: zacContext,
                consumeType: const SharedValueConsumeType.watch(),
                family: 'machine',
                select: null,
              ) as ZacStateMachine;
            },
            child: ZacValue<Widget>(
              ZacStateMachineBuildStateBuilder(
                family: ZacValue<String>.fromJson('machine'),
                states: ['a', 'b'],
                unmappedStateWidget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('unmapped').toZacValue(),
                  ),
                ),
              ),
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
        family: ZacValue<String>.fromJson('machine'),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in a').toZacValue(),
                  ),
                ),
                on: [ZacTransition(event: 'NEXT', target: 'b')],
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          ZacStateMachineBuildStateBuilder(
            family: ZacValue<String>.fromJson('machine'),
            states: ['b'],
          ),
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
        family: ZacValue<String>.fromJson('machine'),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  ZacExecuteActionsBuilder.once(
                    actions: ZacActions(
                      [
                        ZacStateMachineActions.send(
                          family: 'machine',
                          event: ZacValue<String>.fromJson('NEXT'),
                        )
                      ],
                    ),
                    child: ZacValue<Widget>(FlutterSizedBox()),
                  ),
                ),
                on: [ZacTransition(event: 'NEXT', target: 'b')],
              ),
            ),
            'b': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in b').toZacValue(),
                  ),
                ),
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          ZacStateMachineBuildStateBuilder(
            family: ZacValue<String>.fromJson('machine'),
            states: ['a', 'b'],
          ),
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
        family: ZacValue<String>.fromJson('machine'),
        initialState: ZacValue<String>.fromJson('a'),
        states: ZacValueMap<ZacStateConfig, Map<String, ZacStateConfig>>(
          items: {
            'a': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  ZacExecuteActionsBuilder.once(
                    actions: ZacActions(
                      [
                        ZacStateMachineActions.trySend(
                          family: 'machine',
                          event: ZacValue<String>.fromJson('NEXT'),
                        )
                      ],
                    ),
                    child: ZacValue<Widget>(FlutterSizedBox()),
                  ),
                ),
                on: [ZacTransition(event: 'NEXT', target: 'b')],
              ),
            ),
            'b': ZacValue<ZacStateConfig>(
              ZacStateConfig(
                widget: ZacValue<Widget>(
                  FlutterSizedBox(
                    key: FlutterValueKey('in b').toZacValue(),
                  ),
                ),
              ),
            ),
          },
        ),
        child: ZacValue<Widget>(
          ZacStateMachineBuildStateBuilder(
            family: ZacValue<String>.fromJson('machine'),
            states: ['a', 'b'],
          ),
        ),
      ),
    );

    await tester.pump();

    expect(find.byKey(const ValueKey('in b')), findsOneWidget);
  });

  test('Let a transformer pick and return the state of a StateMachine ', () {
    expect(
        ZacStateMachineTransformer.pickState().transform(
            ZacTransformValue(ZacStateMachine(
              states: {
                'a': ZacStateConfig(
                    widget: ZacValue<Widget>(FlutterSizedBox(
                        key: FlutterValueKey('a').toZacValue()))),
              },
              context: null,
              state: 'a',
              send: (event, context) {},
              trySend: (event, context) {},
              isActive: () => true,
            )),
            FakeZacContext(),
            null),
        'a');

    expect(
        () => ZacStateMachineTransformer.pickState()
            .transform(ZacTransformValue('FAIL'), FakeZacContext(), null),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'Error',
            contains(
                'The ZacStateMachineTransformer expected a transformer value of ZacStateMachine'))));
  });

  test('Let a transformer pick and return the context of a StateMachine ', () {
    expect(
        ZacStateMachineTransformer.pickContext().transform(
            ZacTransformValue(ZacStateMachine(
              states: {
                'a': ZacStateConfig(
                    widget: ZacValue<Widget>(FlutterSizedBox(
                        key: FlutterValueKey('a').toZacValue()))),
              },
              context: 'hello',
              state: 'a',
              send: (event, context) {},
              trySend: (event, context) {},
              isActive: () => true,
            )),
            FakeZacContext(),
            null),
        'hello');

    expect(
        () => ZacStateMachineTransformer.pickContext()
            .transform(ZacTransformValue('FAIL'), FakeZacContext(), null),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'Error',
            contains(
                'The ZacStateMachineTransformer expected a transformer value of ZacStateMachine'))));
  });
}
