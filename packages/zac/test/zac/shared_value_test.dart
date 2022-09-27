import 'package:flutter/cupertino.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';

import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  group('SharedValue', () {
    test('provider default value', () {
      final c = ProviderContainer();
      expect(c.read(SharedValue.provider('abc')), isA<EmptySharedValue>());
    });

    testWidgets('can be transformed and provieded through SharedValueProvider',
        (tester) async {
      late ZacBuildContext context;

      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          builder: (c) {
            context = c;
            // ignore returned widget
            return const SizedBox();
          },
          family: 'foo',
          value: const <String, dynamic>{
            '_converter': 'f:1:SizedBox',
          },
          transformer: [ConvertTransformer()],
        ),
      );

      expect(
        context.ref.read(SharedValue.provider('foo')),
        isFilledSharedValue(isA<FlutterSizedBox>()),
      );
    });

    testWidgets('can be consumed and then transformed', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'foo',
          value: 'hello',
          builder: (c) => FlutterText(
            ZacString.consume('foo', transformer: [_ConcatStr(' world')]),
          ).buildWidget(c),
        ),
      );

      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('can be consumed and then transformed #2', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'foo',
          value: const {
            '_converter': 'f:1:SizedBox',
            'key': {
              '_converter': 'f:1:ValueKey',
              'value': 'FIND_ME',
            }
          },
          transformer: [ConvertTransformer()],
          builder: (c) => FlutterContainer(
            child: ZacWidget.fromJson(
              {
                '_converter': 'z:1:SharedValue.consume',
                'family': 'foo',
              },
            ),
          ).buildWidget(c),
        ),
      );

      expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    });

    testWidgets('can be consumed and then transformed #3', (tester) async {
      late ZacBuildContext context;
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'foo',
          value: const ['foo', 'oof'],
          builder: (c) => LeakContext(
            cb: (c) => context = c,
          ).buildWidget(c),
        ),
      );

      expect(
          ZacList.consume(
            'foo',
            transformer: [
              IterableTransformer.map(transformer: [_ConcatStr('bar')]),
              const IterableTransformer.toList()
            ],
          ).getValue(context),
          ['foobar', 'oofbar']);
    });

    testWidgets('nested', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'sharedA',
          value: 'a',
          builder: (c) => SharedValueProvider(
            family: 'sharedB',
            value: 'b',
            builder: (c) => SharedValueProvider(
              family: 'sharedC',
              value: 'c',
              builder: (c) => SharedValueProvider(
                family: 'sharedA',
                value: 'AA',
                builder: (c) => FlutterColumn(
                  children: ListOfZacWidget(
                    [
                      FlutterText(ZacString.consume('sharedA')),
                      FlutterText(ZacString.consume('sharedB')),
                      FlutterText(ZacString.consume('sharedC')),
                    ],
                  ),
                ).buildWidget(c),
              ),
            ),
          ),
        ),
      );

      expect(find.text('a'), findsNothing);
      expect(find.text('AA'), findsOneWidget);
      expect(find.text('b'), findsOneWidget);
      expect(find.text('c'), findsOneWidget);
    });

    group('getFilled()', () {
      testWidgets('return the provided value', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: 10,
            family: 'foo',
            child: LeakContext(
              cb: (c) => context = c,
            ),
          ),
        );

        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), context, 'foo'),
            10);
      });

      testWidgets('also accepts null as provided value', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
            family: 'foo',
            child: LeakContext(
              cb: (c) => context = c,
            ),
          ),
        );

        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), context, 'foo'),
            isNull);
      });

      testWidgets('throws if empty', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (c) => context = c,
          ),
        );

        expect(
            () => SharedValue.getFilled(
                const SharedValueConsumeType.read(), context, 'foo'),
            throwsA(isA<AccessEmptySharedValueError>()));
      });
    });

    group('update()', () {
      testWidgets('throws if empty', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (c) => context = c,
          ),
        );

        expect(() => SharedValue.update(context, 'foo', (current) => 10),
            throwsA(isA<AccessEmptySharedValueError>()));
      });

      testWidgets('existing value', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
            family: 'foo',
            child: LeakContext(
              cb: (c) => context = c,
            ),
          ),
        );

        SharedValue.update(context, 'foo', (current) => 10);
        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), context, 'foo'),
            10);

        SharedValue.update(context, 'foo', (current) => (current as int) + 10);
        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), context, 'foo'),
            20);
      });

      testWidgets('using Action', (tester) async {
        final cb = MockLeakBagCb();
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: 1,
            family: 'foo',
            child: ZacExecuteActionsBuilder.once(
              actions: ZacActions([
                UpdateSharedValueAction.replaceWith(
                  family: 'foo',
                  value: 2,
                  transformer: [LeakBagTransformer(cb)],
                ),
              ]),
              child: FlutterSizedBox(),
            ),
          ),
        );

        verify(cb(argThat(isA<Map<String, dynamic>>()
                .having((p0) => p0, 'contains SharedValue.replaceWith',
                    containsPair('SharedValue.replaceWith', 2))
                .having((p0) => p0, 'contains SharedValue.current',
                    containsPair('SharedValue.current', 1)))))
            .called(1);
      });
    });

    group('transform()', () {
      test('simple value', () {
        expect(
            [
              _ConcatStr('bar'),
              _ConcatStr('baz')
            ].transformValues(ZacTransformValue('foo'), FakeZacWidgetContext()),
            equals('foobarbaz'));
      });
    });
  });

  group('Actions', () {
    testWidgets(
        'update the SharedValue by updating/tranforming its current value',
        (tester) async {
      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 'foo',
          family: 'family',
          child: FlutterColumn(
            children: ListOfZacWidget([
              FlutterText(ZacString.consume('family')),
              ZacExecuteActionsBuilder.once(
                actions: ZacActions([
                  UpdateSharedValueAction(
                    family: 'family',
                    transformer: [_ConcatStr('oof')],
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

    testWidgets('replace the value of the SharedValue with another value',
        (tester) async {
      final cb = MockLeakBagCb();

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 'foo',
          family: 'family',
          child: FlutterColumn(
            children: ListOfZacWidget([
              FlutterText(ZacString.consume('family')),
              ZacExecuteActionsBuilder.once(
                actions: ZacActions([
                  UpdateSharedValueAction.replaceWith(
                    family: 'family',
                    value: 'bar',
                    transformer: [LeakBagTransformer(cb)],
                  ),
                ]),
                child: FlutterSizedBox(),
              ),
            ]),
          ),
        ),
      );

      await tester.pumpAndSettle();

      verify(cb(argThat(isA<Map<String, dynamic>>()
              .having((p0) => p0, 'contains SharedValue.replaceWith',
                  containsPair('SharedValue.replaceWith', 'bar'))
              .having((p0) => p0, 'contains SharedValue.current',
                  containsPair('SharedValue.current', 'foo')))))
          .called(1);

      expect(find.text('bar'), findsOneWidget);
      verifyNoMoreInteractions(cb);
    });
  });

  group('SharedValueConsumeType', () {
    testWidgets('execute transformer through provider.select() in .watch()',
        (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'shared',
          value: 'foo',
          builder: (c) => FlutterText(
            ZacString.consume(
              'shared',
              transformer: [_ConcatStr('baz')],
              consumeType:
                  SharedValueConsumeType.watch(select: [_ConcatStr('bar')]),
            ),
          ).buildWidget(c),
        ),
      );

      expect(find.text('foobarbaz'), findsOneWidget);
    });
  });
}

class _ConcatStr implements ZacTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(ZacTransformValue transformValue, ZacBuildContext context,
      ContextBag? extra) {
    return (transformValue.value as String) + str;
  }
}
