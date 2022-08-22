import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/update_context.dart';

import '../helper.dart';

void _expectFromJson<T>({
  required T Function(Map<String, dynamic> json) fromJson,
  required String converter,
  required Object equals,
  Map<String, dynamic>? props,
}) {
  expect(
      ConverterHelper.convertToType<T>(<String, dynamic>{
        '_converter': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
  expect(
      fromJson(<String, dynamic>{
        '_converter': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
}

void main() {
  test('Convert', () {
    expect(
        ConvertTransformer().transform(
            ZacTransformValue({
              '_converter': 'f:1:SizedBox',
            }),
            TestSharedValueInteractionType()),
        FlutterSizedBox());
  });

  group('Iterable', () {
    test('.map()', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.map',
        equals: IterableTransformer.map(transformer: []),
        props: <String, dynamic>{
          'transformer': <Map<String, dynamic>>[],
        },
      );

      expect(
          IterableTransformer.map(transformer: []).transform(
              ZacTransformValue(['foo', 'oof']),
              TestSharedValueInteractionType()),
          isA<Iterable<Object?>>());

      expect(
          IterableTransformer.map(transformer: [_ConcatStr('bar')]).transform(
              ZacTransformValue(['foo', 'oof']),
              TestSharedValueInteractionType()),
          ['foobar', 'oofbar']);

      expect(
          () => IterableTransformer.map(transformer: [_ConcatStr('bar')])
              .transform(
                  ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(['foo', 'oof']),
              TestSharedValueInteractionType()),
          'foo');

      expect(
          () => const IterableTransformer.first().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(['foo', 'oof']),
              TestSharedValueInteractionType()),
          'oof');

      expect(
          () => const IterableTransformer.first().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.single', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.single',
        equals: const IterableTransformer.single(),
      );

      expect(
          const IterableTransformer.single().transform(
              ZacTransformValue(['foo']), TestSharedValueInteractionType()),
          'foo');

      expect(
          () => const IterableTransformer.single().transform(
              ZacTransformValue(['foo', 'oof']),
              TestSharedValueInteractionType()),
          throwsStateError);

      expect(
          () => const IterableTransformer.first().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              TestSharedValueInteractionType()),
          4);

      expect(
          () => const IterableTransformer.first().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isEmpty', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isEmpty',
        equals: const IterableTransformer.isEmpty(),
      );

      expect(
          const IterableTransformer.isEmpty().transform(
              ZacTransformValue(['foo']), TestSharedValueInteractionType()),
          isFalse);

      expect(
          const IterableTransformer.isEmpty().transform(
              ZacTransformValue(<dynamic>[]), TestSharedValueInteractionType()),
          isTrue);

      expect(
          () => const IterableTransformer.isEmpty().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.isNotEmpty', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isNotEmpty',
        equals: const IterableTransformer.isNotEmpty(),
      );

      expect(
          const IterableTransformer.isNotEmpty().transform(
              ZacTransformValue(['foo']), TestSharedValueInteractionType()),
          isTrue);

      expect(
          const IterableTransformer.isNotEmpty().transform(
              ZacTransformValue(<dynamic>[]), TestSharedValueInteractionType()),
          isFalse);

      expect(
          () => const IterableTransformer.isNotEmpty().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(<String>{'foo'}),
              TestSharedValueInteractionType()),
          isA<List<Object?>>());

      expect(
          () => const IterableTransformer.toList().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(<String>['foo']),
              TestSharedValueInteractionType()),
          isA<Set<Object?>>());

      expect(
          () => const IterableTransformer.toSet().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(<String>['foo']),
              TestSharedValueInteractionType()),
          equals('[foo]'));

      expect(
          () => const IterableTransformer.toString().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(<String>['foo', 'bar']),
              TestSharedValueInteractionType()),
          equals('foobar'));

      expect(
          () => const IterableTransformer.join().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    testWidgets('.contains()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.contains',
        equals: IterableTransformer.contains(ZacObject('foo')),
        props: <String, dynamic>{
          'element': 'foo',
        },
      );

      expect(
          () => IterableTransformer.contains(ZacObject('foo')).transform(
              ZacTransformValue(<String>['foo', 'bar']),
              TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          () => IterableTransformer.contains(ZacObject('foo')).transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      late ZacBuildContext context;
      await testZacWidget(tester, LeakContext(cb: (c) => context = c));

      expect(
          IterableTransformer.contains(ZacObject('foo')).transform(
              ZacTransformValue(<String>['foo', 'bar']),
              ZacSharedValueInteractionType.consume(context: context)),
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
              ZacTransformValue(<String>['foo', 'bar']),
              TestSharedValueInteractionType()),
          equals('bar'));

      expect(
          () => const IterableTransformer.elementAt(1).transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(<String>['foo', 'bar']),
              TestSharedValueInteractionType()),
          ['bar']);

      expect(
          () => const IterableTransformer.skip(1).transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(<String>['foo', 'bar']),
              TestSharedValueInteractionType()),
          ['foo', 'bar']);

      expect(
          () => const IterableTransformer.take(2).transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              TestSharedValueInteractionType()),
          [1, 2]);

      expect(
          () => const MapTransformer.values().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              TestSharedValueInteractionType()),
          ['foo', 'bar']);

      expect(
          () => const MapTransformer.keys().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              TestSharedValueInteractionType()),
          isA<Iterable<MapEntry<String, dynamic>>>());

      expect(
          () => const MapTransformer.entries().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              TestSharedValueInteractionType()),
          2);

      expect(
          () => const MapTransformer.length().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              TestSharedValueInteractionType()),
          isFalse);

      expect(
          const MapTransformer.isEmpty().transform(
              ZacTransformValue(<String, dynamic>{}),
              TestSharedValueInteractionType()),
          isTrue);

      expect(
          () => const MapTransformer.isEmpty().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              TestSharedValueInteractionType()),
          isTrue);

      expect(
          const MapTransformer.isNotEmpty().transform(
              ZacTransformValue(<String, dynamic>{}),
              TestSharedValueInteractionType()),
          isFalse);

      expect(
          () => const MapTransformer.isNotEmpty().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    testWidgets('.containsKey', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.containsKey',
          equals: MapTransformer.containsKey(ZacObject('foo')),
          props: <String, dynamic>{'key': 'foo'});

      expect(
          () => MapTransformer.containsKey(ZacObject('foo')).transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          () => MapTransformer.containsKey(ZacObject('foo')).transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      late ZacBuildContext context;
      await testZacWidget(tester, LeakContext(cb: (c) => context = c));

      expect(
          MapTransformer.containsKey(ZacObject('foo')).transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              ZacSharedValueInteractionType.consume(context: context)),
          isTrue);
    });

    testWidgets('.containsValue', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.containsValue',
          equals: MapTransformer.containsValue(ZacObject(2)),
          props: <String, dynamic>{'value': 2});

      expect(
          () => MapTransformer.containsValue(ZacObject(2)).transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          () => MapTransformer.containsValue(ZacObject(2)).transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      late ZacBuildContext context;
      await testZacWidget(tester, LeakContext(cb: (c) => context = c));

      expect(
          MapTransformer.containsValue(ZacObject(2)).transform(
              ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
              ZacSharedValueInteractionType.consume(context: context)),
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
        equals: const MapTransformer.mapper(
            keyTransformer: [], valueTransformer: []),
        props: <String, dynamic>{
          'keyTransformer': <Map<String, dynamic>>[],
          'valueTransformer': <Map<String, dynamic>>[],
        },
      );

      expect(
          const MapTransformer.mapper().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              TestSharedValueInteractionType()),
          isA<Map<Object?, Object?>>());

      expect(
          MapTransformer.mapper(
            keyTransformer: [_ConcatStr('cool')],
            valueTransformer: [_ConcatStr('hello')],
          ).transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              TestSharedValueInteractionType()),
          equals(<String, dynamic>{'foocool': 'ahello', 'barcool': 'bhello'}));

      expect(
          const MapTransformer.mapper().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              TestSharedValueInteractionType()),
          equals(<String, dynamic>{'foo': 'a', 'bar': 'b'}));

      expect(
          () => const MapTransformer.mapper().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.from() of type <Object, Object>', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<Object, Object>.from',
        equals: const MapTransformer.mapFromObjectObject(),
      );

      expect(
          () => const MapTransformer.mapFromObjectObject().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          const MapTransformer.mapFromObjectObject().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              TestSharedValueInteractionType()),
          isA<Map<Object, Object>>());
    });

    test('.from() of type <String, Object?>', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object?>.from',
        equals: const MapTransformer.mapFromStringNullObject(),
      );

      expect(
          () => const MapTransformer.mapFromStringNullObject().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          const MapTransformer.mapFromStringNullObject().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              TestSharedValueInteractionType()),
          isA<Map<String, Object?>>());
    });

    test('.from() of type <String, Object>', () {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object>.from',
        equals: const MapTransformer.mapFromStringObject(),
      );

      expect(
          () => const MapTransformer.mapFromStringObject().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          const MapTransformer.mapFromStringObject().transform(
              ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
              TestSharedValueInteractionType()),
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
          ObjectTransformer.isList().transform(
              ZacTransformValue(['foo']), TestSharedValueInteractionType()),
          isTrue);

      expect(
          ObjectTransformer.isList().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
              ZacTransformValue(<String, dynamic>{}),
              TestSharedValueInteractionType()),
          isTrue);

      expect(
          ObjectTransformer.isMap().transform(
              ZacTransformValue(55), TestSharedValueInteractionType()),
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
          ObjectTransformer.equals(other: 5).transform(
              ZacTransformValue(5), TestSharedValueInteractionType()),
          isTrue);

      expect(
          ObjectTransformer.equals(other: 5).transform(
              ZacTransformValue('foo'), TestSharedValueInteractionType()),
          isFalse);
    });

    group('.equalsSharedValue()', () {
      test('fromJson', () {
        _expectFromJson<ObjectTransformer>(
          fromJson: ObjectTransformer.fromJson,
          converter: 'z:1:Transformer:Object.equalsSharedValue',
          equals: ObjectTransformer.equalsSharedValue(
              'shared', null, const SharedValueConsumeType.read()),
          props: <String, dynamic>{
            'family': 'shared',
          },
        );
      });

      test('throws if no ZacContext found', () {
        expect(
            () => ObjectTransformer.equalsSharedValue(
                    'shared', null, const SharedValueConsumeType.read())
                .transform(ZacTransformValue('ignore'),
                    TestSharedValueInteractionType()),
            throwsA(isA<ZacTransformError>()));
      });

      testWidgets('.transform()', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            value: 5,
            family: 'shared',
            child: SharedValueProviderBuilder(
              value: 'foo',
              family: 'shared2',
              child: LeakContext(
                cb: (c) => context = c,
              ),
            ),
          ),
        );

        expect(
            ObjectTransformer.equalsSharedValue('shared').transform(
                ZacTransformValue(5),
                ZacSharedValueInteractionType.consume(context: context)),
            isTrue);

        expect(
            ObjectTransformer.equalsSharedValue('shared2').transform(
                ZacTransformValue(5),
                ZacSharedValueInteractionType.consume(context: context)),
            isFalse);
      });
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
          const IntTransformer.parse().transform(
              ZacTransformValue('5'), TestSharedValueInteractionType()),
          5);

      expect(
          () => const IntTransformer.parse().transform(
              ZacTransformValue('no no no'), TestSharedValueInteractionType()),
          throwsFormatException);

      expect(
          () => const IntTransformer.parse().transform(
              ZacTransformValue(Object()), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.tryParse()', () {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.tryParse',
        equals: const IntTransformer.tryParse(),
      );

      expect(
          const IntTransformer.tryParse().transform(
              ZacTransformValue('5'), TestSharedValueInteractionType()),
          5);

      expect(
          const IntTransformer.tryParse().transform(
              ZacTransformValue('no no no'), TestSharedValueInteractionType()),
          isNull);

      expect(
          () => const IntTransformer.tryParse().transform(
              ZacTransformValue(Object()), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
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
