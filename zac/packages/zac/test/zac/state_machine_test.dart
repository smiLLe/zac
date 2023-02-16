import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/state_machine.dart';

import '../helper.dart';

void main() {
  test('Is in registry', () {
    expectInRegistry(
        'z:1:StateMachines.provide', ZacStateMachineProvider.fromJson);
    expectInRegistry('z:1:StateMachine:Build', ZacStateMachineBuild.fromJson);
    expectInRegistry(
        ['z:1:StateMachine:Action.send', 'z:1:StateMachine:Action.trySend'],
        ZacStateMachineActions.fromJson);
  });

  test('Create ZacStateMachineConfig from JSON', () {
    expect(
        ZacStateMachineProvide.fromJson(<String, dynamic>{
          'builder': 'z:1:StateMachine.provide',
          'initialState': 'a',
          'states': {
            'a': {
              'builder': 'z:1:StateMachine:StateConfig',
              'on': [
                {
                  'builder': 'z:1:StateMachine:Transition',
                  'event': 'NEXT',
                  'target': 'b',
                }
              ]
            },
            'b': {
              'builder': 'z:1:StateMachine:StateConfig',
            }
          }
        }),
        ZacStateMachineProvide(initialState: 'a', states: {
          'a': ZacStateMachineStateConfig(
            on: [
              ZacStateMachineTransition(event: 'NEXT', target: 'b'),
            ],
          ),
          'b': ZacStateMachineStateConfig(),
        }));
  });

  testWidgets('throw when trying to send an event after machine was disposed',
      (tester) async {
    late final ZacStateMachine m1;
    ZacRegistry().register(
      'test:widget',
      (map) {
        return TestWidget(
          (context, zacContext) {
            m1 = zacContext.consume.mapOrNull(
                (obj) => obj.ref.read(ZacStateMachine.provider('m1')))!;
            return const SizedBox();
          },
        );
      },
    );

    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:StateMachines.provide',
      'machines': {
        'm1': {
          'builder': 'z:1:StateMachine.provide',
          'initialState': 'a',
          'states': {
            'a': {
              'builder': 'z:1:StateMachine:StateConfig',
              'widget': {
                'builder': 'test:widget',
              },
            },
          }
        }
      },
      'child': {
        'builder': 'z:1:StateMachine:Build',
        'family': 'm1',
      },
    });

    await tester.pumpWidget(const SizedBox());

    expect(
        () => m1.send('SOME_EVENT', null),
        throwsA(isA<StateError>()
            .having((p0) => p0.message, 'error message', contains('''
It was no longer possible to send event "SOME_EVENT" to ZacStateMachine.
It is no longer possible to transition away from the current ZacStateMachine 
because there was already a transition.'''))));

    ZacRegistry().remove('test:widget');
  });

  testWidgets('Check wheter a state is still active or not', (tester) async {
    late final m = <ZacStateMachine>[];
    ZacRegistry().register(
      'test:widget',
      (map) {
        return TestWidget(
          (context, zacContext) {
            m.add(zacContext.consume.mapOrNull(
                (obj) => obj.ref.read(ZacStateMachine.provider('m1')))!);
            return const SizedBox();
          },
        );
      },
    );

    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:StateMachines.provide',
      'machines': {
        'm1': {
          'builder': 'z:1:StateMachine.provide',
          'initialState': 'a',
          'states': {
            'a': {
              'builder': 'z:1:StateMachine:StateConfig',
              'on': [
                {
                  'builder': 'z:1:StateMachine:Transition',
                  'event': 'NEXT',
                  'target': 'b'
                }
              ],
              'widget': {
                'builder': 'test:widget',
              },
            },
            'b': {
              'builder': 'z:1:StateMachine:StateConfig',
              'widget': {
                'builder': 'test:widget',
              },
            },
          }
        }
      },
      'child': {
        'builder': 'z:1:StateMachine:Build',
        'family': 'm1',
      },
    });

    expect(m[0].isActive(), isTrue);
    m[0].send('NEXT', null);
    await tester.pump();
    expect(m[0].isActive(), isFalse);
    expect(m[1].isActive(), isTrue);
    await tester.pumpWidget(const SizedBox());
    expect(m[1].isActive(), isFalse);

    ZacRegistry().remove('test:widget');
  });

  testWidgets('integration', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:StateMachines.provide',
      'machines': {
        'm1': {
          'builder': 'z:1:StateMachine.provide',
          'initialState': 'a',
          'states': {
            'a': {
              'builder': 'z:1:StateMachine:StateConfig',
              'on': [
                {
                  'builder': 'z:1:StateMachine:Transition',
                  'event': 'NEXT',
                  'target': 'b'
                }
              ],
              'widget': {
                'builder': 'f:1:ElevatedButton',
                'key': {
                  'builder': 'f:1:ValueKey',
                  'value': 'M1.a',
                },
                'onPressed': [
                  {
                    'builder': 'z:1:StateMachine:Action.send',
                    'family': 'm1',
                    'event': 'NEXT',
                  }
                ]
              },
            },
            'b': {
              'builder': 'z:1:StateMachine:StateConfig',
              'on': [
                {
                  'builder': 'z:1:StateMachine:Transition',
                  'event': 'NEXT',
                  'target': 'c'
                }
              ],
              'widget': {
                'builder': 'f:1:ElevatedButton',
                'key': {
                  'builder': 'f:1:ValueKey',
                  'value': 'M1.b',
                },
                'onPressed': [
                  {
                    'builder': 'z:1:StateMachine:Action.send',
                    'family': 'm1',
                    'event': 'NEXT',
                    'widget': {
                      'builder': 'f:1:Text',
                      'data': 'From Next in b',
                    },
                  },
                ]
              },
            },
            'c': {
              'builder': 'z:1:StateMachine:StateConfig',
            },
          }
        }
      },
      'child': {
        'builder': 'z:1:StateMachine:Build',
        'family': 'm1',
      },
    });

    expect(find.byKey(const ValueKey('M1.a')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('M1.a')));
    await tester.pump();

    expect(find.byKey(const ValueKey('M1.a')), findsNothing);
    expect(find.byKey(const ValueKey('M1.b')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('M1.b')));
    await tester.pump();

    expect(find.byKey(const ValueKey('M1.a')), findsNothing);
    expect(find.byKey(const ValueKey('M1.b')), findsNothing);
    expect(find.text('From Next in b'), findsOneWidget);
  });

  testWidgets('Throw exception if no initial widget is configured',
      (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:StateMachines.provide',
      'machines': {
        'm1': {
          'builder': 'z:1:StateMachine.provide',
          'initialState': 'a',
          'states': {
            'a': {
              'builder': 'z:1:StateMachine:StateConfig',
            },
          },
        },
      },
      'child': {
        'builder': 'z:1:StateMachine:Build',
        'family': 'm1',
      },
    });

    expect(
        tester.takeException(),
        isA<StateError>()
            .having((p0) => p0.message, 'error message', contains('''
Could not create a ZacStateMachine because there was no configured widget to
start the machine.
Either set the initialWidget in ZacStateMachine
or configure a widget for state "a".''')));
  });

  testWidgets('Throw exception if no widget is returned during transition',
      (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:StateMachines.provide',
      'machines': {
        'm1': {
          'builder': 'z:1:StateMachine.provide',
          'initialState': 'a',
          'states': {
            'a': {
              'builder': 'z:1:StateMachine:StateConfig',
              'on': [
                {
                  'builder': 'z:1:StateMachine:Transition',
                  'event': 'NEXT',
                  'target': 'b'
                }
              ],
              'widget': {
                'builder': 'f:1:ElevatedButton',
                'key': {
                  'builder': 'f:1:ValueKey',
                  'value': 'M1.a',
                },
                'onPressed': [
                  {
                    'builder': 'z:1:StateMachine:Action.send',
                    'family': 'm1',
                    'event': 'NEXT',
                  }
                ]
              },
            },
            'b': {
              'builder': 'z:1:StateMachine:StateConfig',
            }
          },
        },
      },
      'child': {
        'builder': 'z:1:StateMachine:Build',
        'family': 'm1',
      },
    });

    Object? error;

    await runZonedGuarded(
      () => tester.tap(find.byKey(const ValueKey('M1.a'))),
      (e, stack) {
        error = e;
      },
    );

    expect(
        error,
        isA<StateError>()
            .having((p0) => p0.message, 'error message', contains('''
Invalid transition in ZacStateMachine from state "a"
to state "b" on event "NEXT".
There was no configured widget for state "b" and the payload
was null.
Either configure a default widget for state "b" or set a
payload of type ZacBuilder<Widget> for event "NEXT".''')));
  });
}
