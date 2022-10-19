import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';

import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  group('SharedValue', () {
    test('provider default value', () {
      final c = ProviderContainer();
      expect(() => c.read(SharedValue.provider('abc')),
          throwsA(isA<AccessEmptySharedValueError>()));
    });

    testWidgets('can be transformed and provieded through SharedValueProvider',
        (tester) async {
      late ZacOriginWidgetTree origin;

      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          builder: (o) {
            origin = o;
            // ignore returned widget
            return const SizedBox();
          },
          family: 'foo',
          value: const <String, dynamic>{
            '_converter': 'f:1:SizedBox',
          },
          transformer: ZacTransformers([ConvertTransformer()]),
        ),
      );

      expect(
        origin.ref.read(SharedValue.provider('foo')),
        isSharedValue(isA<FlutterSizedBox>()),
      );
    });

    testWidgets('can be consumed and then transformed', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'foo',
          value: 'hello',
          builder: (o) => FlutterText(
            ZacString.consume('foo',
                transformer: ZacTransformers([_ConcatStr(' world')])),
          ).buildWidget(o),
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
          transformer: ZacTransformers([ConvertTransformer()]),
          builder: (o) => FlutterContainer(
            child: ZacWidgetConsumerBuilder('foo'),
          ).buildWidget(o),
        ),
      );

      expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    });

    testWidgets('can be consumed and then transformed #3', (tester) async {
      late ZacOriginWidgetTree origin;
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'foo',
          value: const ['foo', 'oof'],
          builder: (ori) => LeakOrigin(
            cb: (o) => origin = o,
          ).buildWidget(ori),
        ),
      );

      expect(
          ZacList.consume(
            'foo',
            transformer: ZacTransformers([
              IterableTransformer.map(
                  transformer: ZacTransformers([_ConcatStr('bar')])),
              const IterableTransformer.toList()
            ]),
          ).getValue(origin),
          ['foobar', 'oofbar']);
    });

    testWidgets('nested', (tester) async {
      await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          family: 'sharedA',
          value: 'a',
          builder: (o) => SharedValueProvider(
            family: 'sharedB',
            value: 'b',
            builder: (o) => SharedValueProvider(
              family: 'sharedC',
              value: 'c',
              builder: (o) => SharedValueProvider(
                family: 'sharedA',
                value: 'AA',
                builder: (o) => FlutterColumn(
                  children: ListOfZacWidget(
                    [
                      FlutterText(ZacString.consume('sharedA')),
                      FlutterText(ZacString.consume('sharedB')),
                      FlutterText(ZacString.consume('sharedC')),
                    ],
                  ),
                ).buildWidget(o),
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
        late ZacOriginWidgetTree origin;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: 10,
            family: 'foo',
            child: LeakOrigin(
              cb: (o) => origin = o,
            ),
          ),
        );

        expect(
            SharedValue.get(const SharedValueConsumeType.read(), origin, 'foo'),
            10);
      });

      testWidgets('also accepts null as provided value', (tester) async {
        late ZacOriginWidgetTree origin;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
            family: 'foo',
            child: LeakOrigin(
              cb: (o) => origin = o,
            ),
          ),
        );

        expect(
            SharedValue.get(const SharedValueConsumeType.read(), origin, 'foo'),
            isNull);
      });

      testWidgets('throws if empty', (tester) async {
        late ZacOriginWidgetTree origin;
        await testZacWidget(
          tester,
          LeakOrigin(
            cb: (o) => origin = o,
          ),
        );

        expect(
            () => SharedValue.get(
                const SharedValueConsumeType.read(), origin, 'foo'),
            throwsA(isA<AccessEmptySharedValueError>()));
      });
    });

    group('update()', () {
      testWidgets('throws if empty', (tester) async {
        late ZacOriginWidgetTree origin;
        await testZacWidget(
          tester,
          LeakOrigin(
            cb: (o) => origin = o,
          ),
        );

        expect(() => SharedValue.update(origin, 'foo', (current) => 10),
            throwsA(isA<AccessEmptySharedValueError>()));
      });

      testWidgets('existing value', (tester) async {
        late ZacOriginWidgetTree origin;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
            family: 'foo',
            child: LeakOrigin(
              cb: (o) => origin = o,
            ),
          ),
        );

        SharedValue.update(origin, 'foo', (current) => 10);
        expect(
            SharedValue.get(const SharedValueConsumeType.read(), origin, 'foo'),
            10);

        SharedValue.update(origin, 'foo', (current) => (current as int) + 10);
        expect(
            SharedValue.get(const SharedValueConsumeType.read(), origin, 'foo'),
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
                UpdateSharedValueInteractions.replaceWith(
                  family: 'foo',
                  value: 2,
                  transformer: ZacTransformers([LeakBagTransformer(cb)]),
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
            ZacTransformers([_ConcatStr('bar'), _ConcatStr('baz')])
                .transform(ZacTransformValue('foo'), FakeZacOrigin()),
            equals('foobarbaz'));
      });
    });
  });

  group('actions', () {
    test('fromJson', () {
      ConverterHelper.convertToType<
          UpdateSharedValueInteractions>(<String, dynamic>{
        '_converter': 'z:1:SharedValue.update',
        'family': 'fam',
        'transformer': <ZacTransformer>[],
      });

      ConverterHelper.convertToType<
          UpdateSharedValueInteractions>(<String, dynamic>{
        '_converter': 'z:1:SharedValue.replaceWith',
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
                actions: ZacActions([
                  UpdateSharedValueInteractions(
                    family: 'family',
                    transformer: ZacTransformers([_ConcatStr('oof')]),
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
                  UpdateSharedValueInteractions.replaceWith(
                    family: 'family',
                    value: 'bar',
                    transformer: ZacTransformers([LeakBagTransformer(cb)]),
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
          builder: (o) => FlutterText(
            ZacString.consume(
              'shared',
              transformer: ZacTransformers([_ConcatStr('baz')]),
              consumeType: SharedValueConsumeType.watch(
                  select: ZacTransformers([_ConcatStr('bar')])),
            ),
          ).buildWidget(o),
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
      ZacTransformValue transformValue, ZacOrigin origin, ContextBag? extra) {
    return (transformValue.value as String) + str;
  }
}
