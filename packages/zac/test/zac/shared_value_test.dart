import 'package:flutter/cupertino.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/widgets/_layout/container/container.dart';
import 'package:zac/src/flutter/widgets/_layout/sized_box/sized_box.dart';
import 'package:zac/src/flutter/widgets/text/text.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/zac/shared_value/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/shared_value/transformers.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  group('Transformers', () {
    test('ConvertSharedValueTransformer', () {
      expect(
          ConvertTransformer().transform({
            '_converter': 'f:1:SizedBox',
          }, SharedValueInteractionType.other()),
          FlutterSizedBox());
    });
  });

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
              SharedValueInteractionType.other(),
            ),
            equals('foobarbaz'));
      });
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
