import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';

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

    testWidgets('can be provieded through SharedValueProvider', (tester) async {
      late dynamic obj;

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 55,
          family: 'foo',
          child: LeakOrigin(cb: (zacContext) {
            obj = zacContext.ref.watch(SharedValue.provider('foo'));
          }),
        ),
      );

      expect(obj, 55);
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
          child: LeakOrigin(cb: (zacContext) {
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
                child: LeakOrigin(
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
            child: LeakOrigin(
              cb: (o) => zacContext = o,
            ),
          ),
        );

        expect(
            SharedValue.get(
                const SharedValueConsumeType.read(), zacContext, 'foo'),
            10);
      });

      testWidgets('also accepts null as provided value', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: null,
            family: 'foo',
            child: LeakOrigin(
              cb: (o) => zacContext = o,
            ),
          ),
        );

        expect(
            SharedValue.get(
                const SharedValueConsumeType.read(), zacContext, 'foo'),
            isNull);
      });

      testWidgets('throws if empty', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          LeakOrigin(
            cb: (o) => zacContext = o,
          ),
        );

        expect(
            () => SharedValue.get(
                const SharedValueConsumeType.read(), zacContext, 'foo'),
            throwsA(isA<AccessEmptySharedValueError>()));
      });
    });

    group('update()', () {
      testWidgets('throws if empty', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          LeakOrigin(
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
            child: LeakOrigin(
              cb: (o) => zacContext = o,
            ),
          ),
        );

        SharedValue.update(zacContext, 'foo', (current) => 10);
        expect(
            SharedValue.get(
                const SharedValueConsumeType.read(), zacContext, 'foo'),
            10);

        SharedValue.update(
            zacContext, 'foo', (current) => (current as int) + 10);
        expect(
            SharedValue.get(
                const SharedValueConsumeType.read(), zacContext, 'foo'),
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

  group('actions', () {
    test('fromJson', () {
      ConverterHelper.convertToType<
          UpdateSharedValueInteractions>(<String, dynamic>{
        'converter': 'z:1:SharedValue.update',
        'family': 'fam',
        'transformer': <ZacTransformer>[],
      });

      ConverterHelper.convertToType<
          UpdateSharedValueInteractions>(<String, dynamic>{
        'converter': 'z:1:SharedValue.replaceWith',
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
                    value: ZacObject('bar'),
                  ),
                ]),
                child: FlutterSizedBox(),
              ),
            ]),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('bar'), findsOneWidget);
      ;
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
          child: LeakOrigin(cb: (zacContext) {
            obj = SharedValue.get(
                SharedValueConsumeType.watch(
                    select: ZacTransformers([_ConcatStr('bar')])),
                zacContext,
                'shared');
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
