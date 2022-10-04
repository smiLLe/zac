import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
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
      late WidgetRef ref;

      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          builder: (c, r, lifetime) {
            ref = r;
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
        ref.read(SharedValue.provider('foo')),
        isFilledSharedValue(isA<FlutterSizedBox>()),
      );
    });

    testWidgets('can be consumed and then transformed', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'foo',
          value: 'hello',
          builder: (c, ref, lifetime) => FlutterText(
            ZacString.consume('foo', transformer: [_ConcatStr(' world')]),
          ).buildWidget(c, ref, lifetime),
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
          builder: (c, ref, lifetime) => FlutterContainer(
            child: ZacWidgetConsumerBuilder('foo'),
          ).buildWidget(c, ref, lifetime),
        ),
      );

      expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    });

    testWidgets('can be consumed and then transformed #3', (tester) async {
      late WidgetRef ref;
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'foo',
          value: const ['foo', 'oof'],
          builder: (c, ref2, lifetime) => LeakContext(
            cb: (_, r, __) => ref = r,
          ).buildWidget(c, ref2, lifetime),
        ),
      );

      expect(
          ZacList.consume(
            'foo',
            transformer: [
              IterableTransformer.map(transformer: [_ConcatStr('bar')]),
              const IterableTransformer.toList()
            ],
          ).getValue(ZacRef.widget(ref)),
          ['foobar', 'oofbar']);
    });

    testWidgets('nested', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'sharedA',
          value: 'a',
          builder: (c, ref, lifetime) => SharedValueProvider(
            family: 'sharedB',
            value: 'b',
            builder: (c, ref, lifetime) => SharedValueProvider(
              family: 'sharedC',
              value: 'c',
              builder: (c, ref, lifetime) => SharedValueProvider(
                family: 'sharedA',
                value: 'AA',
                builder: (c, ref, lifetime) => FlutterColumn(
                  children: ListOfZacWidget(
                    [
                      FlutterText(ZacString.consume('sharedA')),
                      FlutterText(ZacString.consume('sharedB')),
                      FlutterText(ZacString.consume('sharedC')),
                    ],
                  ),
                ).buildWidget(c, ref, lifetime),
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
        late WidgetRef ref;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: 10,
            family: 'foo',
            child: LeakContext(
              cb: (_, r, __) => ref = r,
            ),
          ),
        );

        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), ZacRef.widget(ref), 'foo'),
            10);
      });

      testWidgets('also accepts null as provided value', (tester) async {
        late WidgetRef ref;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
            family: 'foo',
            child: LeakContext(
              cb: (_, r, __) => ref = r,
            ),
          ),
        );

        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), ZacRef.widget(ref), 'foo'),
            isNull);
      });

      testWidgets('throws if empty', (tester) async {
        late WidgetRef ref;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (_, r, __) => ref = r,
          ),
        );

        expect(
            () => SharedValue.getFilled(
                const SharedValueConsumeType.read(), ZacRef.widget(ref), 'foo'),
            throwsA(isA<AccessEmptySharedValueError>()));
      });
    });

    group('update()', () {
      testWidgets('throws if empty', (tester) async {
        late WidgetRef ref;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (_, r, __) => ref = r,
          ),
        );

        expect(
            () =>
                SharedValue.update(ZacRef.widget(ref), 'foo', (current) => 10),
            throwsA(isA<AccessEmptySharedValueError>()));
      });

      testWidgets('existing value', (tester) async {
        late WidgetRef ref;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
            family: 'foo',
            child: LeakContext(
              cb: (_, r, __) => ref = r,
            ),
          ),
        );

        SharedValue.update(ZacRef.widget(ref), 'foo', (current) => 10);
        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), ZacRef.widget(ref), 'foo'),
            10);

        SharedValue.update(
            ZacRef.widget(ref), 'foo', (current) => (current as int) + 10);
        expect(
            SharedValue.getFilled(
                const SharedValueConsumeType.read(), ZacRef.widget(ref), 'foo'),
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
              interactions: ZacInteractions([
                UpdateSharedValueInteractions.replaceWith(
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
            [_ConcatStr('bar'), _ConcatStr('baz')]
                .transformValues(ZacTransformValue('foo'), FakeZacRef()),
            equals('foobarbaz'));
      });
    });
  });

  group('Interactions', () {
    test('fromJson', () {
      ConverterHelper.convertToType<
          UpdateSharedValueInteractions>(<String, dynamic>{
        '_converter': 'z:1:Interaction:SharedValue.update',
        'family': 'fam',
        'transformer': <ZacTransformer>[],
      });

      ConverterHelper.convertToType<
          UpdateSharedValueInteractions>(<String, dynamic>{
        '_converter': 'z:1:Interaction:SharedValue.replaceWith',
        'family': 'fam',
        'value': 1,
        'transformer': <ZacTransformer>[],
      });
    });
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
                interactions: ZacInteractions([
                  UpdateSharedValueInteractions(
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
                interactions: ZacInteractions([
                  UpdateSharedValueInteractions.replaceWith(
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
          builder: (c, ref, lifetime) => FlutterText(
            ZacString.consume(
              'shared',
              transformer: [_ConcatStr('baz')],
              consumeType:
                  SharedValueConsumeType.watch(select: [_ConcatStr('bar')]),
            ),
          ).buildWidget(c, ref, lifetime),
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
  Object? transform(
      ZacTransformValue transformValue, ZacRef ref, ContextBag? extra) {
    return (transformValue.value as String) + str;
  }
}
