import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
        ZacStateMachineConfig.fromJson(<String, dynamic>{
          'builder': 'z:1:StateMachine',
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
        ZacStateMachineConfig(initialState: 'a', states: {
          'a': ZacStateMachineStateConfig(
            on: [
              ZacStateMachineTransition(event: 'NEXT', target: 'b'),
            ],
          ),
          'b': ZacStateMachineStateConfig(),
        }));
  });

  testWidgets('integration', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:StateMachines.provide',
      'machines': {
        'm1': {
          'builder': 'z:1:StateMachine',
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
                    'builder': 'z:1:Action.withPayload',
                    'payload': {
                      'builder': 'f:1:Text',
                      'data': 'From Next in b',
                    },
                    'actions': [
                      {
                        'builder': 'z:1:StateMachine:Action.send',
                        'family': 'm1',
                        'event': 'NEXT',
                      },
                    ]
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
          'builder': 'z:1:StateMachine',
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
          'builder': 'z:1:StateMachine',
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
