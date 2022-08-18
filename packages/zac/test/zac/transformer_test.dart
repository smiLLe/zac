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
        ConvertTransformer().transform({
          '_converter': 'f:1:SizedBox',
        }, TestSharedValueInteractionType()),
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
          IterableTransformer.map(transformer: [_ConcatStr('bar')])
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          ['foobar', 'oofbar']);

      expect(
          () => IterableTransformer.map(transformer: [_ConcatStr('bar')])
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.first', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.first',
        equals: const IterableTransformer.first(),
      );

      expect(
          const IterableTransformer.first()
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          'foo');

      expect(
          () => const IterableTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.last', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.last',
        equals: const IterableTransformer.last(),
      );

      expect(
          const IterableTransformer.last()
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          'oof');

      expect(
          () => const IterableTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
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
              .transform(['foo'], TestSharedValueInteractionType()),
          'foo');

      expect(
          () => const IterableTransformer.single()
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          throwsStateError);

      expect(
          () => const IterableTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
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
              ['foo', 'foo', 'foo', 'foo'], TestSharedValueInteractionType()),
          4);

      expect(
          () => const IterableTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
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
              .transform(['foo'], TestSharedValueInteractionType()),
          isFalse);

      expect(
          const IterableTransformer.isEmpty()
              .transform(<dynamic>[], TestSharedValueInteractionType()),
          isTrue);

      expect(
          () => const IterableTransformer.isEmpty()
              .transform(55, TestSharedValueInteractionType()),
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
              .transform(['foo'], TestSharedValueInteractionType()),
          isTrue);

      expect(
          const IterableTransformer.isNotEmpty()
              .transform(<dynamic>[], TestSharedValueInteractionType()),
          isFalse);

      expect(
          () => const IterableTransformer.isNotEmpty()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.toList', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toList',
        equals: const IterableTransformer.toList(),
      );

      expect(
          const IterableTransformer.toList()
              .transform(<String>{'foo'}, TestSharedValueInteractionType()),
          isA<List<Object?>>());

      expect(
          () => const IterableTransformer.toList()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.toSet', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toSet',
        equals: const IterableTransformer.toSet(),
      );

      expect(
          const IterableTransformer.toSet()
              .transform(<String>['foo'], TestSharedValueInteractionType()),
          isA<Set<Object?>>());

      expect(
          () => const IterableTransformer.toSet()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });

    test('.toString()', () {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toString',
        equals: const IterableTransformer.toString(),
      );

      expect(
          const IterableTransformer.toString()
              .transform(<String>['foo'], TestSharedValueInteractionType()),
          equals('[foo]'));

      expect(
          () => const IterableTransformer.toString()
              .transform(55, TestSharedValueInteractionType()),
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
              <String>['foo', 'bar'], TestSharedValueInteractionType()),
          equals('foobar'));

      expect(
          () => const IterableTransformer.join()
              .transform(55, TestSharedValueInteractionType()),
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
              <String>['foo', 'bar'], TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          () => IterableTransformer.contains(ZacObject('foo'))
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      late ZacBuildContext context;
      await testZacWidget(tester, LeakContext(cb: (c) => context = c));

      expect(
          IterableTransformer.contains(ZacObject('foo')).transform(
              <String>['foo', 'bar'],
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
              <String>['foo', 'bar'], TestSharedValueInteractionType()),
          equals('bar'));

      expect(
          () => const IterableTransformer.elementAt(1)
              .transform(55, TestSharedValueInteractionType()),
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
              <String>['foo', 'bar'], TestSharedValueInteractionType()),
          ['bar']);

      expect(
          () => const IterableTransformer.skip(1)
              .transform(55, TestSharedValueInteractionType()),
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
              <String>['foo', 'bar'], TestSharedValueInteractionType()),
          ['foo', 'bar']);

      expect(
          () => const IterableTransformer.take(2)
              .transform(55, TestSharedValueInteractionType()),
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          [1, 2]);

      expect(
          () => const MapTransformer.values()
              .transform(55, TestSharedValueInteractionType()),
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          ['foo', 'bar']);

      expect(
          () => const MapTransformer.keys()
              .transform(55, TestSharedValueInteractionType()),
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          isA<Iterable<MapEntry<String, dynamic>>>());

      expect(
          () => const MapTransformer.entries()
              .transform(55, TestSharedValueInteractionType()),
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          2);

      expect(
          () => const MapTransformer.length()
              .transform(55, TestSharedValueInteractionType()),
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          isFalse);

      expect(
          const MapTransformer.isEmpty()
              .transform(<String, dynamic>{}, TestSharedValueInteractionType()),
          isTrue);

      expect(
          () => const MapTransformer.isEmpty()
              .transform(55, TestSharedValueInteractionType()),
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          isTrue);

      expect(
          const MapTransformer.isNotEmpty()
              .transform(<String, dynamic>{}, TestSharedValueInteractionType()),
          isFalse);

      expect(
          () => const MapTransformer.isNotEmpty()
              .transform(55, TestSharedValueInteractionType()),
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          () => MapTransformer.containsKey(ZacObject('foo'))
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      late ZacBuildContext context;
      await testZacWidget(tester, LeakContext(cb: (c) => context = c));

      expect(
          MapTransformer.containsKey(ZacObject('foo')).transform(
              <String, dynamic>{'foo': 1, 'bar': 2},
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
              <String, dynamic>{'foo': 1, 'bar': 2},
              TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      expect(
          () => MapTransformer.containsValue(ZacObject(2))
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));

      late ZacBuildContext context;
      await testZacWidget(tester, LeakContext(cb: (c) => context = c));

      expect(
          MapTransformer.containsValue(ZacObject(2)).transform(
              <String, dynamic>{'foo': 1, 'bar': 2},
              ZacSharedValueInteractionType.consume(context: context)),
          isTrue);
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
              .transform(['foo'], TestSharedValueInteractionType()),
          isTrue);

      expect(
          ObjectTransformer.isList()
              .transform(55, TestSharedValueInteractionType()),
          isFalse);
    });

    test('.isMap()', () {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isMap',
        equals: ObjectTransformer.isMap(),
      );

      expect(
          ObjectTransformer.isMap()
              .transform(<String, dynamic>{}, TestSharedValueInteractionType()),
          isTrue);

      expect(
          ObjectTransformer.isMap()
              .transform(55, TestSharedValueInteractionType()),
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
              .transform(5, TestSharedValueInteractionType()),
          isTrue);

      expect(
          ObjectTransformer.equals(other: 5)
              .transform('foo', TestSharedValueInteractionType()),
          isFalse);
    });

    group('.equalsSharedValue()', () {
      test('fromJson', () {
        _expectFromJson<ObjectTransformer>(
          fromJson: ObjectTransformer.fromJson,
          converter: 'z:1:Transformer:Object.equalsSharedValue',
          equals: ObjectTransformer.equalsSharedValue(
              family: 'shared',
              consumeType: const SharedValueConsumeType.read()),
          props: <String, dynamic>{
            'family': 'shared',
          },
        );
      });

      test('throws if no ZacContext found', () {
        expect(
            () => ObjectTransformer.equalsSharedValue(
                    family: 'shared',
                    consumeType: const SharedValueConsumeType.read())
                .transform('ignore', TestSharedValueInteractionType()),
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
            ObjectTransformer.equalsSharedValue(family: 'shared').transform(
                5, ZacSharedValueInteractionType.consume(context: context)),
            isTrue);

        expect(
            ObjectTransformer.equalsSharedValue(family: 'shared2').transform(
                5, ZacSharedValueInteractionType.consume(context: context)),
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
          const IntTransformer.parse()
              .transform('5', TestSharedValueInteractionType()),
          5);

      expect(
          () => const IntTransformer.parse()
              .transform('no no no', TestSharedValueInteractionType()),
          throwsFormatException);

      expect(
          () => const IntTransformer.parse()
              .transform(Object(), TestSharedValueInteractionType()),
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
              .transform('5', TestSharedValueInteractionType()),
          5);

      expect(
          const IntTransformer.tryParse()
              .transform('no no no', TestSharedValueInteractionType()),
          isNull);

      expect(
          () => const IntTransformer.tryParse()
              .transform(Object(), TestSharedValueInteractionType()),
          throwsA(isA<ZacTransformError>()));
    });
  });
}

class _ConcatStr implements ZacTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    return (value as String) + str;
  }
}

class TestSharedValueInteractionType extends SharedValueInteractionType {}
