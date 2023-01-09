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
import 'package:zac/src/zac/zac_builder.dart';
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
            child: ConsumeSharedValue<Widget>(family: 'shared'),
          ),
        );
      });

      testWidgets('will throw if shared value is null but null is not wanted',
          (tester) async {
        await testWithContextsWraped(
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
        await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
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
      await testWithContextsWraped(
        tester,
        (child) => SharedValueProviderBuilder.provideWidgetsMap(
          value: ZacValueMap<Widget, Map<String, Widget>>({
            'a': FlutterSizedBox(
              key: FlutterValueKey('map_child'),
            )
          }),
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          final map = ConsumeSharedValueMap<Widget, Map<String, Widget>>(
                  family: 'shared')
              .build(getContext(), getZacContext());

          expect(
              map['a'],
              isA<SizedBox>().having(
                  (p0) => p0.key, 'SizedBox.key', const ValueKey('map_child')));
        },
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
      await testWithContextsWraped(
        tester,
        (child) => SharedValueProviderBuilder.provideString(
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
                child: FlutterColumn(
                  children: ZacValueList<Widget, List<Widget>>([
                    FlutterText(ConsumeSharedValue<String>(family: 'sharedA')),
                    FlutterText(ConsumeSharedValue<String>(family: 'sharedB')),
                    FlutterText(ConsumeSharedValue<String>(family: 'sharedC')),
                    // FlutterText(data)
                  ]),
                ),
              ),
            ),
          ),
        ),
        (getContext, getZacContext) {
          expect(find.text('AA'), findsOneWidget);
          expect(find.text('b'), findsOneWidget);
          expect(find.text('c'), findsOneWidget);
        },
      );
    });

    group('get()', () {
      testWidgets('return the provided value', (tester) async {
        await testWithContextsWraped(
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
        await testWithContextsWraped(
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
        await testWithContextsWraped(
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
        await testWithContextsWraped(
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
        await testWithContextsWraped(
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
        await testWithContextsWraped(
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
            SharedValueActions.invalidate(family: 'shared')
                .build(getContext(), getZacContext())
                .execute(
                    const ZacActionPayload(), getContext(), getZacContext());
            await tester.pumpAndSettle();
            expect(find.text('hello'), findsOneWidget);
            expect(find.text('world'), findsNothing);
          },
        );
      });
    });

    group('.update()', () {
      test('Is registered', () {
        expectInRegistry('z:1:SharedValue.update', SharedValueActions.fromJson);
      });

      testWidgets('execute', (tester) async {
        await testWithContextsWraped(
          tester,
          (child) => SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>([
                FlutterText(ConsumeSharedValue(family: 'shared')),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            [
              SharedValueActions.update(
                      value: ZacValue('bar'), family: 'shared')
                  .build(getContext(), getZacContext())
            ].execute(const ZacActionPayload(), getContext(), getZacContext());

            await tester.pump();

            expect(find.text('foo'), findsNothing);
            expect(find.text('bar'), findsOneWidget);
          },
        );
      });
    });

    group('.updateWithNull()', () {
      test('Is registered', () {
        expectInRegistry('z:1:null.updateShared', SharedValueActions.fromJson);
      });

      testWidgets('execute', (tester) async {
        await testWithContextsWraped(
          tester,
          (child) => SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>([
                FlutterText(ConsumeSharedValue(
                  family: 'shared',
                  transformer: ZacValueList<ZacTransform, List<ZacTransform>>([
                    TestTransform(
                      (transformValue, context, zacContext, payload) {
                        if (transformValue.value == null) return 'IS NULL';
                        return transformValue.value;
                      },
                    )
                  ]),
                )),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            [
              SharedValueActions.updateWithNull(family: 'shared')
                  .build(getContext(), getZacContext())
            ].execute(const ZacActionPayload(), getContext(), getZacContext());

            await tester.pump();

            expect(find.text('foo'), findsNothing);
            expect(find.text('IS NULL'), findsOneWidget);
          },
        );
      });
    });

    group('.updateWithWidget()', () {
      test('Is registered', () {
        expectInRegistry(
            'z:1:Widget.updateShared', SharedValueActions.fromJson);
      });

      testWidgets('execute', (tester) async {
        await testWithContextsWraped(
          tester,
          (child) => SharedValueProviderBuilder.provideWidget(
            value: FlutterText(ZacValue('foo')),
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>([
                ConsumeSharedValue(family: 'shared'),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            [
              SharedValueActions.updateWithWidget(
                value: FlutterText(ZacValue('bar')),
                family: 'shared',
              ).build(getContext(), getZacContext())
            ].execute(const ZacActionPayload(), getContext(), getZacContext());

            await tester.pump();

            expect(find.text('foo'), findsNothing);
            expect(find.text('bar'), findsOneWidget);
          },
        );
      });
    });

    group('.updateWithWidgets()', () {
      test('Is registered', () {
        expectInRegistry(
            'z:1:List<Widget>.updateShared', SharedValueActions.fromJson);
      });

      testWidgets('execute', (tester) async {
        await testWithContextsWraped(
          tester,
          (child) => SharedValueProviderBuilder.provideWidgets(
            value: ZacValueList<Widget, List<Widget>>([
              FlutterText(ZacValue('foo')),
            ]),
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>([
                FlutterColumn(
                  children: ConsumeSharedValueList<Widget, List<Widget>>(
                    family: 'shared',
                  ),
                ),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            [
              SharedValueActions.updateWithWidgets(
                value: ZacValueList<Widget, List<Widget>>(
                    [FlutterText(ZacValue('bar'))]),
                family: 'shared',
              ).build(getContext(), getZacContext())
            ].execute(const ZacActionPayload(), getContext(), getZacContext());

            await tester.pump();

            expect(find.text('foo'), findsNothing);
            expect(find.text('bar'), findsOneWidget);
          },
        );
      });
    });

    group('.updateWithBuilder()', () {
      test('Is registered', () {
        expectInRegistry(
            'z:1:ZacBuilder<Object>.updateShared', SharedValueActions.fromJson);
      });

      testWidgets('execute', (tester) async {
        await testWithContextsWraped(
          tester,
          (child) => SharedValueProviderBuilder.provideAnyBuilder(
            value: ZacValue('foo'),
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>([
                FlutterText(ConsumeSharedValue(family: 'shared')),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            [
              SharedValueActions.updateWithBuilder(
                value: ZacValue('bar'),
                family: 'shared',
              ).build(getContext(), getZacContext())
            ].execute(const ZacActionPayload(), getContext(), getZacContext());

            await tester.pump();

            expect(find.text('foo'), findsNothing);
            expect(find.text('bar'), findsOneWidget);
          },
        );
      });
    });

    group('.transformCurrentValue()', () {
      test('Is registered', () {
        expectInRegistry('z:1:SharedValue.transformCurrentValue',
            SharedValueActions.fromJson);
      });

      testWidgets('execute action', (tester) async {
        await testWithContextsWraped(
          tester,
          (child) => SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>([
                FlutterText(ConsumeSharedValue(family: 'shared')),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            [
              SharedValueActions.transformCurrentValue(
                family: 'shared',
                transformer: ZacValueList<ZacTransform, List<ZacTransform>>([
                  TestTransform(
                    (transformValue, context, zacContext, payload) => 'bar',
                  )
                ]),
              ).build(getContext(), getZacContext())
            ].execute(const ZacActionPayload(), getContext(), getZacContext());

            await tester.pump();

            expect(find.text('foo'), findsNothing);
            expect(find.text('bar'), findsOneWidget);
          },
        );
      });
    });

    group('.updateFromPayload()', () {
      test('Is registered', () {
        expectInRegistry(
            'z:1:SharedValue.updateFromPayload', SharedValueActions.fromJson);
      });

      testWidgets('execute action', (tester) async {
        await testWithContextsWraped(
          tester,
          (child) => SharedValueProviderBuilder.provideString(
            value: 'foo',
            family: 'shared',
            child: FlutterColumn(
              children: ZacValueList<Widget, List<Widget>>([
                FlutterText(ConsumeSharedValue(family: 'shared')),
                child,
              ]),
            ),
          ),
          (getContext, getZacContext) async {
            expect(find.text('foo'), findsOneWidget);

            [
              SharedValueActions.updateFromPayload(
                family: 'shared',
                transformer: ZacValueList<ZacTransform, List<ZacTransform>>(
                    [ZacActionPayloadTransformer.toObject()]),
              ).build(getContext(), getZacContext())
            ].execute(
                ZacActionPayload.param('bar'), getContext(), getZacContext());

            await tester.pump();

            expect(find.text('foo'), findsNothing);
            expect(find.text('bar'), findsOneWidget);
          },
        );
      });
    });

    group('SharedValueConsumeType', () {
      testWidgets('execute transformer through provider.select() in .watch()',
          (tester) async {
        await testWithContextsWraped(
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
                      select: ZacValueList<ZacTransform, List<ZacTransform>>(
                          [_ConcatStr('bar')])),
                  family: 'shared',
                ),
                'foobar');
          },
        );
      });
    });
  });
}

class _ConcatStr implements ZacBuilder<ZacTransform> {
  final String str;

  _ConcatStr(this.str);

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext, ZacActionPayload? payload) {
    return (transformValue.value as String) + str;
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}
