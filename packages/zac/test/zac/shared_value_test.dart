import 'package:flutter/cupertino.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/widgets/layout/container.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/flutter/widgets/text.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';
import 'shared_value_transformer_test.dart';

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
          name: 'foo',
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
          name: 'foo',
          value: 'hello',
          builder: (c) => FlutterText(
            ZacString.consume(name: 'foo', transformer: [_ConcatStr(' world')]),
          ).buildWidget(c),
        ),
      );

      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('can be consumed and then transformed #2', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          name: 'foo',
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
                'name': 'foo',
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
          name: 'foo',
          value: const ['foo', 'oof'],
          builder: (c) => LeakContext(
            cb: (c) => context = c,
          ).buildWidget(c),
        ),
      );

      expect(
          ZacList.consume(
            name: 'foo',
            transformer: [
              ListTransformer.map(transformer: [_ConcatStr('bar')])
            ],
          ).getValue(context),
          ['foobar', 'oofbar']);
    });

    group('getFilled()', () {
      testWidgets('return the provided value', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: 10,
            name: 'foo',
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
            name: 'foo',
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
            name: 'foo',
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
          name: 'shared',
          value: 'foo',
          builder: (c) => FlutterText(
            ZacString.consume(
              name: 'shared',
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
          name: 'foo',
          child: FlutterSizedBox(),
          transformer: [
            transformer,
          ],
        ),
      );

      verify(transformer.transform(
          1, argThat(isA<ZacSharedValueInteractionTypeProvide>())));
    });

    testWidgets('when consumed', (tester) async {
      late ZacBuildContext context;
      final transformer = MockTransformerCb();
      when(transformer.transform(any, any))
          .thenAnswer((i) => i.positionalArguments[0]);

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 1,
          name: 'foo',
          child: LeakContext(
            cb: (c) => context = c,
          ),
        ),
      );

      ZacInt.consume(name: 'foo', transformer: [transformer]).getValue(context);

      verify(transformer.transform(
          1, argThat(isA<ZacSharedValueInteractionTypeConsume>())));
    });

    testWidgets('in action consumed', (tester) async {
      final transformer = MockTransformerCb();
      when(transformer.transform(any, any))
          .thenAnswer((i) => i.positionalArguments[0]);

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 1,
          name: 'foo',
          child: ZacExecuteActionsBuilder.once(
            actions: ZacActions([
              UpdateSharedValue(
                name: 'foo',
                value: 2,
                transformer: [transformer],
              ),
            ]),
            child: FlutterSizedBox(),
          ),
        ),
      );

      verify(transformer.transform(
          2,
          argThat(isA<ZacSharedValueInteractionTypeAction>()
              .having((p0) => p0.current, 'current', 1))));
    });
  });
}

class _ConcatStr implements SharedValueTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    return (value as String) + str;
  }
}

class TestSharedValueInteractionType extends SharedValueInteractionType {}
