import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/widget.dart';

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
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideInt(
              value: 5,
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );
      expect(sharedValue, 5);
    });

    testWidgets('provide double', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideDouble(
              value: 5.1,
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );
      expect(sharedValue, 5.1);
    });

    testWidgets('provide string', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideString(
              value: 'foo',
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );
      expect(sharedValue, 'foo');
    });

    testWidgets('provide bool', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideBool(
              value: false,
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );
      expect(sharedValue, isFalse);
    });

    testWidgets('provide null', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideNull(
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );
      expect(sharedValue, isNull);
    });

    testWidgets('provide Object', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideObject(
              value: 'something',
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );
      expect(sharedValue, 'something');
    });

    testWidgets('provide Widget', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideWidget(
              value: FlutterSizedBox(),
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );

      expect(sharedValue, FlutterSizedBox());
    });

    testWidgets('provide List<Widget>', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideWidgets(
              value:
                  ZacValueListSimple<Widget, List<Widget>>([FlutterSizedBox()]),
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );

      expect(sharedValue,
          ZacValueListSimple<Widget, List<Widget>>([FlutterSizedBox()]));
    });

    testWidgets('provide Map<String, Widget>', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideWidgetsMap(
              value: ZacValueMap<Widget, Map<String, Widget>>(
                  {'a': FlutterSizedBox()}),
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );

      expect(sharedValue,
          ZacValueMap<Widget, Map<String, Widget>>({'a': FlutterSizedBox()}));
    });

    testWidgets('provide any ZacBuilder', (tester) async {
      Object? sharedValue;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: SharedValueProviderBuilder.provideAnyBuilder(
              value: FlutterBoxShape.circle(),
              family: 'shared',
              child: LeakContext(
                cb: (zacContext) => sharedValue =
                    zacContext.ref.watch(SharedValue.provider('shared')),
              ),
            ),
          ),
        ),
      );

      expect(sharedValue, FlutterBoxShape.circle());
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

      //     expect(ConsumeSharedValue<T>(family: 'shared').build(zacContext),
      //         shareValue);
      //   }

      //   await _test<int>(shareValue: 5);
      //   await _test<int?>(shareValue: 5);
      //   await _test<int?>(shareValue: null);
      // });

      testWidgets('can consume and build a ZacBuilder<Widget>', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: ZacWidget(
              data: SharedValueProviderBuilder.provideAnyBuilder(
                value: FlutterSizedBox(
                  key: FlutterValueKey('FIND_ME_2'),
                ),
                family: 'shared',
                child: TestBuildCustomWidget(
                  (zacContext) {
                    return ConsumeSharedValue<Widget>(family: 'shared')
                        .build(zacContext);
                  },
                ),
              ),
            ),
          ),
        );

        expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
      });

      testWidgets('will throw if shared value is null but null is not wanted',
          (tester) async {
        late ZacContext zacContext;
        await tester.pumpWidget(
          ProviderScope(
            child: ZacWidget(
              data: SharedValueProviderBuilder.provideNull(
                family: 'shared',
                child: LeakContext(
                  cb: (c) {
                    zacContext = c;
                  },
                ),
              ),
            ),
          ),
        );
        expect(
            () =>
                ConsumeSharedValue<String>(family: 'shared').build(zacContext),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'error message',
                contains(
                    'because the value is null and there are no transformers added'))));
      });

      testWidgets(
          'will throw if shared value is not of expected type and no transformer were available',
          (tester) async {
        late ZacContext zacContext;
        await tester.pumpWidget(
          ProviderScope(
            child: ZacWidget(
              data: SharedValueProviderBuilder.provideObject(
                value: 'hello',
                family: 'shared',
                child: LeakContext(
                  cb: (c) {
                    zacContext = c;
                  },
                ),
              ),
            ),
          ),
        );
        expect(
            () => ConsumeSharedValue<int>(family: 'shared').build(zacContext),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'error message',
                contains(
                    'The value of type String was expected to be transformed'))));
      });
    });
  });

  group('ConsumeSharedValueList', () {
    test('Is in registry', () {
      expectInRegistry(
          ['z:1:SharedValueList.consume'], ConsumeSharedValueList.fromRegister);
    });

    testWidgets('can consume null as list item', (tester) async {
      late List<int?> items;
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacWidget(
              data: SharedValueProviderBuilder.provideObject(
                value: [1, null],
                family: 'shared',
                child: TestBuildCustomWidget(
                  (zacContext) {
                    items = ConsumeSharedValueList<int?, List<int?>>(
                            family: 'shared')
                        .build(zacContext);
                    return const SizedBox();
                  },
                ),
              ),
            ),
          ),
        ),
      );

      expect(items, [1, null]);
    });

    testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacWidget(
              data: SharedValueProviderBuilder.provideWidgets(
                value: ZacValueListSimple<Widget, List<Widget>>([
                  FlutterSizedBox(
                    key: FlutterValueKey('FIND_ME_2'),
                  )
                ]),
                family: 'shared',
                child: TestBuildCustomWidget(
                  (zacContext) {
                    return Column(
                      children: ConsumeSharedValueList<Widget, List<Widget>>(
                              family: 'shared')
                          .build(zacContext),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );

      expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
    });

    testWidgets('can consume a String', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Material(
              child: ZacWidget(
                data: SharedValueProviderBuilder.provideObject(
                  value: ['hello', 'world'],
                  family: 'shared',
                  child: TestBuildCustomWidget(
                    (zacContext) {
                      return Column(
                        children: [
                          ...ConsumeSharedValueList<String, List<String>>(
                                  family: 'shared')
                              .build(zacContext)
                              .map((e) => Text(e))
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      expect(find.text('hello'), findsOneWidget);
      expect(find.text('world'), findsOneWidget);
    });
  });

  group('ConsumeSharedValueMap', () {
    test('Is in registry', () {
      expectInRegistry(
          ['z:1:SharedValueMap.consume'], ConsumeSharedValueMap.fromRegister);
    });

    testWidgets('can consume null as value', (tester) async {
      late Map<String, int?> items;
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacWidget(
              data: SharedValueProviderBuilder.provideObject(
                value: {'a': null, 'b': 1},
                family: 'shared',
                child: TestBuildCustomWidget(
                  (zacContext) {
                    items = ConsumeSharedValueMap<int?, Map<String, int?>>(
                            family: 'shared')
                        .build(zacContext);
                    return const SizedBox();
                  },
                ),
              ),
            ),
          ),
        ),
      );

      expect(items, {'a': null, 'b': 1});
    });

    testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ZacWidget(
              data: SharedValueProviderBuilder.provideWidgetsMap(
                value: ZacValueMap<Widget, Map<String, Widget>>({
                  'a': FlutterSizedBox(
                    key: FlutterValueKey('FIND_ME_2'),
                  )
                }),
                family: 'shared',
                child: TestBuildCustomWidget(
                  (zacContext) {
                    final map =
                        ConsumeSharedValueMap<Widget, Map<String, Widget>>(
                                family: 'shared')
                            .build(zacContext);

                    return map['a']!;
                  },
                ),
              ),
            ),
          ),
        ),
      );

      expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
    });
  });

  group('SharedValue', () {
    test('provider default value', () {
      final c = ProviderContainer();
      expect(() => c.read(SharedValue.provider('abc')),
          throwsA(isA<AccessEmptySharedValueError>()));
    });

    testWidgets('can be provieded through SharedValueProvider', (tester) async {
      late dynamic obj;

      await testZacWidget(
        tester,
        SharedValueProviderBuilder.provideInt(
          value: 55,
          family: 'foo',
          child: LeakContext(cb: (zacContext) {
            obj = zacContext.ref.watch(SharedValue.provider('foo'));
          }),
        ),
      );

      expect(obj, 55);
    });

    testWidgets('is automatically kept alive', (tester) async {
      var i = 0;
      late ZacContext zacContext;
      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: true,
            family: 'shared',
            valueBuilder: (ref, zacContext) {
              ++i;
              return 0;
            },
            childBuilder: (c) {
              zacContext = c;
              return const SizedBox();
            },
          ),
        ),
      ));

      zacContext.ref.read(SharedValue.provider('shared'));

      await tester.pump();

      zacContext.ref.read(SharedValue.provider('shared'));
      expect(i, 1);
    });

    testWidgets('is not automatically kept alive', (tester) async {
      var i = 0;
      late ZacContext zacContext;
      await tester.pumpWidget(ProviderScope(
        child: MaterialApp(
          home: SharedValueProvider(
            autoCreate: false,
            family: 'shared',
            valueBuilder: (ref, zacContext) {
              ++i;
              return 0;
            },
            childBuilder: (c) {
              zacContext = c;
              return const SizedBox();
            },
          ),
        ),
      ));

      zacContext.ref.read(SharedValue.provider('shared'));

      await tester.pump();

      zacContext.ref.read(SharedValue.provider('shared'));
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
                  cb: (zacContext) {
                    a = zacContext.ref.watch(SharedValue.provider('sharedA'));
                    b = zacContext.ref.watch(SharedValue.provider('sharedB'));
                    c = zacContext.ref.watch(SharedValue.provider('sharedC'));
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
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideInt(
            value: 10,
            family: 'foo',
            child: LeakContext(
              cb: (o) => zacContext = o,
            ),
          ),
        );

        expect(
            SharedValue.get(
              zacContext: zacContext,
              consumeType: const SharedValueConsumeType.read(),
              family: 'foo',
            ),
            10);
      });

      testWidgets('also accepts null as provided value', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideNull(
            family: 'foo',
            child: LeakContext(
              cb: (o) => zacContext = o,
            ),
          ),
        );

        expect(
            SharedValue.get(
              zacContext: zacContext,
              consumeType: const SharedValueConsumeType.read(),
              family: 'foo',
            ),
            isNull);
      });

      testWidgets('throws if empty', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (o) => zacContext = o,
          ),
        );

        expect(
            () => SharedValue.get(
                  zacContext: zacContext,
                  consumeType: const SharedValueConsumeType.read(),
                  family: 'foo',
                ),
            throwsA(isA<AccessEmptySharedValueError>()));
      });
    });

    group('update()', () {
      testWidgets('throws if empty', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (o) => zacContext = o,
          ),
        );

        expect(() => SharedValue.update(zacContext, 'foo', (current) => 10),
            throwsA(isA<AccessEmptySharedValueError>()));
      });

      testWidgets('existing value', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideNull(
            family: 'foo',
            child: LeakContext(
              cb: (o) => zacContext = o,
            ),
          ),
        );

        SharedValue.update(zacContext, 'foo', (current) => 10);
        expect(
            SharedValue.get(
              zacContext: zacContext,
              consumeType: const SharedValueConsumeType.read(),
              family: 'foo',
            ),
            10);

        SharedValue.update(
            zacContext, 'foo', (current) => (current as int) + 10);
        expect(
            SharedValue.get(
              zacContext: zacContext,
              consumeType: const SharedValueConsumeType.read(),
              family: 'foo',
            ),
            20);
      });
    });
  });

  group('SharedValueActions', () {
    group('invalidate', () {
      testWidgets('will invalidate the provider', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideString(
            value: 'hello',
            family: 'shared',
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(ConsumeSharedValue<String>(family: 'shared')),
            ),
          ),
        );

        expect(find.text('hello'), findsOneWidget);
        SharedValue.update(zacContext, 'shared', (current) => 'world');
        await tester.pump();
        expect(find.text('hello'), findsNothing);
        expect(find.text('world'), findsOneWidget);
        SharedValueActions.invalidate(family: 'shared')
            .execute(const ZacActionPayload(), zacContext);
        await tester.pumpAndSettle();
        expect(find.text('hello'), findsOneWidget);
        expect(find.text('world'), findsNothing);
      });
    });

    group('update', () {
      testWidgets('may update the SharedValue if no payload is present',
          (tester) async {
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'family',
            child: FlutterColumn(
              children: ZacValueListSimple<Widget, List<Widget>?>([
                FlutterText(
                  ConsumeSharedValue<String>(
                    family: 'family',
                    transformer: ZacTransformers([
                      CustomTransformer(
                        (transformValue, zacContext, payload) {
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
              ]),
            ),
          ),
        );
        expect(find.text('foo'), findsOneWidget);

        await tester.pumpAndSettle();

        expect(find.text('IS NULL'), findsOneWidget);
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
              children: ZacValueListSimple<Widget, List<Widget>?>([
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
              children: ZacValueListSimple<Widget, List<Widget>?>([
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
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideObject(
            /// this value is not relevant for this test because the action will
            /// provide a new value
            value: ['ignore'],
            family: 'family',
            child: FlutterColumn(
              children: ZacValueListSimple<Widget, List<Widget>?>([
                FlutterText(ConsumeSharedValue<String>(
                  family: 'family',
                  transformer: ZacTransformers(
                      [const IterableTransformer.join(separator: ', ')]),
                )),
                LeakContext(cb: (c) => zacContext = c),
              ]),
            ),
          ),
        );

        ZacActions([
          SharedValueActions.update(
            family: 'family',
            transformer: ZacTransformers([
              IterableTransformer.map(
                  transformer: ZacTransformers([_ConcatStr('foo')]))
            ]),
          ),
        ]).build(zacContext).execute(
              ZacActionPayload.param(['a', 'b']),
              zacContext,
            );

        await tester.pumpAndSettle();

        expect(find.text('afoo, bfoo'), findsOneWidget);
      });

      testWidgets(
          'may transform child items in a List before updating the SharedValue from payload with two params',
          (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideObject(
            /// this value is not relevant for this test because the action will
            /// provide a new value
            value: [
              ['ignore'],
              ['ignore']
            ],
            family: 'family',
            child: FlutterColumn(
              children: ZacValueListSimple<Widget, List<Widget>?>([
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
                LeakContext(cb: (c) => zacContext = c),
              ]),
            ),
          ),
        );

        ZacActions([
          SharedValueActions.update(
            family: 'family',
            transformer: ZacTransformers([
              IterableTransformer.map(
                  transformer: ZacTransformers([_ConcatStr('foo')]))
            ]),
          ),
        ]).build(zacContext).execute(
              ZacActionPayload.param2(['a', 'b'], ['c', 'd']),
              zacContext,
            );

        await tester.pumpAndSettle();

        expect(find.text('afoo, bfoo'), findsOneWidget);
        expect(find.text('cfoo, dfoo'), findsOneWidget);
      });

      testWidgets(
          'may transform value items in a Map before updating the SharedValue from payload',
          (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideObject(
            /// this value is not relevant for this test because the action will
            /// provide a new value
            value: {'ignore': 'ignore'},
            family: 'family',
            child: FlutterColumn(
              children: ZacValueListSimple<Widget, List<Widget>?>([
                FlutterText(ConsumeSharedValue<String>(
                  family: 'family',
                  transformer: ZacTransformers([
                    const MapTransformer.values(),
                    const IterableTransformer.join(separator: ', ')
                  ]),
                )),
                LeakContext(cb: (c) => zacContext = c),
              ]),
            ),
          ),
        );

        ZacActions([
          SharedValueActions.update(
            family: 'family',
            transformer: ZacTransformers([
              MapTransformer.mapper(
                valueTransformer: ZacTransformers([_ConcatStr('foo')]),
              )
            ]),
          ),
        ]).build(zacContext).execute(
              ZacActionPayload.param(
                {'ignore': 'a', 'ignore2': 'b'},
              ),
              zacContext,
            );

        await tester.pumpAndSettle();

        expect(find.text('afoo, bfoo'), findsOneWidget);
      });
    });

    group('SharedValueConsumeType', () {
      testWidgets('execute transformer through provider.select() in .watch()',
          (tester) async {
        dynamic obj;

        await testZacWidget(
          tester,
          SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'shared',
            child: LeakContext(cb: (zacContext) {
              obj = SharedValue.get(
                zacContext: zacContext,
                consumeType: SharedValueConsumeType.watch(
                    select: ZacTransformers([_ConcatStr('bar')])),
                family: 'shared',
              );
            }),
          ),
        );

        expect(obj, 'foobar');
      });
    });
  });
}

class _ConcatStr implements ZacTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    return (transformValue.value as String) + str;
  }
}
