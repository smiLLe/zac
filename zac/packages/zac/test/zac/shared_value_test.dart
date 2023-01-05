import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';

void main() {
  group('SharedValueProvider', () {
    test('in registry', () {
      expectInRegistry([
        'z:1:int.provide',
        'z:1:double.provide',
        'z:1:String.provide',
        'z:1:bool.provide',
        'z:1:Object.provide',
        'z:1:null.provide',
        'z:1:Widget.provide',
        'z:1:List<Widget>.provide',
        'z:1:Map<String, Widget>.provide',
        'z:1:ZacBuilder<Object>.provide',
      ], SharedValueProviderBuilder.fromJson);
    });

    testWidgets('provide int', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideInt(
          value: 5,
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(
              getContext().widgetRef.watch(SharedValue.provider('shared')), 5);
        },
      );
    });

    testWidgets('provide double', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideDouble(
          value: 5.1,
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              5.1);
        },
      );
    });

    testWidgets('provide string', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideString(
          value: 'foo',
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              'foo');
        },
      );
    });

    testWidgets('provide bool', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideBool(
          value: false,
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              false);
        },
      );
    });

    testWidgets('provide null', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideNull(
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              isNull);
        },
      );
    });

    testWidgets('provide Object', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideObject(
          value: 'something',
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              'something');
        },
      );
    });

    testWidgets('provide Widget', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideWidget(
          value: FlutterSizedBox(),
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              FlutterSizedBox());
        },
      );
    });

    testWidgets('provide List<Widget>', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideWidgets(
          value: ZacValueList<Widget, List<Widget>>([FlutterSizedBox()]),
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              ZacValueList<Widget, List<Widget>>([FlutterSizedBox()]));
        },
      );
    });

    testWidgets('provide Map<String, Widget>', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideWidgetsMap(
          value: ZacValueMap<Widget, Map<String, Widget>>(
              {'a': FlutterSizedBox()}),
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(
              getContext().widgetRef.watch(SharedValue.provider('shared')),
              ZacValueMap<Widget, Map<String, Widget>>(
                  {'a': FlutterSizedBox()}));
        },
      );
    });

    testWidgets('provide any ZacBuilder', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideAnyBuilder(
          value: FlutterBoxShape.circle(),
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(getContext().widgetRef.watch(SharedValue.provider('shared')),
              FlutterBoxShape.circle());
        },
      );
    });
  });
  group('ConsumeSharedValue', () {
    test('Is in registry', () {
      expectInRegistry(
          ['z:1:SharedValue.consume'], ConsumeSharedValue.fromRegister);
    });

    group('.build()', () {
      // testWidgets('can consume and build without transformer', (tester) async {
      //   // ignore: no_leading_underscores_for_local_identifiers
      //   Future<void> _test<T>({required int? shareValue}) async {
      //     late final ZacContext zacContext;
      //     await tester.pumpWidget(
      //       ProviderScope(
      //         child: MaterialApp(
      //           home: Material(
      //             child: ZacWidget(
      //               data: SharedValueProviderBuilder.provideObject(
      //                 value: shareValue,
      //                 family: 'shared',
      //                 child: LeakContext(
      //                   cb: (z) => zacContext = z,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     );

      //     expect(ConsumeSharedValue<T>(family: 'shared').build(context, zacContext),
      //         shareValue);
      //   }

      //   await _test<int>(shareValue: 5);
      //   await _test<int?>(shareValue: 5);
      //   await _test<int?>(shareValue: null);
      // });

      testWidgets('can consume and build a ZacBuilder<Widget>', (tester) async {
        await testFindWidget<SizedBox>(
          tester,
          (valueKey) => SharedValueProviderBuilder.provideAnyBuilder(
            value: FlutterSizedBox(
              key: valueKey,
            ),
            family: 'shared',
            child: TestBuildCustomWidget(
              (context, zacContext) {
                return ConsumeSharedValue<Widget>(family: 'shared')
                    .build(context, zacContext);
              },
            ),
          ),
        );
      });

      testWidgets('will throw if shared value is null but null is not wanted',
          (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideNull(
              family: 'shared', child: child),
          (getContext, getZacContext) {
            expect(
                () => ConsumeSharedValue<String>(family: 'shared')
                    .build(getContext(), getZacContext()),
                throwsA(isA<StateError>().having(
                    (p0) => p0.message,
                    'error message',
                    contains(
                        'because the value is null and there are no transformers added'))));
          },
        );
      });

      testWidgets(
          'will throw if shared value is not of expected type and no transformer were available',
          (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideObject(
            value: 'hello',
            family: 'shared',
            child: child,
          ),
          (getContext, getZacContext) {
            expect(
                () => ConsumeSharedValue<int>(family: 'shared')
                    .build(getContext(), getZacContext()),
                throwsA(isA<StateError>().having(
                    (p0) => p0.message,
                    'error message',
                    contains(
                        'The value of type String was expected to be transformed'))));
          },
        );
      });
    });
  });

  group('ConsumeSharedValueList', () {
    test('Is in registry', () {
      expectInRegistry(
          ['z:1:SharedValueList.consume'], ConsumeSharedValueList.fromRegister);
    });

    testWidgets('can consume null as list item', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideObject(
          value: [1, null],
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(
              ConsumeSharedValueList<int?, List<int?>>(family: 'shared')
                  .build(getContext(), getZacContext()),
              [1, null]);
        },
      );
    });

    testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
      await testFindWidget(
        tester,
        (valueKey) => SharedValueProviderBuilder.provideWidgets(
          value: ZacValueList<Widget, List<Widget>>([
            FlutterSizedBox(
              key: valueKey,
            )
          ]),
          family: 'shared',
          child: FlutterColumn(
            children: ConsumeSharedValueList<Widget, List<Widget>>(
              family: 'shared',
            ),
          ),
        ),
      );
    });

    testWidgets('can consume a String', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideObject(
          value: ['hello', 'world'],
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(
              ConsumeSharedValueList<String, List<String>>(family: 'shared')
                  .build(getContext(), getZacContext()),
              ['hello', 'world']);
        },
      );
    });
  });

  group('ConsumeSharedValueMap', () {
    test('Is in registry', () {
      expectInRegistry(
          ['z:1:SharedValueMap.consume'], ConsumeSharedValueMap.fromRegister);
    });

    testWidgets('can consume null as value', (tester) async {
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideObject(
          value: {'a': null, 'b': 1},
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(
              ConsumeSharedValueMap<int?, Map<String, int?>>(family: 'shared')
                  .build(getContext(), getZacContext()),
              {'a': null, 'b': 1});
        },
      );
    });

    testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
      await testFindWidget(
        tester,
        (valueKey) => SharedValueProviderBuilder.provideWidgetsMap(
          value: ZacValueMap<Widget, Map<String, Widget>>({
            'a': FlutterSizedBox(
              key: valueKey,
            )
          }),
          family: 'shared',
          child: TestBuildCustomWidget(
            (context, zacContext) {
              final map = ConsumeSharedValueMap<Widget, Map<String, Widget>>(
                      family: 'shared')
                  .build(context, zacContext);

              return map['a']!;
            },
          ),
        ),
      );
    });
  });

  group('SharedValue', () {
    test('provider default value', () {
      final c = ProviderContainer();
      expect(() => c.read(SharedValue.provider('abc')),
          throwsA(isA<AccessEmptySharedValueError>()));
    });

    testWidgets('is automatically kept alive', (tester) async {
      var i = 0;
      Object? valueBuilder(AutoDisposeStateProviderRef<Object?> ref,
          BuildContext context, ZacContext zacContext) {
        ++i;
        return 0;
      }

      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: true,
            family: 'shared',
            valueBuilder: valueBuilder,
            childBuilder: (context, z) {
              context.widgetRef.read(SharedValue.provider('shared'));
              return const SizedBox();
            },
          ),
        ),
      ));

      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: true,
            family: 'shared',
            valueBuilder: valueBuilder,
            childBuilder: (context, z) {
              return const SizedBox();
            },
          ),
        ),
      ));

      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: true,
            family: 'shared',
            valueBuilder: valueBuilder,
            childBuilder: (context, z) {
              context.widgetRef.read(SharedValue.provider('shared'));
              return const SizedBox();
            },
          ),
        ),
      ));

      expect(i, 1);
    });

    testWidgets('is not automatically kept alive', (tester) async {
      var i = 0;
      Object? valueBuilder(AutoDisposeStateProviderRef<Object?> ref,
          BuildContext context, ZacContext zacContext) {
        ++i;
        return 0;
      }

      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: false,
            family: 'shared',
            valueBuilder: valueBuilder,
            childBuilder: (context, z) {
              context.widgetRef.read(SharedValue.provider('shared'));
              return const SizedBox();
            },
          ),
        ),
      ));

      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: false,
            family: 'shared',
            valueBuilder: valueBuilder,
            childBuilder: (context, z) {
              return const SizedBox();
            },
          ),
        ),
      ));

      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: false,
            family: 'shared',
            valueBuilder: valueBuilder,
            childBuilder: (context, z) {
              context.widgetRef.read(SharedValue.provider('shared'));
              return const SizedBox();
            },
          ),
        ),
      ));

      expect(i, 2);
    });

    testWidgets('nested', (tester) async {
      dynamic a;
      dynamic b;
      dynamic c;
      await testZacWidget(
        tester,
        SharedValueProviderBuilder.provideString(
          value: 'a',
          family: 'sharedA',
          child: SharedValueProviderBuilder.provideString(
            value: 'b',
            family: 'sharedB',
            child: SharedValueProviderBuilder.provideString(
              value: 'c',
              family: 'sharedC',
              child: SharedValueProviderBuilder.provideString(
                value: 'AA',
                family: 'sharedA',
                child: LeakContext(
                  cb: (context, zacContext) {
                    a = context.widgetRef
                        .watch(SharedValue.provider('sharedA'));
                    b = context.widgetRef
                        .watch(SharedValue.provider('sharedB'));
                    c = context.widgetRef
                        .watch(SharedValue.provider('sharedC'));
                  },
                ),
              ),
            ),
          ),
        ),
      );

      expect(a, 'AA');
      expect(b, 'b');
      expect(c, 'c');
    });

    group('get()', () {
      testWidgets('return the provided value', (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideInt(
            value: 10,
            family: 'foo',
            child: child,
          ),
          (getContext, getZacContext) {
            expect(
                SharedValue.get(
                  context: getContext(),
                  zacContext: getZacContext(),
                  consumeType: const SharedValueConsumeType.read(),
                  family: 'foo',
                ),
                10);
          },
        );
      });

      testWidgets('also accepts null as provided value', (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideNull(
            family: 'foo',
            child: child,
          ),
          (getContext, getZacContext) {
            expect(
                SharedValue.get(
                  context: getContext(),
                  zacContext: getZacContext(),
                  consumeType: const SharedValueConsumeType.read(),
                  family: 'foo',
                ),
                isNull);
          },
        );
      });

      testWidgets('throws if empty', (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => child,
          (getContext, getZacContext) {
            expect(
                () => SharedValue.get(
                      context: getContext(),
                      zacContext: getZacContext(),
                      consumeType: const SharedValueConsumeType.read(),
                      family: 'foo',
                    ),
                throwsA(isA<AccessEmptySharedValueError>()));
          },
        );
      });
    });

    group('update()', () {
      testWidgets('throws if empty', (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => child,
          (getContext, getZacContext) {
            expect(
                () => SharedValue.update(
                    getContext(), getZacContext(), 'foo', (current) => 10),
                throwsA(isA<AccessEmptySharedValueError>()));
          },
        );
      });

      testWidgets('existing value', (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideNull(
            family: 'foo',
            child: child,
          ),
          (getContext, getZacContext) {
            SharedValue.update(
                getContext(), getZacContext(), 'foo', (current) => 10);
            expect(
                SharedValue.get(
                  context: getContext(),
                  zacContext: getZacContext(),
                  consumeType: const SharedValueConsumeType.read(),
                  family: 'foo',
                ),
                10);

            SharedValue.update(getContext(), getZacContext(), 'foo',
                (current) => (current as int) + 10);
            expect(
                SharedValue.get(
                  context: getContext(),
                  zacContext: getZacContext(),
                  consumeType: const SharedValueConsumeType.read(),
                  family: 'foo',
                ),
                20);
          },
        );
      });
    });
  });

  group('SharedValueActions', () {
    group('invalidate', () {
      testWidgets('will invalidate the provider', (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideString(
            value: 'hello',
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>(
                [
                  FlutterText(ConsumeSharedValue<String>(family: 'shared')),
                  child,
                ],
              ),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('hello'), findsOneWidget);
            SharedValue.update(
                getContext(), getZacContext(), 'shared', (current) => 'world');
            await tester.pump();
            expect(find.text('hello'), findsNothing);
            expect(find.text('world'), findsOneWidget);
            SharedValueActions.invalidate(family: 'shared').execute(
                const ZacActionPayload(), getContext(), getZacContext());
            await tester.pumpAndSettle();
            expect(find.text('hello'), findsOneWidget);
            expect(find.text('world'), findsNothing);
          },
        );
      });
    });

    group('update', () {
      testWidgets('may update the SharedValue if no payload is present',
          (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'family',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>?>([
                FlutterText(
                  ConsumeSharedValue<String>(
                    family: 'family',
                    transformer: ZacTransformers([
                      CustomTransformer(
                        (transformValue, context, zacContext, payload) {
                          if (null == transformValue.value) return 'IS NULL';
                          return transformValue.value;
                        },
                      )
                    ]),
                  ),
                ),
                ZacExecuteActionsBuilder.once(
                  actions: ZacActions([
                    SharedValueActions.update(family: 'family'),
                  ]),
                ),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            await tester.pumpAndSettle();

            expect(find.text('IS NULL'), findsOneWidget);
          },
        );
      });

      testWidgets(
          'may update the SharedValue by using its current value if no payload is present',
          (tester) async {
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'family',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>?>([
                FlutterText(ConsumeSharedValue<String>(family: 'family')),
                ZacExecuteActionsBuilder.once(
                  actions: ZacActions([
                    SharedValueActions.update(
                      family: 'family',
                      transformer: ZacTransformers([_ConcatStr('oof')]),
                      ifNoPayloadTakeCurrent: true,
                    ),
                  ]),
                ),
              ]),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.text('foooof'), findsOneWidget);
      });

      testWidgets(
          'may transform child items in a List before updating the SharedValue',
          (tester) async {
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideObject(
            value: ['a', 'b'],
            family: 'family',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>?>([
                FlutterText(ConsumeSharedValue<String>(
                  family: 'family',
                  transformer: ZacTransformers(
                      [const IterableTransformer.join(separator: ', ')]),
                )),
                ZacExecuteActionsBuilder.once(
                  actions: ZacActions([
                    SharedValueActions.update(
                      family: 'family',
                      transformer: ZacTransformers([
                        IterableTransformer.map(
                            transformer: ZacTransformers([_ConcatStr('foo')]))
                      ]),
                      ifNoPayloadTakeCurrent: true,
                    ),
                  ]),
                ),
              ]),
            ),
          ),
        );

        expect(find.text('a, b'), findsOneWidget);
        await tester.pumpAndSettle();

        expect(find.text('afoo, bfoo'), findsOneWidget);
      });

      testWidgets(
          'may transform child items in a List before updating the SharedValue from payload',
          (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideObject(
            /// this value is not relevant for this test because the action will
            /// provide a new value
            value: ['ignore'],
            family: 'family',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>?>([
                FlutterText(ConsumeSharedValue<String>(
                  family: 'family',
                  transformer: ZacTransformers(
                      [const IterableTransformer.join(separator: ', ')]),
                )),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            ZacActions([
              SharedValueActions.update(
                family: 'family',
                transformer: ZacTransformers([
                  IterableTransformer.map(
                      transformer: ZacTransformers([_ConcatStr('foo')]))
                ]),
              ),
            ]).build(getContext(), getZacContext()).execute(
                ZacActionPayload.param(['a', 'b']),
                getContext(),
                getZacContext());

            await tester.pumpAndSettle();

            expect(find.text('afoo, bfoo'), findsOneWidget);
          },
        );
      });

      testWidgets(
          'may transform child items in a List before updating the SharedValue from payload with two params',
          (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideObject(
            /// this value is not relevant for this test because the action will
            /// provide a new value
            value: [
              ['ignore'],
              ['ignore']
            ],
            family: 'family',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>?>([
                FlutterText(ConsumeSharedValue<String>(
                  family: 'family',
                  transformer: ZacTransformers([
                    const IterableTransformer.first(),
                    const IterableTransformer.join(separator: ', ')
                  ]),
                )),
                FlutterText(ConsumeSharedValue<String>(
                  family: 'family',
                  transformer: ZacTransformers([
                    const IterableTransformer.last(),
                    const IterableTransformer.join(separator: ', ')
                  ]),
                )),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            ZacActions([
              SharedValueActions.update(
                family: 'family',
                transformer: ZacTransformers([
                  IterableTransformer.map(
                      transformer: ZacTransformers([_ConcatStr('foo')]))
                ]),
              ),
            ]).build(getContext(), getZacContext()).execute(
                ZacActionPayload.param2(['a', 'b'], ['c', 'd']),
                getContext(),
                getZacContext());

            await tester.pumpAndSettle();

            expect(find.text('afoo, bfoo'), findsOneWidget);
            expect(find.text('cfoo, dfoo'), findsOneWidget);
          },
        );
      });

      testWidgets(
          'may transform value items in a Map before updating the SharedValue from payload',
          (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideObject(
            /// this value is not relevant for this test because the action will
            /// provide a new value
            value: {'ignore': 'ignored'},
            family: 'family',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>?>([
                FlutterText(ConsumeSharedValue<String>(
                  family: 'family',
                  transformer: ZacTransformers([
                    const MapTransformer.values(),
                    const IterableTransformer.join(separator: ', ')
                  ]),
                )),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            ZacActions([
              SharedValueActions.update(
                family: 'family',
                transformer: ZacTransformers([
                  MapTransformer.mapper(
                    valueTransformer: ZacTransformers([_ConcatStr('foo')]),
                  )
                ]),
              ),
            ]).build(getContext(), getZacContext()).execute(
                ZacActionPayload.param(
                  {'ignore': 'a', 'ignore2': 'b'},
                ),
                getContext(),
                getZacContext());

            await tester.pumpAndSettle();

            expect(find.text('afoo, bfoo'), findsOneWidget);
          },
        );
      });
    });

    group('SharedValueConsumeType', () {
      testWidgets('execute transformer through provider.select() in .watch()',
          (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'shared',
            child: child,
          ),
          (getContext, getZacContext) {
            expect(
                SharedValue.get(
                  context: getContext(),
                  zacContext: getZacContext(),
                  consumeType: SharedValueConsumeType.watch(
                      select: ZacTransformers([_ConcatStr('bar')])),
                  family: 'shared',
                ),
                'foobar');
          },
        );
      });
    });
  });
}

class _ConcatStr implements ZacTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(ZacTransformValue transformValue, BuildContext context,
      ZacContext zacContext, ZacActionPayload? payload) {
    return (transformValue.value as String) + str;
  }
}
