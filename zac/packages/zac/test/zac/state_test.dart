import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/state.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('in registry', () {
    expectInRegistry('z:1:States.provide', ZacStatesProvider.fromJson);
    expectInRegistry('z:1:State.consume', ZacStateConsume.fromRegister);
    expectInRegistry('z:1:State.update', ZacStateActions.fromJson);
    expectInRegistry(['z:1:State.provideBuilder', 'z:1:State.provideBuiltIn'],
        ZacStateProvide.fromJson);
  });

  testWidgets('Provide different kind of values', (tester) async {
    final sharedAString = expectAsync1((p0) => expect(p0, 'shared1'));

    final sharedAWidget = expectAsync1((p0) => expect(p0, isA<FlutterText>()));

    final buildABuilderAndProvideTheResult = expectAsync1((p0) => expect(
        p0, isA<ZacString>().having((p0) => p0.value, 'value', 'shared3')));

    final nullValue = expectAsync1((p0) => expect(p0, isNull));

    ZacRegistry().register(
      'test:widget',
      (map) {
        return TestWidget((context, zacContext) {
          sharedAString(ZacStateConsume<Object?>(
            family: 'shared1',
            mayBuildBuilder: false,
          ).build(context, zacContext));
          sharedAWidget(ZacStateConsume<Object?>(
            family: 'shared2',
            mayBuildBuilder: false,
          ).build(context, zacContext));
          buildABuilderAndProvideTheResult(ZacStateConsume<Object?>(
            family: 'shared3',
            mayBuildBuilder: false,
          ).build(context, zacContext));
          nullValue(ZacStateConsume<Object?>(
            family: 'shared4',
            mayBuildBuilder: false,
          ).build(context, zacContext));

          return const SizedBox();
        });
      },
    );

    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:States.provide',
      'states': [
        /// simple string which will be turned into ZacObject
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared1',
          'value': 'shared1',
        },

        /// Text Widget
        {
          'builder': 'z:1:State.provideBuilder',
          'family': 'shared2',
          'value': {
            'builder': 'f:1:Text',
            'data': 'shared2',
          },
        },

        /// ZacString
        {
          'builder': 'z:1:State.provideBuilder',
          'family': 'shared3',
          'value': {
            'builder': 'z:1:String',
            'value': 'shared3',
          },
        },

        /// null
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared4',
        },
      ],
      'child': {
        'builder': 'test:widget',
      },
    });

    ZacRegistry().remove('test:widget');
  });

  testWidgets('integration simple', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:States.provide',
      'states': [
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared1',
          'value': 'shared1',
        },
      ],
      'child': {
        'builder': 'f:1:Column',
        'children': [
          {
            'builder': 'f:1:Text',
            'data': {
              'builder': 'z:1:State.consume',
              'family': 'shared1',
            }
          },
          {
            'builder': 'f:1:ElevatedButton',
            'key': {
              'builder': 'f:1:ValueKey',
              'value': 'BUTTON',
            },
            'onPressed': [
              {
                'builder': 'z:1:State.update',
                'family': 'shared1',
                'withValue': 'hello world'
              }
            ]
          },
        ],
      },
    });

    expect(find.text('shared1'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('BUTTON')));
    await tester.pump();
    expect(find.text('hello world'), findsOneWidget);
  });

  testWidgets('integration simple #2', (tester) async {
    ZacRegistry().register(
      'test:transform',
      (map) => TestTransform((context, zacContext) {
        return 'hello from transformer';
      }),
    );

    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:States.provide',
      'states': [
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared1',
          'value': 'shared1',
        },
      ],
      'child': {
        'builder': 'f:1:Column',
        'children': [
          {
            'builder': 'f:1:Text',
            'data': {
              'builder': 'z:1:State.consume',
              'family': 'shared1',
              'transformer': [
                {
                  'builder': 'test:transform',
                },
              ],
            }
          },
        ],
      },
    });

    expect(find.text('shared1'), findsNothing);
    expect(find.text('hello from transformer'), findsOneWidget);

    ZacRegistry().remove('test:transform');
  });

  testWidgets('integration nested provider', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:States.provide',
      'states': [
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared1',
          'value': 'shared1',
        },
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared2',
          'value': 'shared2',
        },
      ],
      'child': {
        'builder': 'f:1:Column',
        'children': [
          {
            'builder': 'f:1:Text',
            'data': {
              'builder': 'z:1:State.consume',
              'family': 'shared1',
            }
          },
          {
            'builder': 'f:1:Text',
            'data': {
              'builder': 'z:1:State.consume',
              'family': 'shared2',
            }
          },
          {
            'builder': 'f:1:ElevatedButton',
            'key': {
              'builder': 'f:1:ValueKey',
              'value': 'BUTTON',
            },
            'onPressed': [
              {
                'builder': 'z:1:State.update',
                'family': 'shared1',
                'withValue': 'hello world'
              }
            ]
          },

          /// PROVIDE NESTED
          {
            'builder': 'z:1:States.provide',
            'states': [
              {
                'builder': 'z:1:State.provideBuiltIn',
                'family': 'shared1',
                'value': 'nested shared1',
              },
            ],
            'child': {
              'builder': 'f:1:Column',
              'children': [
                {
                  'builder': 'f:1:Text',
                  'data': {
                    'builder': 'z:1:State.consume',
                    'family': 'shared1',
                  }
                },
                {
                  'builder': 'f:1:ElevatedButton',
                  'key': {
                    'builder': 'f:1:ValueKey',
                    'value': 'NESTED BUTTON',
                  },
                  'onPressed': [
                    {
                      'builder': 'z:1:State.update',
                      'family': 'shared1',
                      'withValue': 'nested hello world'
                    }
                  ]
                },
              ],
            }
          }
        ],
      },
    });

    expect(find.text('shared1'), findsOneWidget);
    expect(find.text('shared2'), findsOneWidget);
    expect(find.text('nested shared1'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('NESTED BUTTON')));
    await tester.pump();
    expect(find.text('shared1'), findsOneWidget);
    expect(find.text('shared2'), findsOneWidget);
    expect(find.text('nested shared1'), findsNothing);
    expect(find.text('nested hello world'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('BUTTON')));
    await tester.pump();
    expect(find.text('shared1'), findsNothing);
    expect(find.text('hello world'), findsOneWidget);
    expect(find.text('shared2'), findsOneWidget);
    expect(find.text('nested shared1'), findsNothing);
    expect(find.text('nested hello world'), findsOneWidget);
  });

  group('Errors:', () {
    testWidgets('No transformers and unwanted type', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacStatesProviderWidget(
              builder: ZacStatesProvider(
                states: [
                  ZacStateProvide.builtIn(
                    family: 'shared',
                    value: 1,
                  ),
                ],
                child: FlutterText(
                  ZacStateConsume<String>(family: 'shared'),
                ),
              ),
            ),
          ),
        ),
      );

      expect(tester.takeException(),
          isA<StateError>().having((p0) => p0.message, 'error', contains('''
It was not possible to return a $ZacState of type String from ZacStateConsume<String>.build()
because there were no transformer.
The value of type int was expected to be transformed.
Value: 1''')));
    });

    testWidgets('Transformers return unwanted type', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacStatesProviderWidget(
              builder: ZacStatesProvider(
                states: [
                  ZacStateProvide.builtIn(
                    family: 'shared',
                    value: 1,
                  ),
                ],
                child: FlutterText(
                  ZacStateConsume<String>(
                    family: 'shared',
                    transformer: ZacListOfTransformers([
                      TestTransform(
                        (context, zacContext) {
                          return DateTime.now();
                        },
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      expect(tester.takeException(),
          isA<StateError>().having((p0) => p0.message, 'error', contains('''
It was not possible to return a ZacState of type String from ZacStateConsume<String>.build()
after transformers were applied.''')));
    });

    testWidgets('Null not wanted', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacStatesProviderWidget(
              builder: ZacStatesProvider(
                states: [
                  ZacStateProvide.builtIn(family: 'shared'),
                ],
                child: FlutterText(
                  ZacStateConsume<String>(family: 'shared'),
                ),
              ),
            ),
          ),
        ),
      );

      expect(tester.takeException(),
          isA<StateError>().having((p0) => p0.message, 'error', contains('''
It was not possible to return a ZacState of type String from ZacStateConsume<String>.build()
because the value is null and there are no transformers added.''')));
    });
  });

  testWidgets('Execute Actions on State change', (tester) async {
    final cb = MockTestActionExecute();
    ZacRegistry().register(
      'test:action',
      (map) => TestAction(cb),
    );

    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:States.provide',
      'states': [
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared1',
          'value': 'shared1',
        },
        {
          'builder': 'z:1:State.provideBuiltIn',
          'family': 'shared2',
          'value': 'shared2',
        },
      ],
      'child': {
        'builder': 'f:1:Column',
        'children': [
          {
            'builder': 'f:1:Text',
            'data': {
              'builder': 'z:1:State.consume',
              'family': 'shared2',
            }
          },
          {
            'builder': 'f:1:ElevatedButton',
            'key': {
              'builder': 'f:1:ValueKey',
              'value': 'BUTTON',
            },
            'onPressed': [
              {
                'builder': 'z:1:State.update',
                'family': 'shared1',
                'withValue': 'hello world'
              }
            ]
          },
          {
            'builder': 'z:1:State:OnChange.executeActions',
            'family': 'shared1',
            'actions': [
              {
                'builder': 'test:action',
              },
              {
                'builder': 'z:1:State.update',
                'family': 'shared2',
                'withValue': 'hello world'
              }
            ]
          }
        ],
      },
    });

    verifyZeroInteractions(cb);

    await tester.tap(find.byKey(const ValueKey('BUTTON')));
    await tester.pump();

    verify(cb(any, any)).called(1);
    expect(find.text('hello world'), findsOneWidget);

    ZacRegistry().remove('test:action');
  });
}
