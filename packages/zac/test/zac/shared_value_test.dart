import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/widgets/_layout/sized_box/sized_box.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/zac/shared_value/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  group('Transformers', () {
    test('ConvertSharedValueTransformer', () {
      expect(
          ConvertSharedValueTransformer().transform({
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
      testWidgets('simple value', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (c) => context = c,
          ),
        );

        expect(
            SharedValue.transform(
              [_ConcatStr('bar'), _ConcatStr('baz')],
              'foo',
              context,
              SharedValueInteractionType.other(),
            ),
            equals('foobarbaz'));
      });

      testWidgets('transform List element', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (c) => context = c,
          ),
        );

        expect(
            SharedValue.transform(
              [_ConcatStr('bar'), _ConcatStr('baz')],
              ['foo', 'oof'],
              context,
              SharedValueInteractionType.other(),
            ),
            equals(['foobarbaz', 'oofbarbaz']));
      });

      testWidgets('transform Map element', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          LeakContext(
            cb: (c) => context = c,
          ),
        );

        expect(
            SharedValue.transform(
              [_ConcatStr('bar'), _ConcatStr('baz')],
              {'a': 'foo', 'b': 'oof'},
              context,
              SharedValueInteractionType.other(),
            ),
            equals({'a': 'foobarbaz', 'b': 'oofbarbaz'}));
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
