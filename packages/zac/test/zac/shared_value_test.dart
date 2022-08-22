import 'package:flutter/cupertino.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
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
            ZacString.consume('foo', [_ConcatStr(' world')]),
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
            [
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
    });

    group('transform()', () {
      test('simple value', () {
        expect(
            SharedValue.transform(
              [_ConcatStr('bar'), _ConcatStr('baz')],
              'foo',
              TestSharedValueInteractionType(),
            ),
            equals('foobarbaz'));
      });
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
              [_ConcatStr('baz')],
              SharedValueConsumeType.watch(select: [_ConcatStr('bar')]),
            ),
          ).buildWidget(c),
        ),
      );

      expect(find.text('foobarbaz'), findsOneWidget);
    });
  });

  group('SharedValueInteractionType', () {
    test('.whenZac()', () {
      final cb = MockWhenZacCb<String>();
      final cbOrElse = MockWhenNotZacCb<String>();
      when(cb(any)).thenAnswer((_) => 'foo');
      when(cbOrElse(any)).thenAnswer((_) => 'foo');
      ZacSharedValueInteractionType.provide(context: FakeZacWidgetContext())
          .whenZac(cb, orElse: cbOrElse);
      TestSharedValueInteractionType().whenZac(cb, orElse: cbOrElse);
      verify(cb(argThat(isA<ZacSharedValueInteractionTypeProvide>())))
          .called(1);
      verify(cbOrElse(argThat(isA<TestSharedValueInteractionType>())))
          .called(1);
      verifyNoMoreInteractions(cb);
      verifyNoMoreInteractions(cbOrElse);
    });

    test('.whenZac() return value', () {
      expect(
          ZacSharedValueInteractionType.provide(context: FakeZacWidgetContext())
              .whenZac((_) => 'foo', orElse: (_) => 'bar'),
          'foo');
      expect(
          TestSharedValueInteractionType()
              .whenZac((_) => 'foo', orElse: (_) => 'bar'),
          'bar');
    });

    testWidgets('when provided', (tester) async {
      final transformer = MockTransformerCb();
      when(transformer.transform(any, any))
          .thenAnswer((i) => i.positionalArguments[0]);

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 1,
          family: 'foo',
          child: FlutterSizedBox(),
          transformer: [
            transformer,
          ],
        ),
      );

      verify(transformer.transform(ZacTransformValue(1),
          argThat(isA<ZacSharedValueInteractionTypeProvide>())));
    });

    testWidgets('when consumed', (tester) async {
      late ZacBuildContext context;
      final transformer = MockTransformerCb();
      when(transformer.transform(any, any))
          .thenAnswer((i) => i.positionalArguments[0].value);

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 1,
          family: 'foo',
          child: LeakContext(
            cb: (c) => context = c,
          ),
        ),
      );

      ZacInt.consume('foo', [transformer]).getValue(context);

      verify(transformer.transform(ZacTransformValue(1),
          argThat(isA<ZacSharedValueInteractionTypeConsume>())));
    });

    testWidgets('in action consumed', (tester) async {
      final transformer = MockTransformerCb();
      when(transformer.transform(any, any))
          .thenAnswer((i) => i.positionalArguments[0]);

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 1,
          family: 'foo',
          child: ZacExecuteActionsBuilder.once(
            actions: ZacActions([
              UpdateSharedValueAction(
                family: 'foo',
                value: 2,
                transformer: [transformer],
              ),
            ]),
            child: FlutterSizedBox(),
          ),
        ),
      );

      verify(transformer.transform(
          ZacTransformValue(2),
          argThat(isA<ZacSharedValueInteractionTypeAction>()
              .having((p0) => p0.current, 'current', 1))));
    });
  });
}

class _ConcatStr implements ZacTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(ZacTransformValue transformValue,
      SharedValueInteractionType interaction) {
    return (transformValue.value as String) + str;
  }
}

class TestSharedValueInteractionType extends SharedValueInteractionType {}
