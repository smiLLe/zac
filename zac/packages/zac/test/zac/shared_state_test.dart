import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/shared_state.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';

void main() {
  test('in registry', () {
    expectInRegistry(
        'z:1:SharedStates.provide', ZacSharedStateProvider.fromJson);

    expectInRegistry([
      'z:1:SharedState.consume',
    ], SharedStateConsume.fromRegister);

    expectInRegistry([
      'z:1:SharedState.update',
      'z:1:SharedState.transformCurrentValue',
    ], SharedStateActions.fromJson);
  });

  group('ZacSharedStateProvider(Widget):', () {
    test('ZacSharedStateProvider.sharedStates', () {
      expect(
          ZacSharedStateProvider(
            states: {
              'a': ZacSharedStateProvide.value('a value'),
              'b': ZacSharedStateProvide.builder(FlutterSizedBox()),
              'c': ZacSharedStateProvide.n(),
            },
            child: FlutterSizedBox(),
          ).sharedStates,
          <String, dynamic>{
            'a': 'a value',
            'b': FlutterSizedBox(),
            'c': null,
          });
    });
    testWidgets('Provide states and also update them with new values',
        (tester) async {
      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: ZacSharedStateProviderWidget(
            states: const <String, dynamic>{
              'shared': 'hello',
            },
            buildChild: (_, __) => Consumer(
              builder: (context, ref, child) {
                final val =
                    ref.watch(SharedState.provider('shared')).value as String;
                return Text(val);
              },
            ),
          ),
        ),
      ));
      expect(find.text('hello'), findsOneWidget);

      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: ZacSharedStateProviderWidget(
            states: const <String, dynamic>{
              'shared': 'hello world',
            },
            buildChild: (_, __) => Consumer(
              builder: (context, ref, child) {
                final val =
                    ref.watch(SharedState.provider('shared')).value as String;
                return Text(val);
              },
            ),
          ),
        ),
      ));

      expect(find.text('hello'), findsNothing);
      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('Provide null', (tester) async {
      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: ZacSharedStateProviderWidget(
            states: const <String, dynamic>{
              'shared': null,
            },
            buildChild: (_, __) => Consumer(
              builder: (context, ref, child) {
                final val =
                    ref.watch(SharedState.provider('shared')).value.toString();
                return Text('it is $val');
              },
            ),
          ),
        ),
      ));
      expect(find.text('it is null'), findsOneWidget);
    });

    testWidgets(
        'Providing a state will automatically create the provider/state',
        (tester) async {
      bool exists = false;
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacSharedStateProviderWidget(
              states: const <String, dynamic>{
                'shared': 'hello',
              },
              buildChild: TestWidget((context, zacContext) {
                exists =
                    context.widgetRef.exists(SharedState.provider('shared'));

                return const SizedBox();
              }).build,
            ),
          ),
        ),
      );

      expect(exists, isTrue);
    });

    testWidgets('SharedState exposed update function may update state',
        (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacSharedStateProviderWidget(
              states: const <String, dynamic>{
                'shared': 'hello',
              },
              buildChild: TestWidget((context, zacContext) {
                context.widgetRef.exists(SharedState.provider('shared'));

                return TextButton(
                  key: const ValueKey('BUTTON'),
                  onPressed: () => context.widgetRef
                      .read(SharedState.provider('shared'))
                      .update((cur) => '$cur world'),
                  child: Text(
                    context.widgetRef
                        .watch(SharedState.provider('shared'))
                        .value as String,
                  ),
                );
              }).build,
            ),
          ),
        ),
      );

      expect(find.text('hello'), findsOneWidget);
      final button = find.byKey(const ValueKey('BUTTON'));
      await tester.tap(button);
      await tester.pump();

      expect(find.text('hello'), findsNothing);
      expect(find.text('hello world'), findsOneWidget);
    });
  });

  group('SharedStateConsume:', () {
    testWidgets('Consume value and builder types', (tester) async {
      await testJSON(tester, <String, dynamic>{
        'builder': 'z:1:SharedStates.provide',
        'states': {
          'shared1': {
            'builder': 'z:1:SharedStateType:Value',
            'value': 'hello world'
          },
          'shared2': {
            'builder': 'z:1:SharedStateType:Builder',
            'value': {'builder': 'z:1:String', 'value': 'foo bar'}
          },
          'shared3': {
            'builder': 'z:1:SharedStateType:Builder',
            'value': {'builder': 'f:1:Text', 'data': 'lorem ipsum'}
          }
        },
        'child': {
          'builder': 'f:1:Column',
          'children': [
            {
              'builder': 'f:1:Text',
              'data': {
                'builder': 'z:1:SharedState.consume',
                'family': 'shared1',
              }
            },
            {
              'builder': 'f:1:Text',
              'data': {
                'builder': 'z:1:SharedState.consume',
                'family': 'shared2',
              }
            },
            {
              'builder': 'z:1:SharedState.consume',
              'family': 'shared3',
            }
          ]
        }
      });

      expect(find.text('hello world'), findsOneWidget);
      expect(find.text('foo bar'), findsOneWidget);
      expect(find.text('lorem ipsum'), findsOneWidget);
    });

    testWidgets('May consume null', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacSharedStateProviderWidget(
              states: <String, dynamic>{
                'shared': FlutterSizedBox(key: FlutterValueKey('BOX')),
              },
              buildChild: FlutterSizedBox(
                child: SharedStateConsume<Widget?>(
                  family: 'shared',
                ),
              ).build,
            ),
          ),
        ),
      );

      expect(find.byKey(const ValueKey('BOX')), findsOneWidget);

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacSharedStateProviderWidget(
              states: const <String, dynamic>{
                'shared': null,
              },
              buildChild: FlutterSizedBox(
                child: SharedStateConsume<Widget?>(
                  family: 'shared',
                ),
              ).build,
            ),
          ),
        ),
      );

      expect(find.byKey(const ValueKey('BOX')), findsNothing);
    });

    testWidgets('May transform the consumed value', (tester) async {
      final time = DateTime.now().toIso8601String();
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacSharedStateProviderWidget(
              states: <String, dynamic>{
                'shared': ZacDateTime.fromJson(time),
              },
              buildChild: FlutterText(
                SharedStateConsume<String>(
                  family: 'shared',
                  transformer: ZacListOfTransformers([
                    TestTransform(
                      (transformValue, context, zacContext, payload) {
                        return (transformValue.value as DateTime)
                            .toIso8601String();
                      },
                    )
                  ]),
                ),
              ).build,
            ),
          ),
        ),
      );

      expect(find.text(time), findsOneWidget);
    });

    group('Errors:', () {
      testWidgets('No transformers and unwanted type', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacSharedStateProviderWidget(
                states: const <String, dynamic>{
                  'shared': 1,
                },
                buildChild: FlutterText(
                  SharedStateConsume<String>(family: 'shared'),
                ).build,
              ),
            ),
          ),
        );

        expect(tester.takeException(),
            isA<StateError>().having((p0) => p0.message, 'error', contains('''
It was not possible to return a SharedState of type String from SharedStateConsume<String>.build()
because there were no transformer.
The value of type int was expected to be transformed.
Value: 1''')));
      });

      testWidgets('Transformers return unwanted type', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacSharedStateProviderWidget(
                states: const <String, dynamic>{
                  'shared': 1,
                },
                buildChild: FlutterText(
                  SharedStateConsume<String>(
                    family: 'shared',
                    transformer: ZacListOfTransformers([
                      TestTransform(
                        (transformValue, context, zacContext, payload) {
                          return DateTime.now();
                        },
                      )
                    ]),
                  ),
                ).build,
              ),
            ),
          ),
        );

        expect(tester.takeException(),
            isA<StateError>().having((p0) => p0.message, 'error', contains('''
It was not possible to return a SharedState of type String from SharedStateConsume<String>.build()
after transformers were applied.''')));
      });

      testWidgets('Null not wanted', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacSharedStateProviderWidget(
                states: const <String, dynamic>{
                  'shared': null,
                },
                buildChild: FlutterText(
                  SharedStateConsume<String>(family: 'shared'),
                ).build,
              ),
            ),
          ),
        );

        expect(tester.takeException(),
            isA<StateError>().having((p0) => p0.message, 'error', contains('''
It was not possible to return a SharedState of type String from SharedStateConsume<String>.build()
because the value is null and there are no transformers added.''')));
      });
    });
  });

  group('SharedStateActions:', () {
    testWidgets('Set new state', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacSharedStateProviderWidget(
              states: <String, dynamic>{
                'shared1': FlutterText(ZacString.fromJson('hello world')),
                'shared2': 'lorem ipsum'
              },
              buildChild: FlutterColumn(
                children: ZacListOfWidgets([
                  FlutterSizedBox(
                    child: SharedStateConsume<Widget?>(
                      family: 'shared1',
                    ),
                  ),
                  FlutterText(
                    SharedStateConsume<String>(
                      family: 'shared2',
                    ),
                  ),
                  FlutterTextButton(
                    key: FlutterValueKey('BUTTON_1'),
                    child: FlutterSizedBox(),
                    onPressed: ZacListOfActions([
                      SharedStateActions.update(states: {
                        'shared1': ZacSharedStateProvide.builder(FlutterText(
                          ZacString.fromJson('hello world again'),
                        )),
                        'shared2': ZacSharedStateProvide.value('foobar'),
                      }),
                    ]),
                  ),
                  FlutterTextButton(
                    key: FlutterValueKey('BUTTON_2'),
                    child: FlutterSizedBox(),
                    onPressed: ZacListOfActions([
                      SharedStateActions.update(states: {
                        'shared1': ZacSharedStateProvide.n(),
                      }),
                    ]),
                  )
                ]),
              ).build,
            ),
          ),
        ),
      );

      expect(find.text('hello world'), findsOneWidget);
      expect(find.text('lorem ipsum'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('BUTTON_1')));
      await tester.pump();

      expect(find.text('hello world'), findsNothing);
      expect(find.text('lorem ipsum'), findsNothing);
      expect(find.text('hello world again'), findsOneWidget);
      expect(find.text('foobar'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('BUTTON_2')));
      await tester.pump();

      expect(find.text('hello world'), findsNothing);
      expect(find.text('hello world again'), findsNothing);
    });

    testWidgets('Transform and update current state', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacSharedStateProviderWidget(
              states: const <String, dynamic>{
                'shared': 'hello',
              },
              buildChild: FlutterColumn(
                children: ZacListOfWidgets([
                  FlutterText(
                    SharedStateConsume<String>(
                      family: 'shared',
                    ),
                  ),
                  FlutterTextButton(
                    key: FlutterValueKey('BUTTON'),
                    child: FlutterSizedBox(),
                    onPressed: ZacListOfActions([
                      SharedStateActions.transformCurrentValue(
                        family: 'shared',
                        transformer: ZacListOfTransformers([
                          TestTransform(
                              (transformValue, context, zacContext, payload) {
                            return '${(transformValue.value as String)} world';
                          })
                        ]),
                      ),
                    ]),
                  ),
                ]),
              ).build,
            ),
          ),
        ),
      );

      expect(find.text('hello'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('BUTTON')));
      await tester.pump();

      expect(find.text('hello'), findsNothing);
      expect(find.text('hello world'), findsOneWidget);
    });
  });
}
