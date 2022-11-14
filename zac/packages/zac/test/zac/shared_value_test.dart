import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';

import '../helper.dart';

void main() {
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
        SharedValueProviderBuilder(
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
      await tester.pumpWidget(MaterialApp(
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
      ));

      zacContext.ref.read(SharedValue.provider('shared'));

      await tester.pump();

      zacContext.ref.read(SharedValue.provider('shared'));
      expect(i, 1);
    });

    testWidgets('is not automatically kept alive', (tester) async {
      var i = 0;
      late ZacContext zacContext;
      await tester.pumpWidget(MaterialApp(
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
      ));

      zacContext.ref.read(SharedValue.provider('shared'));

      await tester.pump();

      zacContext.ref.read(SharedValue.provider('shared'));
      expect(i, 2);
    });

    testWidgets('can be transformed and provieded through SharedValueProvider',
        (tester) async {
      late dynamic obj;

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: const <String, dynamic>{
            'converter': 'f:1:SizedBox',
          },
          family: 'foo',
          child: LeakContext(cb: (zacContext) {
            obj = zacContext.ref.watch(SharedValue.provider('foo'));
          }),
          transformer: ZacTransformers([ConvertTransformer()]),
        ),
      );

      expect(
        obj,
        isSharedValue(isA<FlutterSizedBox>()),
      );
    });

    testWidgets('nested', (tester) async {
      dynamic a;
      dynamic b;
      dynamic c;
      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 'a',
          family: 'sharedA',
          child: SharedValueProviderBuilder(
            value: 'b',
            family: 'sharedB',
            child: SharedValueProviderBuilder(
              value: 'c',
              family: 'sharedC',
              child: SharedValueProviderBuilder(
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
          SharedValueProviderBuilder(
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
              select: null,
            ),
            10);
      });

      testWidgets('also accepts null as provided value', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
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
              select: null,
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
                  select: null,
                ),
            throwsA(isA<AccessEmptySharedValueError>()));
      });
    });

    testWidgets('request a typed value or throw', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 5,
          family: 'shared',
          child: LeakContext(
            cb: (o) => zacContext = o,
          ),
        ),
      );

      expect(
          SharedValue.getTyped<int>(
            zacContext: zacContext,
            consumeType: const SharedValueConsumeType.read(),
            family: 'shared',
            select: null,
          ),
          5);

      expect(
          () => SharedValue.getTyped<String>(
                zacContext: zacContext,
                consumeType: const SharedValueConsumeType.read(),
                family: 'shared',
                select: null,
              ),
          throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
              contains('The type of the SharedValue was int.'))));
    });

    testWidgets('request a typed value or throw #2', (tester) async {
      late ZacContext zacContext;
      final completer = Completer<int>();
      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: completer,
          family: 'shared',
          child: LeakContext(
            cb: (o) => zacContext = o,
          ),
        ),
      );

      expect(
          SharedValue.getTyped<Completer<int>>(
            zacContext: zacContext,
            consumeType: const SharedValueConsumeType.read(),
            family: 'shared',
            select: null,
          ),
          completer);

      expect(
          SharedValue.getTyped<Completer<Object?>>(
            zacContext: zacContext,
            consumeType: const SharedValueConsumeType.read(),
            family: 'shared',
            select: null,
          ),
          completer);

      expect(
          () => SharedValue.getTyped<Completer<String>>(
                zacContext: zacContext,
                consumeType: const SharedValueConsumeType.read(),
                family: 'shared',
                select: null,
              ),
          throwsA(isA<StateError>().having(
              (p0) => p0.message,
              'error message',
              contains(
                  'It was not possible to get a SharedValue of type Completer<String> from family "shared".'))));
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
          SharedValueProviderBuilder(
            value: null,
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
              select: null,
            ),
            10);

        SharedValue.update(
            zacContext, 'foo', (current) => (current as int) + 10);
        expect(
            SharedValue.get(
              zacContext: zacContext,
              consumeType: const SharedValueConsumeType.read(),
              family: 'foo',
              select: null,
            ),
            20);
      });
    });

    group('transform()', () {
      test('simple value', () {
        expect(
            ZacTransformers([_ConcatStr('bar'), _ConcatStr('baz')])
                .transform(ZacTransformValue('foo'), FakeZacOrigin(), null),
            equals('foobarbaz'));
      });
    });
  });

  group('SharedValueActions', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<SharedValueActions>(<String, dynamic>{
            'converter': 'z:1:SharedValue.update',
            'family': 'fam',
            'transformer': <ZacTransformer>[],
          }),
          SharedValueActions.update(
            family: 'fam',
            ifNoPayloadTakeCurrent: false,
            transformer: ZacTransformers([]),
          ));

      expect(
          ConverterHelper.convertToType<SharedValueActions>(<String, dynamic>{
            'converter': 'z:1:SharedValue.update',
            'family': 'fam',
            'ifNoPayloadTakeCurrent': true,
          }),
          SharedValueActions.update(
              family: 'fam', ifNoPayloadTakeCurrent: true));
    });

    testWidgets('may update the SharedValue if no payload is present',
        (tester) async {
      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 'foo',
          family: 'family',
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.fromJson([
              FlutterText(
                ZacValue<String>.consume(
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
        SharedValueProviderBuilder(
          value: 'foo',
          family: 'family',
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.fromJson([
              FlutterText(ZacValue<String>.consume(family: 'family')),
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
        SharedValueProviderBuilder(
          value: ['a', 'b'],
          family: 'family',
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.fromJson([
              FlutterText(ZacValue<String>.consume(
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
        SharedValueProviderBuilder(
          /// this value is not relevant for this test because the action will
          /// provide a new value
          value: ['ignore'],
          family: 'family',
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.fromJson([
              FlutterText(ZacValue<String>.consume(
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
      ]).execute(
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
        SharedValueProviderBuilder(
          /// this value is not relevant for this test because the action will
          /// provide a new value
          value: [
            ['ignore'],
            ['ignore']
          ],
          family: 'family',
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.fromJson([
              FlutterText(ZacValue<String>.consume(
                family: 'family',
                transformer: ZacTransformers([
                  const IterableTransformer.first(),
                  const IterableTransformer.join(separator: ', ')
                ]),
              )),
              FlutterText(ZacValue<String>.consume(
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
      ]).execute(
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
        SharedValueProviderBuilder(
          /// this value is not relevant for this test because the action will
          /// provide a new value
          value: {'ignore': 'ignore'},
          family: 'family',
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.fromJson([
              FlutterText(ZacValue<String>.consume(
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
      ]).execute(
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
        SharedValueProviderBuilder(
          value: 'foo',
          family: 'shared',
          child: LeakContext(cb: (zacContext) {
            obj = SharedValue.get(
              zacContext: zacContext,
              consumeType: const SharedValueConsumeType.watch(),
              family: 'shared',
              select: ZacTransformers([_ConcatStr('bar')]),
            );
          }),
        ),
      );

      expect(obj, 'foobar');
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
