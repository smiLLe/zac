import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';

import '../helper.dart';

void _expectFromJson<T>({
  required T Function(Map<String, dynamic> json) fromJson,
  required String converter,
  required Object equals,
  Map<String, dynamic>? props,
}) {
  expect(
      ConverterHelper.convertToType<T>(<String, dynamic>{
        'converter': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
  expect(
      fromJson(<String, dynamic>{
        'converter': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
}

void main() {
  test('Convert', () {
    expect(
        ConvertTransformer().transform(
            ZacTransformValue({
              'converter': 'f:1:SizedBox',
            }),
            FakeZacOrigin(),
            null),
        FlutterSizedBox());
  });

  group('Iterable', () {
    test('.map()', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.map',
        equals: IterableTransformer.map(transformer: ZacTransformers([])),
        props: <String, dynamic>{
          'transformer': <Map<String, dynamic>>[],
        },
      );

      expect(
          IterableTransformer.map(transformer: ZacTransformers([])).transform(
              ZacTransformValue(['foo', 'oof']), FakeZacOrigin(), null),
          isA<Iterable<Object?>>());

      expect(
          IterableTransformer.map(
                  transformer: ZacTransformers([_ConcatStr('bar')]))
              .transform(
                  ZacTransformValue(['foo', 'oof']), FakeZacOrigin(), null),
          ['foobar', 'oofbar']);

      expect(
          () => IterableTransformer.map(
                  transformer: ZacTransformers([_ConcatStr('bar')]))
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.first', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.first',
        equals: const IterableTransformer.first(),
      );

      expect(
          const IterableTransformer.first().transform(
              ZacTransformValue(['foo', 'oof']), FakeZacOrigin(), null),
          'foo');

      expect(
          () => const IterableTransformer.first()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.last', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.last',
        equals: const IterableTransformer.last(),
      );

      expect(
          const IterableTransformer.last().transform(
              ZacTransformValue(['foo', 'oof']), FakeZacOrigin(), null),
          'oof');

      expect(
          () => const IterableTransformer.first()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.single', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.single',
        equals: const IterableTransformer.single(),
      );

      expect(
          const IterableTransformer.single()
              .transform(ZacTransformValue(['foo']), FakeZacOrigin(), null),
          'foo');

      expect(
          () => const IterableTransformer.single().transform(
              ZacTransformValue(['foo', 'oof']), FakeZacOrigin(), null),
          throwsStateError);

      expect(
          () => const IterableTransformer.first()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.length', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.length',
        equals: const IterableTransformer.length(),
      );

      expect(
          const IterableTransformer.length().transform(
              ZacTransformValue(['foo', 'foo', 'foo', 'foo']),
              FakeZacOrigin(),
              null),
          4);

      expect(
          () => const IterableTransformer.first()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isEmpty', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isEmpty',
        equals: const IterableTransformer.isEmpty(),
      );

      expect(
          const IterableTransformer.isEmpty()
              .transform(ZacTransformValue(['foo']), FakeZacOrigin(), null),
          isFalse);

      expect(
          const IterableTransformer.isEmpty()
              .transform(ZacTransformValue(<dynamic>[]), FakeZacOrigin(), null),
          isTrue);

      expect(
          () => const IterableTransformer.isEmpty()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isNotEmpty', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isNotEmpty',
        equals: const IterableTransformer.isNotEmpty(),
      );

      expect(
          const IterableTransformer.isNotEmpty()
              .transform(ZacTransformValue(['foo']), FakeZacOrigin(), null),
          isTrue);

      expect(
          const IterableTransformer.isNotEmpty()
              .transform(ZacTransformValue(<dynamic>[]), FakeZacOrigin(), null),
          isFalse);

      expect(
          () => const IterableTransformer.isNotEmpty()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.toList', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toList',
        equals: const IterableTransformer.toList(),
      );

      expect(
          const IterableTransformer.toList().transform(
              ZacTransformValue(<String>{'foo'}), FakeZacOrigin(), null),
          isA<List<Object?>>());

      expect(
          () => const IterableTransformer.toList()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.toSet', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toSet',
        equals: const IterableTransformer.toSet(),
      );

      expect(
          const IterableTransformer.toSet().transform(
              ZacTransformValue(<String>['foo']), FakeZacOrigin(), null),
          isA<Set<Object?>>());

      expect(
          () => const IterableTransformer.toSet()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.toString()', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toString',
        equals: const IterableTransformer.toString(),
      );

      expect(
          const IterableTransformer.toString().transform(
              ZacTransformValue(<String>['foo']), FakeZacOrigin(), null),
          equals('[foo]'));

      expect(
          () => const IterableTransformer.toString()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.join()', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.join',
        equals: const IterableTransformer.join(),
      );

      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.join',
          equals: const IterableTransformer.join(separator: '##'),
          props: <String, dynamic>{
            'separator': '##',
          });

      expect(
          const IterableTransformer.join().transform(
              ZacTransformValue(<String>['foo', 'bar']), FakeZacOrigin(), null),
          equals('foobar'));

      expect(
          () => const IterableTransformer.join()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    testWidgets('.contains()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.contains',
        equals: IterableTransformer.contains(ZacValue<Object>.fromJson('foo')),
        props: <String, dynamic>{
          'element': 'foo',
        },
      );

      expect(
          () => IterableTransformer.contains(ZacValue<Object>.fromJson('foo'))
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));

      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (o) => zacContext = o));

      expect(
          IterableTransformer.contains(ZacValue<Object>.fromJson('foo'))
              .transform(
                  ZacTransformValue(<String>['foo', 'bar']), zacContext, null),
          isTrue);
    });

    test('.elementAt()', () {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.elementAt',
          equals: const IterableTransformer.elementAt(1),
          props: <String, dynamic>{
            'index': 1,
          });

      expect(
          const IterableTransformer.elementAt(1).transform(
              ZacTransformValue(<String>['foo', 'bar']), FakeZacOrigin(), null),
          equals('bar'));

      expect(
          () => const IterableTransformer.elementAt(1)
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.skip()', () {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.skip',
          equals: const IterableTransformer.skip(1),
          props: <String, dynamic>{
            'count': 1,
          });

      expect(
          const IterableTransformer.skip(1).transform(
              ZacTransformValue(<String>['foo', 'bar']), FakeZacOrigin(), null),
          ['bar']);

      expect(
          () => const IterableTransformer.skip(1)
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.take()', () {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.take',
          equals: const IterableTransformer.take(2),
          props: <String, dynamic>{
            'count': 2,
          });

      expect(
          const IterableTransformer.take(2).transform(
              ZacTransformValue(<String>['foo', 'bar']), FakeZacOrigin(), null),
          ['foo', 'bar']);

      expect(
          () => const IterableTransformer.take(2)
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });
  });

  group('List', () {
    test('.reversed', () {
      _expectFromJson<ListTransformer>(
        fromJson: ListTransformer.fromJson,
        converter: 'z:1:Transformer:List.reversed',
        equals: const ListTransformer.reversed(),
      );

      expect(
          const ListTransformer.reversed().transform(
              ZacTransformValue(<String>['foo', 'bar']), FakeZacOrigin(), null),
          ['bar', 'foo']);

      expect(
          () => const ListTransformer.reversed()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });
  });

  group('Map', () {
    test('.values', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.values',
        equals: const MapTransformer.values(),
      );

      expect(
          const MapTransformer.values().transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              FakeZacOrigin(),
              null),
          [1, 2]);

      expect(
          () => const MapTransformer.values()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.keys', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.keys',
        equals: const MapTransformer.keys(),
      );

      expect(
          const MapTransformer.keys().transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              FakeZacOrigin(),
              null),
          ['foo', 'bar']);

      expect(
          () => const MapTransformer.keys()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.entries', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.entries',
        equals: const MapTransformer.entries(),
      );

      expect(
          const MapTransformer.entries().transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              FakeZacOrigin(),
              null),
          isA<Iterable<MapEntry<String, dynamic>>>());

      expect(
          () => const MapTransformer.entries()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.length', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.length',
        equals: const MapTransformer.length(),
      );

      expect(
          const MapTransformer.length().transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              FakeZacOrigin(),
              null),
          2);

      expect(
          () => const MapTransformer.length()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isEmpty', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.isEmpty',
        equals: const MapTransformer.isEmpty(),
      );

      expect(
          const MapTransformer.isEmpty().transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              FakeZacOrigin(),
              null),
          isFalse);

      expect(
          const MapTransformer.isEmpty().transform(
              ZacTransformValue(<String, dynamic>{}), FakeZacOrigin(), null),
          isTrue);

      expect(
          () => const MapTransformer.isEmpty()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isNotEmpty', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.isNotEmpty',
        equals: const MapTransformer.isNotEmpty(),
      );

      expect(
          const MapTransformer.isNotEmpty().transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              FakeZacOrigin(),
              null),
          isTrue);

      expect(
          const MapTransformer.isNotEmpty().transform(
              ZacTransformValue(<String, dynamic>{}), FakeZacOrigin(), null),
          isFalse);

      expect(
          () => const MapTransformer.isNotEmpty()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    testWidgets('.containsKey', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.containsKey',
          equals: MapTransformer.containsKey(ZacValue<Object>.fromJson('foo')),
          props: <String, dynamic>{'key': 'foo'});

      expect(
          () => MapTransformer.containsKey(ZacValue<Object>.fromJson('foo'))
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));

      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (o) => zacContext = o));

      expect(
          MapTransformer.containsKey(ZacValue<Object>.fromJson('foo'))
              .transform(
                  ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                  zacContext,
                  null),
          isTrue);
    });

    testWidgets('.containsValue', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.containsValue',
          equals: MapTransformer.containsValue(ZacValue<Object>.fromJson(2)),
          props: <String, dynamic>{'value': 2});

      expect(
          () => MapTransformer.containsValue(ZacValue<Object>.fromJson(2))
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));

      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (o) => zacContext = o));

      expect(
          MapTransformer.containsValue(ZacValue<Object>.fromJson(2)).transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              zacContext,
              null),
          isTrue);
    });

    test('.map', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.map',
        equals: const MapTransformer.mapper(),
      );

      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.map',
        equals: MapTransformer.mapper(
            keyTransformer: ZacTransformers(<ZacTransformer>[]),
            valueTransformer: ZacTransformers([])),
        props: <String, dynamic>{
          'keyTransformer': <Map<String, dynamic>>[],
          'valueTransformer': <Map<String, dynamic>>[],
        },
      );

      expect(
          const MapTransformer.mapper().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              FakeZacOrigin(),
              null),
          isA<Map<Object?, Object?>>());

      Object? keyExtra;
      Object? valueExtra;
      expect(
          MapTransformer.mapper(
            keyTransformer: ZacTransformers([
              _ConcatStr('cool'),
              CustomTransformer(
                (transformValue, zacContext, payload) {
                  keyExtra = transformValue.extra1;
                  return transformValue.value;
                },
              )
            ]),
            valueTransformer: ZacTransformers([
              _ConcatStr('hello'),
              CustomTransformer(
                (transformValue, zacContext, payload) {
                  valueExtra = transformValue.extra1;
                  return transformValue.value;
                },
              ),
            ]),
          ).transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              FakeZacOrigin(),
              null),
          equals(<String, dynamic>{'foocool': 'ahello', 'barcool': 'bhello'}));
      expect(keyExtra, isA<MapEntry<dynamic, dynamic>>());
      expect(valueExtra, isA<MapEntry<dynamic, dynamic>>());

      expect(
          const MapTransformer.mapper().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              FakeZacOrigin(),
              null),
          equals(<String, dynamic>{'foo': 'a', 'bar': 'b'}));

      expect(
          () => const MapTransformer.mapper()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.from() of type <Object, Object>', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<Object, Object>.from',
        equals: const MapTransformer.fromObjectObject(),
      );

      expect(
          () => const MapTransformer.fromObjectObject()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));

      expect(
          const MapTransformer.fromObjectObject().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              FakeZacOrigin(),
              null),
          isA<Map<Object, Object>>());
    });

    test('.from() of type <String, Object?>', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object?>.from',
        equals: const MapTransformer.fromStringNullObject(),
      );

      expect(
          () => const MapTransformer.fromStringNullObject()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));

      expect(
          const MapTransformer.fromStringNullObject().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              FakeZacOrigin(),
              null),
          isA<Map<String, Object?>>());
    });

    test('.from() of type <String, Object>', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object>.from',
        equals: const MapTransformer.fromStringObject(),
      );

      expect(
          () => const MapTransformer.fromStringObject()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));

      expect(
          const MapTransformer.fromStringObject().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              FakeZacOrigin(),
              null),
          isA<Map<String, Object>>());
    });
  });

  group('Object', () {
    test('.isList()', () {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isList',
        equals: ObjectTransformer.isList(),
      );

      expect(
          ObjectTransformer.isList()
              .transform(ZacTransformValue(['foo']), FakeZacOrigin(), null),
          isTrue);

      expect(
          ObjectTransformer.isList()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          isFalse);
    });

    test('.isMap()', () {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isMap',
        equals: ObjectTransformer.isMap(),
      );

      expect(
          ObjectTransformer.isMap().transform(
              ZacTransformValue(<String, dynamic>{}), FakeZacOrigin(), null),
          isTrue);

      expect(
          ObjectTransformer.isMap()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          isFalse);
    });

    test('.equals()', () {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.equals',
        equals: ObjectTransformer.equals(other: 5),
        props: <String, dynamic>{
          'other': 5,
        },
      );

      expect(
          ObjectTransformer.equals(other: 5)
              .transform(ZacTransformValue(5), FakeZacOrigin(), null),
          isTrue);

      expect(
          ObjectTransformer.equals(other: 5)
              .transform(ZacTransformValue('foo'), FakeZacOrigin(), null),
          isFalse);
    });

    test('.hashCode', () {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.hashCode',
        equals: ObjectTransformer.hashCode(),
      );

      expect(
          ObjectTransformer.hashCode()
              .transform(ZacTransformValue(5), FakeZacOrigin(), null),
          5.hashCode);
    });

    test('.runtimeType', () {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.runtimeType',
        equals: ObjectTransformer.runtimeType(),
      );

      expect(
          ObjectTransformer.runtimeType()
              .transform(ZacTransformValue(5), FakeZacOrigin(), null),
          5.runtimeType);

      expect(
          ObjectTransformer.runtimeType()
              .transform(ZacTransformValue('foo'), FakeZacOrigin(), null),
          'foo'.runtimeType);
    });

    test('.toString()', () {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.toString',
        equals: ObjectTransformer.toString(),
      );

      expect(
          ObjectTransformer.toString()
              .transform(ZacTransformValue(5), FakeZacOrigin(), null),
          '5');

      expect(
          ObjectTransformer.toString()
              .transform(ZacTransformValue('foo'), FakeZacOrigin(), null),
          'foo');
    });

    group('.equalsSharedValue()', () {
      test('fromJson', () {
        _expectFromJson<ObjectTransformer>(
          fromJson: ObjectTransformer.fromJson,
          converter: 'z:1:Transformer:Object.equalsSharedValue',
          equals: ObjectTransformer.equalsSharedValue(
              value: ZacValueConsume<Object?>.read(family: 'shared')),
          props: <String, dynamic>{
            'value': {
              'converter': 'z:1:ZacValue.read',
              'family': 'shared',
            }
          },
        );
      });

      testWidgets('.transform()', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: 5,
            family: 'shared',
            child: SharedValueProviderBuilder(
              value: 'foo',
              family: 'shared2',
              child: LeakContext(
                cb: (o) => zacContext = o,
              ),
            ),
          ),
        );

        expect(
            ObjectTransformer.equalsSharedValue(
                    value: ZacValueConsume<Object?>.watch(family: 'shared'))
                .transform(ZacTransformValue(5), zacContext, null),
            isTrue);

        expect(
            ObjectTransformer.equalsSharedValue(
                    value: ZacValueConsume<Object?>.watch(family: 'shared2'))
                .transform(ZacTransformValue(5), zacContext, null),
            isFalse);
      });
    });
  });

  group('Num', () {
    test('.toDouble()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.toDouble',
        equals: const NumTransformer.toDouble(),
      );

      expect(
          const NumTransformer.toDouble()
              .transform(ZacTransformValue(5), FakeZacOrigin(), null),
          isA<double>().having((p0) => p0, 'is double', 5.0));

      expect(
          () => const NumTransformer.toDouble()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.toInt()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.toInt',
        equals: const NumTransformer.toInt(),
      );

      expect(
          const NumTransformer.toInt()
              .transform(ZacTransformValue(5.1), FakeZacOrigin(), null),
          isA<int>().having((p0) => p0, 'is int', 5));

      expect(
          () => const NumTransformer.toInt()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.abs()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.abs',
        equals: const NumTransformer.abs(),
      );

      expect(
          const NumTransformer.abs()
              .transform(ZacTransformValue(-2.5), FakeZacOrigin(), null),
          2.5);

      expect(
          () => const NumTransformer.abs()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.ceil()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.ceil',
        equals: const NumTransformer.ceil(),
      );

      expect(
          const NumTransformer.ceil()
              .transform(ZacTransformValue(2.5), FakeZacOrigin(), null),
          3);

      expect(
          () => const NumTransformer.ceil()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.ceilToDouble()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.ceilToDouble',
        equals: const NumTransformer.ceilToDouble(),
      );

      expect(
          const NumTransformer.ceilToDouble()
              .transform(ZacTransformValue(2.5), FakeZacOrigin(), null),
          isA<double>().having((p0) => p0, 'double', 3.0));

      expect(
          () => const NumTransformer.ceilToDouble()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.floor()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.floor',
        equals: const NumTransformer.floor(),
      );

      expect(
          const NumTransformer.floor()
              .transform(ZacTransformValue(2.5), FakeZacOrigin(), null),
          2);

      expect(
          () => const NumTransformer.floor()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.floorToDouble()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.floorToDouble',
        equals: const NumTransformer.floorToDouble(),
      );

      expect(
          const NumTransformer.floorToDouble()
              .transform(ZacTransformValue(2.5), FakeZacOrigin(), null),
          isA<double>().having((p0) => p0, 'double', 2.0));

      expect(
          () => const NumTransformer.floorToDouble()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.round()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.round',
        equals: const NumTransformer.round(),
      );

      expect(
          const NumTransformer.round()
              .transform(ZacTransformValue(2.5), FakeZacOrigin(), null),
          isA<int>().having((p0) => p0, 'int', 3));

      expect(
          () => const NumTransformer.round()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.roundToDouble()', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.roundToDouble',
        equals: const NumTransformer.roundToDouble(),
      );

      expect(
          const NumTransformer.roundToDouble()
              .transform(ZacTransformValue(2.5), FakeZacOrigin(), null),
          isA<double>().having((p0) => p0, 'int', 3.0));

      expect(
          () => const NumTransformer.roundToDouble()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isFinite', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isFinite',
        equals: const NumTransformer.isFinite(),
      );

      expect(
          const NumTransformer.isFinite()
              .transform(ZacTransformValue(1), FakeZacOrigin(), null),
          isTrue);

      expect(
          () => const NumTransformer.roundToDouble()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isInfinite', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isInfinite',
        equals: const NumTransformer.isInfinite(),
      );

      expect(
          const NumTransformer.isInfinite().transform(
              ZacTransformValue(double.infinity), FakeZacOrigin(), null),
          isTrue);

      expect(
          () => const NumTransformer.isInfinite()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isNan', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isNan',
        equals: const NumTransformer.isNan(),
      );

      expect(
          const NumTransformer.isNan()
              .transform(ZacTransformValue(double.nan), FakeZacOrigin(), null),
          isTrue);

      expect(
          () => const NumTransformer.isNan()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isNegative', () {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isNegative',
        equals: const NumTransformer.isNegative(),
      );

      expect(
          const NumTransformer.isNegative()
              .transform(ZacTransformValue(-1.0), FakeZacOrigin(), null),
          isTrue);

      expect(
          () => const NumTransformer.isNegative()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });
  });

  group('Int', () {
    test('.parse()', () {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.parse',
        equals: const IntTransformer.parse(),
      );

      expect(
          const IntTransformer.parse()
              .transform(ZacTransformValue('5'), FakeZacOrigin(), null),
          5);

      expect(
          () => const IntTransformer.parse()
              .transform(ZacTransformValue('no no no'), FakeZacOrigin(), null),
          throwsFormatException);

      expect(
          () => const IntTransformer.parse()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.tryParse()', () {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.tryParse',
        equals: const IntTransformer.tryParse(),
      );

      expect(
          const IntTransformer.tryParse()
              .transform(ZacTransformValue('5'), FakeZacOrigin(), null),
          5);

      expect(
          const IntTransformer.tryParse()
              .transform(ZacTransformValue('no no no'), FakeZacOrigin(), null),
          isNull);

      expect(
          () => const IntTransformer.tryParse()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });
  });

  group('String', () {
    test('.length', () {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.length',
        equals: const StringTransformer.length(),
      );

      expect(
          const StringTransformer.length()
              .transform(ZacTransformValue('foo'), FakeZacOrigin(), null),
          3);

      expect(
          () => const StringTransformer.length()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.split()', () {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.split',
        equals:
            StringTransformer.split(pattern: ZacValue<String>.fromJson(',')),
        props: <String, dynamic>{
          'pattern': ',',
        },
      );

      expect(
          StringTransformer.split(pattern: ZacValue<String>.fromJson(','))
              .transform(ZacTransformValue('a,b'), FakeZacOrigin(), null),
          ['a', 'b']);

      expect(
          () => StringTransformer.split(pattern: ZacValue<String>.fromJson(','))
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isEmpty', () {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.isEmpty',
        equals: const StringTransformer.isEmpty(),
      );

      expect(
          const StringTransformer.isEmpty()
              .transform(ZacTransformValue(''), FakeZacOrigin(), null),
          isTrue);

      expect(
          () => const StringTransformer.isEmpty()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isNotEmpty', () {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.isNotEmpty',
        equals: const StringTransformer.isNotEmpty(),
      );

      expect(
          const StringTransformer.isNotEmpty()
              .transform(ZacTransformValue(''), FakeZacOrigin(), null),
          isFalse);

      expect(
          () => const StringTransformer.isNotEmpty()
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });

    test('.replaceAll()', () {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.replaceAll',
        equals: StringTransformer.replaceAll(
            ZacValue<String>.fromJson('xx'), ZacValue<String>.fromJson('yy')),
        props: <String, dynamic>{'from': 'xx', 'replace': 'yy'},
      );

      expect(
          StringTransformer.replaceAll(ZacValue<String>.fromJson('xx'),
                  ZacValue<String>.fromJson('yy'))
              .transform(ZacTransformValue('fooxx'), FakeZacOrigin(), null),
          'fooyy');

      expect(
          () => StringTransformer.replaceAll(ZacValue<String>.fromJson('xx'),
                  ZacValue<String>.fromJson('yy'))
              .transform(ZacTransformValue(Object()), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
    });
  });

  group('Json', () {
    test('.encode()', () {
      _expectFromJson<JsonTransformer>(
        fromJson: JsonTransformer.fromJson,
        converter: 'z:1:Transformer:Json.encode',
        equals: const JsonTransformer.encode(),
      );

      expect(
          const JsonTransformer.encode().transform(
              ZacTransformValue(['foo', 'bar']), FakeZacOrigin(), null),
          '["foo","bar"]');
    });

    test('.decode()', () {
      _expectFromJson<JsonTransformer>(
        fromJson: JsonTransformer.fromJson,
        converter: 'z:1:Transformer:Json.decode',
        equals: const JsonTransformer.decode(),
      );

      expect(
          const JsonTransformer.decode().transform(
              ZacTransformValue('["foo", "bar"]'), FakeZacOrigin(), null),
          ['foo', 'bar']);

      expect(
          () => const JsonTransformer.decode()
              .transform(ZacTransformValue(55), FakeZacOrigin(), null),
          throwsA(isA<ZacTransformError>()));
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