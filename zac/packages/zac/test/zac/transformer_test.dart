import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/state.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';

Future<void> _testTransformer(
  WidgetTester tester, {
  required ZacBuilder<ZacTransform> transformer,
  required Object? equals,
  Object? inputValue,
}) async {
  await testWithContexts(tester, (getContext, getZacContext) {
    expect(
        [transformer.build(getContext(), getZacContext())]
            .transform(getContext(), getZacContext(), inputValue),
        equals);
  });
}

void main() {
  test('ZacTransformValue in registry', () {
    expectInRegistry(
        ['z:1:TransformValue.current', 'z:1:TransformValue.initial'],
        ZacTransformValue.fromRegister);
  });

  testWidgets(
      'ZacTransformValue offers current and initial value to be consumed',
      (tester) async {
    final cur1 = expectAsync1((p0) => expect(p0, 'hello'));
    final cur2 = expectAsync1((p0) => expect(p0, 'hello world'));
    final init = expectAsync1((p0) => expect(p0, 'hello'));
    await testWithContexts(tester, (getContext, getZacContext) async {
      expect(
        [
          TestTransform((context, zacContext) {
            final cur =
                ZacTransformValue<String>.current().build(context, zacContext);
            cur1(cur);
            return '$cur world';
          }).build(getContext(), getZacContext()),
          TestTransform((context, zacContext) {
            final cur =
                ZacTransformValue<String>.current().build(context, zacContext);
            cur2(cur);
            return 'foo';
          }).build(getContext(), getZacContext()),
          TestTransform((context, zacContext) {
            final initial =
                ZacTransformValue<Object?>.initial().build(context, zacContext);
            init(initial);
            return ZacTransformValue<String>.current()
                .build(context, zacContext);
          }).build(getContext(), getZacContext()),
        ].transform(getContext(), getZacContext(), 'hello'),
        'foo',
      );
    });
  });

  testWidgets('Other values can be shared during transformation',
      (tester) async {
    final other1 = expectAsync1((p0) => expect(p0, 'a'));
    final other2 = expectAsync1((p0) => expect(p0, 1));
    await testWithContexts(tester, (getContext, getZacContext) async {
      [
        TestTransform((context, zacContext) {
          other1(ZacStateConsume<String>(family: 'key1')
              .build(context, zacContext));
          other2(
              ZacStateConsume<int>(family: 'key2').build(context, zacContext));
          return '';
        }).build(getContext(), getZacContext()),
      ].transform(getContext(), getZacContext(), null, otherValues: {
        'key1': 'a',
        'key2': 1,
      });
    });
  });

  group('Iterable', () {
    testWidgets('.map()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.map(
          iterable: ZacTransformValue<List<Object?>>.current(),
          transformer: ZacListOfTransformers([
            TestTransform(
              (context, zacContext) {
                final val = ZacTransformValue<Object?>.current()
                    .build(context, zacContext);
                return (val as int) + 1;
              },
            )
          ]),
        ),
        inputValue: <Object?>[1, 2],
        equals: [2, 3],
      );
    });

    testWidgets('.first', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.first(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1, 2],
        equals: 1,
      );
    });

    testWidgets('.last', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.last(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1, 2],
        equals: 2,
      );
    });

    testWidgets('.single', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.single(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1],
        equals: 1,
      );
    });

    testWidgets('.length', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.length(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1, 2],
        equals: 2,
      );
    });

    testWidgets('.isEmpty', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.isEmpty(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[],
        equals: isTrue,
      );
    });

    testWidgets('.isNotEmpty', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.isNotEmpty(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1, 2],
        equals: isTrue,
      );
    });

    testWidgets('.toList', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.toList(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1, 2],
        equals: isA<List<Object?>>(),
      );
    });

    testWidgets('.toSet', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.toSet(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1, 2],
        equals: {1, 2},
      );
    });

    testWidgets('.toString()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.toString(
          ZacTransformValue<List<Object?>>.current(),
        ),
        inputValue: <Object?>[1],
        equals: '[1]',
      );
    });

    testWidgets('.join()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.join(
            ZacTransformValue<List<Object?>>.current(),
            separator: '.'),
        inputValue: <Object?>[1, 2],
        equals: '1.2',
      );
    });

    testWidgets('.contains()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.contains(
            ZacTransformValue<List<Object?>>.current(), ZacObject(1)),
        inputValue: <Object?>[1, 2],
        equals: isTrue,
      );
    });

    testWidgets('.elementAt()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.elementAt(
            ZacTransformValue<List<Object?>>.current(), 1),
        inputValue: <Object?>[1, 2],
        equals: 2,
      );
    });

    testWidgets('.skip()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.skip(
            ZacTransformValue<List<Object?>>.current(), 1),
        inputValue: <Object?>[1, 2],
        equals: [2],
      );
    });

    testWidgets('.take()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IterableTransformer.take(
            ZacTransformValue<List<Object?>>.current(), 1),
        inputValue: <Object?>[1, 2],
        equals: [1],
      );
    });
  });

  group('List', () {
    testWidgets('.reversed', (tester) async {
      await _testTransformer(
        tester,
        transformer: ListTransformer.reversed(
            ZacTransformValue<List<Object?>>.current()),
        inputValue: <Object?>[1, 2],
        equals: [2, 1],
      );
    });

    testWidgets('.add', (tester) async {
      await _testTransformer(
        tester,
        transformer: ListTransformer.add(
            ZacTransformValue<List<Object?>>.current(), ZacInt(1)),
        inputValue: <Object?>[],
        equals: [1],
      );
      await _testTransformer(
        tester,
        transformer: ListTransformer.add(
            ZacTransformValue<List<Object?>>.current(), ZacInt(1)),
        inputValue: <Object?>[],
        equals: isA<List<Object?>>(),
      );
    });
  });

  group('Map', () {
    testWidgets('.values', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.values(
            ZacTransformValue<Map<Object?, Object?>>.current()),
        inputValue: <String, dynamic>{'foo': 1, 'bar': 2},
        equals: [1, 2],
      );
    });

    testWidgets('.keys', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.keys(
            ZacTransformValue<Map<Object?, Object?>>.current()),
        inputValue: <String, dynamic>{'foo': 1, 'bar': 2},
        equals: ['foo', 'bar'],
      );
    });

    testWidgets('.entries', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.entries(
            ZacTransformValue<Map<Object?, Object?>>.current()),
        inputValue: <String, dynamic>{'foo': 1, 'bar': 2},
        equals: isA<Iterable<MapEntry<String, dynamic>>>(),
      );
    });

    testWidgets('.length', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.length(
            ZacTransformValue<Map<Object?, Object?>>.current()),
        inputValue: <String, dynamic>{'foo': 1, 'bar': 2},
        equals: 2,
      );
    });

    testWidgets('.isEmpty', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.isEmpty(
            ZacTransformValue<Map<Object?, Object?>>.current()),
        inputValue: <String, dynamic>{},
        equals: isTrue,
      );
    });

    testWidgets('.isNotEmpty', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.isNotEmpty(
            ZacTransformValue<Map<Object?, Object?>>.current()),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: isTrue,
      );
    });

    testWidgets('.containsKey', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.containsKey(
            ZacTransformValue<Map<Object?, Object?>>.current(),
            ZacString('someKey')),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: isTrue,
      );
    });

    testWidgets('.containsValue', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.containsValue(
            ZacTransformValue<Map<Object?, Object?>>.current(),
            ZacString('someValue')),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: isTrue,
      );
    });

    testWidgets('.map', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.mapper(
          fromMap: ZacTransformValue<Map<Object?, Object?>>.current(),
          keyTransformer: ZacListOfTransformers([
            TestTransform((context, zacContext) {
              final str = ZacTransformValue<Object?>.current()
                  .build(context, zacContext);
              return '$str.foo';
            })
          ]),
          valueTransformer: ZacListOfTransformers([
            TestTransform((context, zacContext) {
              final str = ZacTransformValue<Object?>.current()
                  .build(context, zacContext);
              return '$str.foo';
            })
          ]),
        ),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: <String, dynamic>{
          'someKey.foo': 'someValue.foo',
        },
      );
    });

    testWidgets('.from() of type <Object, Object>', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.fromObjectObject(
          ZacTransformValue<Map<Object?, Object?>>.current(),
        ),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: isA<Map<Object, Object>>(),
      );
    });

    testWidgets('.from() of type <String, Object?>', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.fromStringNullObject(
          ZacTransformValue<Map<Object?, Object?>>.current(),
        ),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: isA<Map<String, Object?>>(),
      );
    });

    testWidgets('.from() of type <String, Object>', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.fromStringObject(
          ZacTransformValue<Map<Object?, Object?>>.current(),
        ),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: isA<Map<String, Object>>(),
      );
    });

    testWidgets('get value in map from key', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.key(
          ZacTransformValue<Map<Object?, Object?>>.current(),
          ZacBuilder<String>.fromJson('someKey'),
        ),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: 'someValue',
      );
    });

    testWidgets('set value in map for key', (tester) async {
      await _testTransformer(
        tester,
        transformer: MapTransformer.setValueForKey(
          fromMap: ZacTransformValue<Map<Object?, Object?>>.current(),
          key: ZacBuilder<String>.fromJson('someKey'),
          value: ZacBuilder<Object>.fromJson('hello'),
        ),
        inputValue: <String, dynamic>{
          'someKey': 'someValue',
        },
        equals: <String, dynamic>{
          'someKey': 'hello',
        },
      );
    });
  });

  group('Object', () {
    testWidgets('.isList()', (tester) async {
      await _testTransformer(
        tester,
        transformer:
            ObjectTransformer.isList(ZacTransformValue<Object?>.current()),
        equals: isTrue,
        inputValue: <Object?>[],
      );
    });

    testWidgets('.isMap()', (tester) async {
      await _testTransformer(
        tester,
        transformer:
            ObjectTransformer.isMap(ZacTransformValue<Object?>.current()),
        equals: isTrue,
        inputValue: <String, dynamic>{},
      );
    });

    testWidgets('.isBool()', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isBool(ZacBool(false)),
        equals: isTrue,
      );
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isBool(ZacString('a')),
        equals: isFalse,
      );
    });

    testWidgets('.isString()', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isString(ZacString('a')),
        equals: isTrue,
      );

      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isString(ZacDouble(5.0)),
        equals: isFalse,
      );
    });

    testWidgets('.isDouble()', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isDouble(ZacDouble(5.0)),
        equals: isTrue,
      );

      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isDouble(ZacString('a')),
        equals: isFalse,
      );
    });

    testWidgets('.isInt()', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isInt(ZacInt(5)),
        equals: isTrue,
      );

      await _testTransformer(
        tester,
        transformer: ObjectTransformer.isInt(ZacString('a')),
        equals: isFalse,
      );
    });

    testWidgets('.isNull()', (tester) async {
      await _testTransformer(
        tester,
        transformer:
            ObjectTransformer.isNull(ZacTransformValue<Object?>.current()),
        equals: isTrue,
        inputValue: null,
      );
    });

    testWidgets('.equals()', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.equals(
            object: ZacObject('a'), other: ZacObject('a')),
        equals: isTrue,
      );
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.equals(
            object: ZacObject('a'), other: ZacObject('b')),
        equals: isFalse,
      );
    });

    testWidgets('.hashCode', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.hashCode(ZacObject('a')),
        equals: 'a'.hashCode,
      );
    });

    testWidgets('.runtimeType', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.runtimeType(ZacObject('a')),
        equals: 'a'.runtimeType,
      );
    });

    testWidgets('.toString()', (tester) async {
      await _testTransformer(
        tester,
        transformer: ObjectTransformer.toString(ZacObject('a')),
        equals: 'a',
      );
    });
  });

  group('Num', () {
    testWidgets('.toDouble()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.toDouble(ZacNum(5)),
        equals: 5.0,
      );
    });

    testWidgets('.toInt()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.toInt(ZacNum(5.0)),
        equals: 5,
      );
    });

    testWidgets('.abs()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.abs(ZacNum(-2.5)),
        equals: 2.5,
      );
    });

    testWidgets('.ceil()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.ceil(ZacNum(2.5)),
        equals: 3,
      );
    });

    testWidgets('.ceilToDouble()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.ceilToDouble(ZacNum(2.5)),
        equals: 3.0,
      );
    });

    testWidgets('.floor()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.floor(ZacNum(2.5)),
        equals: 2,
      );
    });

    testWidgets('.floorToDouble()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.floorToDouble(ZacNum(2.5)),
        equals: 2.0,
      );
    });

    testWidgets('.round()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.round(ZacNum(2.5)),
        equals: 3,
      );
    });

    testWidgets('.roundToDouble()', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.roundToDouble(ZacNum(2.5)),
        equals: 3.0,
      );
    });

    testWidgets('.isFinite', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.isFinite(ZacNum(1)),
        equals: isTrue,
      );
    });

    testWidgets('.isInfinite', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.isInfinite(ZacNum(double.infinity)),
        equals: isTrue,
      );
    });

    testWidgets('.isNan', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.isNan(ZacNum(double.nan)),
        equals: isTrue,
      );
    });

    testWidgets('.isNegative', (tester) async {
      await _testTransformer(
        tester,
        transformer: NumTransformer.isNegative(ZacNum(-1.0)),
        equals: isTrue,
      );
    });
  });

  group('Int', () {
    testWidgets('.parse()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IntTransformer.parse(ZacString('5')),
        equals: 5,
      );
    });

    testWidgets('.tryParse()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IntTransformer.tryParse(ZacString('5')),
        equals: 5,
      );

      await _testTransformer(
        tester,
        transformer: IntTransformer.tryParse(ZacString('no')),
        equals: isNull,
      );
    });

    testWidgets('.operatorPlusPlus()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IntTransformer.incr(ZacInt(1), ZacInt(2)),
        equals: 3,
      );
    });

    testWidgets('.operatorMinusMinus()', (tester) async {
      await _testTransformer(
        tester,
        transformer: IntTransformer.decr(ZacInt(1), ZacInt(2)),
        equals: -1,
      );
    });
  });

  group('String', () {
    testWidgets('.length', (tester) async {
      await _testTransformer(
        tester,
        transformer: StringTransformer.length(ZacString('foo')),
        equals: 3,
      );
    });

    testWidgets('.split()', (tester) async {
      await _testTransformer(
        tester,
        transformer: StringTransformer.split(
            string: ZacString('a,b'), pattern: ZacString(',')),
        equals: ['a', 'b'],
      );
    });

    testWidgets('.isEmpty', (tester) async {
      await _testTransformer(
        tester,
        transformer: StringTransformer.isEmpty(ZacString('')),
        equals: isTrue,
      );
    });

    testWidgets('.isNotEmpty', (tester) async {
      await _testTransformer(
        tester,
        transformer: StringTransformer.isNotEmpty(ZacString('a')),
        equals: isTrue,
      );
    });

    testWidgets('.replaceAll()', (tester) async {
      await _testTransformer(
        tester,
        transformer: StringTransformer.replaceAll(
            ZacString('xxfooxx'), ZacString('xx'), ZacString('yy')),
        equals: 'yyfooyy',
      );
    });
  });

  group('Json', () {
    testWidgets('.encode()', (tester) async {
      await _testTransformer(
        tester,
        transformer: JsonTransformer.encode(ZacObject(['foo', 'bar'])),
        equals: '["foo","bar"]',
      );
    });

    testWidgets('.decode()', (tester) async {
      await _testTransformer(
        tester,
        transformer: JsonTransformer.decode(ZacString('["foo", "bar"]')),
        equals: ['foo', 'bar'],
      );
    });
  });

  group('Bool', () {
    testWidgets('.negate()', (tester) async {
      await _testTransformer(
        tester,
        transformer: BoolTransformer.negate(ZacBool(false)),
        equals: isTrue,
      );
    });
  });
}
