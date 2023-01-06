import 'package:flutter/cupertino.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';

void _expectFromJson<T>({
  required T Function(Map<String, dynamic> json) fromJson,
  required String converter,
  required Object equals,
  Map<String, dynamic>? props,
}) {
  expectInRegistry(converter, fromJson);
  expect(
      ZacRegistry().getRegisteredTransformer(converter).call(<String, dynamic>{
        'builder': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
  expect(
      fromJson(<String, dynamic>{
        'builder': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
}

void main() {
  group('List of Transformer', () {
    testWidgets('BuldIn has correct value', (tester) async {
      await testWithContext(
        tester,
        (getContext, getZacContext) {
          late BuildIn buildIn;
          [
            CustomTransformer(
              (transformValue, context, zacContext, payload) {
                buildIn = zacContext.buildIn;
                return transformValue.value;
              },
            )
          ].transform(
              ZacTransformValue(1), getContext(), getZacContext(), null);

          expect(buildIn, BuildIn.transformer);
        },
      );
    });
  });

  group('Iterable', () {
    testWidgets('.map()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.map',
        equals: IterableTransformer.map(transformer: ZacTransformers([])),
        props: <String, dynamic>{
          'transformer': {
            'builder': 'z:1:Transformers',
            'transformers': <dynamic>[]
          },
        },
      );

      await testWithContext(
        tester,
        (getContext, getZacContext) {
          expect(
              IterableTransformer.map(transformer: ZacTransformers([]))
                  .transform(ZacTransformValue(['foo', 'oof']), getContext(),
                      getZacContext(), null),
              isA<Iterable<Object?>>());

          expect(
              IterableTransformer.map(
                      transformer: ZacTransformers([_ConcatStr('bar')]))
                  .transform(ZacTransformValue(['foo', 'oof']), getContext(),
                      getZacContext(), null),
              ['foobar', 'oofbar']);

          expect(
              () => IterableTransformer.map(
                  transformer:
                      ZacTransformers([_ConcatStr('bar')])).transform(
                  ZacTransformValue(55), getContext(), getZacContext(), null),
              throwsA(isA<ZacTransformError>()));
        },
      );
    });

    testWidgets('.first', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.first',
        equals: const IterableTransformer.first(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.first().transform(
                ZacTransformValue(['foo', 'oof']),
                getContext(),
                getZacContext(),
                null),
            'foo');

        expect(
            () => const IterableTransformer.first().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.last', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.last',
        equals: const IterableTransformer.last(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.last().transform(
                ZacTransformValue(['foo', 'oof']),
                getContext(),
                getZacContext(),
                null),
            'oof');

        expect(
            () => const IterableTransformer.first().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.single', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.single',
        equals: const IterableTransformer.single(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.single().transform(
                ZacTransformValue(['foo']),
                getContext(),
                getZacContext(),
                null),
            'foo');

        expect(
            () => const IterableTransformer.single().transform(
                ZacTransformValue(['foo', 'oof']),
                getContext(),
                getZacContext(),
                null),
            throwsStateError);

        expect(
            () => const IterableTransformer.first().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.length', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.length',
        equals: const IterableTransformer.length(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.length().transform(
                ZacTransformValue(['foo', 'foo', 'foo', 'foo']),
                getContext(),
                getZacContext(),
                null),
            4);

        expect(
            () => const IterableTransformer.first().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isEmpty', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isEmpty',
        equals: const IterableTransformer.isEmpty(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.isEmpty().transform(
                ZacTransformValue(['foo']),
                getContext(),
                getZacContext(),
                null),
            isFalse);

        expect(
            const IterableTransformer.isEmpty().transform(
                ZacTransformValue(<dynamic>[]),
                getContext(),
                getZacContext(),
                null),
            isTrue);

        expect(
            () => const IterableTransformer.isEmpty().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNotEmpty', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isNotEmpty',
        equals: const IterableTransformer.isNotEmpty(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.isNotEmpty().transform(
                ZacTransformValue(['foo']),
                getContext(),
                getZacContext(),
                null),
            isTrue);

        expect(
            const IterableTransformer.isNotEmpty().transform(
                ZacTransformValue(<dynamic>[]),
                getContext(),
                getZacContext(),
                null),
            isFalse);

        expect(
            () => const IterableTransformer.isNotEmpty().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toList', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toList',
        equals: const IterableTransformer.toList(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.toList().transform(
                ZacTransformValue(<String>{'foo'}),
                getContext(),
                getZacContext(),
                null),
            isA<List<Object?>>());

        expect(
            () => const IterableTransformer.toList().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toSet', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toSet',
        equals: const IterableTransformer.toSet(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.toSet().transform(
                ZacTransformValue(<String>['foo']),
                getContext(),
                getZacContext(),
                null),
            isA<Set<Object?>>());

        expect(
            () => const IterableTransformer.toSet().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toString()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toString',
        equals: const IterableTransformer.toString(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.toString().transform(
                ZacTransformValue(<String>['foo']),
                getContext(),
                getZacContext(),
                null),
            equals('[foo]'));

        expect(
            () => const IterableTransformer.toString().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.join()', (tester) async {
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

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.join().transform(
                ZacTransformValue(<String>['foo', 'bar']),
                getContext(),
                getZacContext(),
                null),
            equals('foobar'));

        expect(
            () => const IterableTransformer.join().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.contains()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.contains',
        equals:
            IterableTransformer.contains(ZacBuilder<Object?>.fromJson('foo')),
        props: <String, dynamic>{
          'element': 'foo',
        },
      );

      await testWithContext(tester, (getContext, getZacContext) async {
        expect(
            () =>
                IterableTransformer.contains(ZacBuilder<Object>.fromJson('foo'))
                    .transform(ZacTransformValue(55), getContext(),
                        getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            IterableTransformer.contains(ZacBuilder<Object>.fromJson('foo'))
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext(), null),
            isTrue);
      });
    });

    testWidgets('.elementAt()', (tester) async {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.elementAt',
          equals: const IterableTransformer.elementAt(1),
          props: <String, dynamic>{
            'index': 1,
          });

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.elementAt(1).transform(
                ZacTransformValue(<String>['foo', 'bar']),
                getContext(),
                getZacContext(),
                null),
            equals('bar'));

        expect(
            () => const IterableTransformer.elementAt(1).transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.skip()', (tester) async {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.skip',
          equals: const IterableTransformer.skip(1),
          props: <String, dynamic>{
            'count': 1,
          });

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.skip(1).transform(
                ZacTransformValue(<String>['foo', 'bar']),
                getContext(),
                getZacContext(),
                null),
            ['bar']);

        expect(
            () => const IterableTransformer.skip(1).transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.take()', (tester) async {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.take',
          equals: const IterableTransformer.take(2),
          props: <String, dynamic>{
            'count': 2,
          });

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IterableTransformer.take(2).transform(
                ZacTransformValue(<String>['foo', 'bar']),
                getContext(),
                getZacContext(),
                null),
            ['foo', 'bar']);

        expect(
            () => const IterableTransformer.take(2).transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('List', () {
    testWidgets('.reversed', (tester) async {
      _expectFromJson<ListTransformer>(
        fromJson: ListTransformer.fromJson,
        converter: 'z:1:Transformer:List.reversed',
        equals: const ListTransformer.reversed(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const ListTransformer.reversed().transform(
                ZacTransformValue(<String>['foo', 'bar']),
                getContext(),
                getZacContext(),
                null),
            ['bar', 'foo']);

        expect(
            () => const ListTransformer.reversed().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.add', (tester) async {
      _expectFromJson<ListTransformer>(
          fromJson: ListTransformer.fromJson,
          converter: 'z:1:Transformer:List.add',
          equals: ListTransformer.add(ZacBuilder<Object>.fromJson('hello')),
          props: <String, dynamic>{
            'value': 'hello',
          });

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ListTransformer.add(ZacBuilder<Object>.fromJson('hello')).transform(
                ZacTransformValue(<String>['foo', 'bar']),
                getContext(),
                getZacContext(),
                null),
            ['foo', 'bar', 'hello']);

        expect(
            () => ListTransformer.add(ZacBuilder<Object>.fromJson('hello'))
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Map', () {
    testWidgets('.values', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.values',
        equals: const MapTransformer.values(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const MapTransformer.values().transform(
                ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                getContext(),
                getZacContext(),
                null),
            [1, 2]);

        expect(
            () => const MapTransformer.values().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.keys', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.keys',
        equals: const MapTransformer.keys(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const MapTransformer.keys().transform(
                ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                getContext(),
                getZacContext(),
                null),
            ['foo', 'bar']);

        expect(
            () => const MapTransformer.keys().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.entries', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.entries',
        equals: const MapTransformer.entries(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const MapTransformer.entries().transform(
                ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                getContext(),
                getZacContext(),
                null),
            isA<Iterable<MapEntry<String, dynamic>>>());

        expect(
            () => const MapTransformer.entries().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.length', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.length',
        equals: const MapTransformer.length(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const MapTransformer.length().transform(
                ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                getContext(),
                getZacContext(),
                null),
            2);

        expect(
            () => const MapTransformer.length().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isEmpty', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.isEmpty',
        equals: const MapTransformer.isEmpty(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const MapTransformer.isEmpty().transform(
                ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                getContext(),
                getZacContext(),
                null),
            isFalse);

        expect(
            const MapTransformer.isEmpty().transform(
                ZacTransformValue(<String, dynamic>{}),
                getContext(),
                getZacContext(),
                null),
            isTrue);

        expect(
            () => const MapTransformer.isEmpty().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNotEmpty', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.isNotEmpty',
        equals: const MapTransformer.isNotEmpty(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const MapTransformer.isNotEmpty().transform(
                ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                getContext(),
                getZacContext(),
                null),
            isTrue);

        expect(
            const MapTransformer.isNotEmpty().transform(
                ZacTransformValue(<String, dynamic>{}),
                getContext(),
                getZacContext(),
                null),
            isFalse);

        expect(
            () => const MapTransformer.isNotEmpty().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.containsKey', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.containsKey',
          equals:
              MapTransformer.containsKey(ZacBuilder<Object?>.fromJson('foo')),
          props: <String, dynamic>{'key': 'foo'});

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.containsKey(ZacBuilder<Object>.fromJson('foo'))
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.containsKey(ZacBuilder<Object>.fromJson('foo'))
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext(),
                    null),
            isTrue);
      });
    });

    testWidgets('.containsValue', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.containsValue',
          equals: MapTransformer.containsValue(ZacBuilder<Object?>.fromJson(2)),
          props: <String, dynamic>{'value': 2});

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.containsValue(ZacBuilder<Object>.fromJson(2))
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.containsValue(ZacBuilder<Object>.fromJson(2))
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext(),
                    null),
            isTrue);
      });
    });

    testWidgets('.map', (tester) async {
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
          'keyTransformer': {
            'builder': 'z:1:Transformers',
            'transformers': <dynamic>[]
          },
          'valueTransformer': {
            'builder': 'z:1:Transformers',
            'transformers': <dynamic>[]
          },
        },
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const MapTransformer.mapper().transform(
                ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
                getContext(),
                getZacContext(),
                null),
            isA<Map<Object?, Object?>>());

        Object? keyExtra;
        Object? valueExtra;
        expect(
            MapTransformer.mapper(
              keyTransformer: ZacTransformers([
                _ConcatStr('cool'),
                CustomTransformer(
                  (transformValue, context, zacContext, payload) {
                    keyExtra = transformValue.extra1;
                    return transformValue.value;
                  },
                )
              ]),
              valueTransformer: ZacTransformers([
                _ConcatStr('hello'),
                CustomTransformer(
                  (transformValue, context, zacContext, payload) {
                    valueExtra = transformValue.extra1;
                    return transformValue.value;
                  },
                ),
              ]),
            ).transform(
                ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
                getContext(),
                getZacContext(),
                null),
            equals(
                <String, dynamic>{'foocool': 'ahello', 'barcool': 'bhello'}));
        expect(keyExtra, isA<MapEntry<dynamic, dynamic>>());
        expect(valueExtra, isA<MapEntry<dynamic, dynamic>>());

        expect(
            const MapTransformer.mapper().transform(
                ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
                getContext(),
                getZacContext(),
                null),
            equals(<String, dynamic>{'foo': 'a', 'bar': 'b'}));

        expect(
            () => const MapTransformer.mapper().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.from() of type <Object, Object>', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<Object, Object>.from',
        equals: const MapTransformer.fromObjectObject(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            () => const MapTransformer.fromObjectObject().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            const MapTransformer.fromObjectObject().transform(
                ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
                getContext(),
                getZacContext(),
                null),
            isA<Map<Object, Object>>());
      });
    });

    testWidgets('.from() of type <String, Object?>', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object?>.from',
        equals: const MapTransformer.fromStringNullObject(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            () => const MapTransformer.fromStringNullObject().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            const MapTransformer.fromStringNullObject().transform(
                ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
                getContext(),
                getZacContext(),
                null),
            isA<Map<String, Object?>>());
      });
    });

    testWidgets('.from() of type <String, Object>', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object>.from',
        equals: const MapTransformer.fromStringObject(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            () => const MapTransformer.fromStringObject().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            const MapTransformer.fromStringObject().transform(
                ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
                getContext(),
                getZacContext(),
                null),
            isA<Map<String, Object>>());
      });
    });

    testWidgets('get value in map from key', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map[key]',
          equals: MapTransformer.key(ZacBuilder<String>.fromJson('nameOfKey')),
          props: <String, dynamic>{
            'key': 'nameOfKey',
          });

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.key(ZacBuilder<String>.fromJson('nameOfKey'))
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.key(ZacBuilder<String>.fromJson('foo')).transform(
                ZacTransformValue(<String, dynamic>{'foo': FlutterSizedBox()}),
                getContext(),
                getZacContext(),
                null),
            isA<FlutterSizedBox>());
      });
    });

    testWidgets('set value in map for key', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.setValueForKey',
          equals: MapTransformer.setValueForKey(
            key: ZacBuilder<String>.fromJson('nameOfKey'),
            value: ZacBuilder<Object>.fromJson('hello'),
          ),
          props: <String, dynamic>{
            'key': 'nameOfKey',
            'value': 'hello',
          });

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.setValueForKey(
                  key: ZacBuilder<String>.fromJson('nameOfKey'),
                  value: ZacBuilder<Object>.fromJson('hello'),
                ).transform(
                    ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.setValueForKey(
              key: ZacBuilder<String>.fromJson('nameOfKey'),
              value: ZacBuilder<Object>.fromJson('hello'),
            ).transform(ZacTransformValue(<String, dynamic>{'a': 'a'}),
                getContext(), getZacContext(), null),
            <String, dynamic>{'a': 'a', 'nameOfKey': 'hello'});
      });
    });
  });

  group('Object', () {
    testWidgets('.isList()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isList',
        equals: ObjectTransformer.isList(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isList().transform(ZacTransformValue(['foo']),
                getContext(), getZacContext(), null),
            isTrue);

        expect(
            ObjectTransformer.isList().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.isMap()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isMap',
        equals: ObjectTransformer.isMap(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isMap().transform(
                ZacTransformValue(<String, dynamic>{}),
                getContext(),
                getZacContext(),
                null),
            isTrue);

        expect(
            ObjectTransformer.isMap().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.isBool()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isBool',
        equals: ObjectTransformer.isBool(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isBool().transform(
                ZacTransformValue(true), getContext(), getZacContext(), null),
            isTrue);

        expect(
            ObjectTransformer.isBool().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.isString()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isString',
        equals: ObjectTransformer.isString(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isString().transform(
                ZacTransformValue(''), getContext(), getZacContext(), null),
            isTrue);

        expect(
            ObjectTransformer.isString().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.isDouble()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isDouble',
        equals: ObjectTransformer.isDouble(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isDouble().transform(
                ZacTransformValue(5.6), getContext(), getZacContext(), null),
            isTrue);

        expect(
            ObjectTransformer.isDouble().transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            isFalse);

        expect(
            ObjectTransformer.isDouble().transform(
                ZacTransformValue(''), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.isInt()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isInt',
        equals: ObjectTransformer.isInt(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isInt().transform(
                ZacTransformValue(5.6), getContext(), getZacContext(), null),
            isFalse);

        expect(
            ObjectTransformer.isInt().transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            isTrue);

        expect(
            ObjectTransformer.isInt().transform(
                ZacTransformValue(''), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.isNull()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isNull',
        equals: ObjectTransformer.isNull(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isNull().transform(
                ZacTransformValue(null), getContext(), getZacContext(), null),
            isTrue);

        expect(
            ObjectTransformer.isNull().transform(
                ZacTransformValue(''), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.equals()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.equals',
        equals: ObjectTransformer.equals(other: 5),
        props: <String, dynamic>{
          'other': 5,
        },
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.equals(other: 5).transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            isTrue);

        expect(
            ObjectTransformer.equals(other: 5).transform(
                ZacTransformValue('foo'), getContext(), getZacContext(), null),
            isFalse);
      });
    });

    testWidgets('.hashCode', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.hashCode',
        equals: ObjectTransformer.hashCode(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.hashCode().transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            5.hashCode);
      });
    });

    testWidgets('.runtimeType', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.runtimeType',
        equals: ObjectTransformer.runtimeType(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.runtimeType().transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            5.runtimeType);

        expect(
            ObjectTransformer.runtimeType().transform(
                ZacTransformValue('foo'), getContext(), getZacContext(), null),
            'foo'.runtimeType);
      });
    });

    testWidgets('.toString()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.toString',
        equals: ObjectTransformer.toString(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.toString().transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            '5');

        expect(
            ObjectTransformer.toString().transform(
                ZacTransformValue('foo'), getContext(), getZacContext(), null),
            'foo');
      });
    });

    group('.equalsSharedValue()', () {
      test('fromJson', () {
        _expectFromJson<ObjectTransformer>(
          fromJson: ObjectTransformer.fromJson,
          converter: 'z:1:Transformer:Object.equalsSharedValue',
          equals: ObjectTransformer.equalsSharedValue(
              value: ConsumeSharedValue<Object?>(family: 'shared')),
          props: <String, dynamic>{
            'value': {
              'builder': 'z:1:SharedValue.consume',
              'family': 'shared',
            }
          },
        );
      });

      testWidgets('.transform()', (tester) async {
        await testWithContextWithChild(
          tester,
          (child) => SharedValueProviderBuilder.provideInt(
            value: 5,
            family: 'shared',
            child: SharedValueProviderBuilder.provideString(
              value: 'foo',
              family: 'shared2',
              child: child,
            ),
          ),
          (getContext, getZacContext) {
            expect(
                ObjectTransformer.equalsSharedValue(
                        value: ConsumeSharedValue<Object>(family: 'shared'))
                    .transform(ZacTransformValue(5), getContext(),
                        getZacContext(), null),
                isTrue);

            expect(
                ObjectTransformer.equalsSharedValue(
                        value: ConsumeSharedValue<Object>(family: 'shared2'))
                    .transform(ZacTransformValue(5), getContext(),
                        getZacContext(), null),
                isFalse);
          },
        );
      });
    });
  });

  group('Num', () {
    testWidgets('.toDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.toDouble',
        equals: const NumTransformer.toDouble(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.toDouble().transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            isA<double>().having((p0) => p0, 'is double', 5.0));

        expect(
            () => const NumTransformer.toDouble().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toInt()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.toInt',
        equals: const NumTransformer.toInt(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.toInt().transform(
                ZacTransformValue(5.1), getContext(), getZacContext(), null),
            isA<int>().having((p0) => p0, 'is int', 5));

        expect(
            () => const NumTransformer.toInt().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.abs()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.abs',
        equals: const NumTransformer.abs(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.abs().transform(
                ZacTransformValue(-2.5), getContext(), getZacContext(), null),
            2.5);

        expect(
            () => const NumTransformer.abs().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.ceil()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.ceil',
        equals: const NumTransformer.ceil(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.ceil().transform(
                ZacTransformValue(2.5), getContext(), getZacContext(), null),
            3);

        expect(
            () => const NumTransformer.ceil().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.ceilToDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.ceilToDouble',
        equals: const NumTransformer.ceilToDouble(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.ceilToDouble().transform(
                ZacTransformValue(2.5), getContext(), getZacContext(), null),
            isA<double>().having((p0) => p0, 'double', 3.0));

        expect(
            () => const NumTransformer.ceilToDouble().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.floor()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.floor',
        equals: const NumTransformer.floor(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.floor().transform(
                ZacTransformValue(2.5), getContext(), getZacContext(), null),
            2);

        expect(
            () => const NumTransformer.floor().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.floorToDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.floorToDouble',
        equals: const NumTransformer.floorToDouble(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.floorToDouble().transform(
                ZacTransformValue(2.5), getContext(), getZacContext(), null),
            isA<double>().having((p0) => p0, 'double', 2.0));

        expect(
            () => const NumTransformer.floorToDouble().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.round()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.round',
        equals: const NumTransformer.round(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.round().transform(
                ZacTransformValue(2.5), getContext(), getZacContext(), null),
            isA<int>().having((p0) => p0, 'int', 3));

        expect(
            () => const NumTransformer.round().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.roundToDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.roundToDouble',
        equals: const NumTransformer.roundToDouble(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.roundToDouble().transform(
                ZacTransformValue(2.5), getContext(), getZacContext(), null),
            isA<double>().having((p0) => p0, 'int', 3.0));

        expect(
            () => const NumTransformer.roundToDouble().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isFinite', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isFinite',
        equals: const NumTransformer.isFinite(),
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.isFinite().transform(
                ZacTransformValue(1), getContext(), getZacContext(), null),
            isTrue);

        expect(
            () => const NumTransformer.roundToDouble().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isInfinite', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isInfinite',
        equals: const NumTransformer.isInfinite(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.isInfinite().transform(
                ZacTransformValue(double.infinity),
                getContext(),
                getZacContext(),
                null),
            isTrue);

        expect(
            () => const NumTransformer.isInfinite().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNan', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isNan',
        equals: const NumTransformer.isNan(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.isNan().transform(
                ZacTransformValue(double.nan),
                getContext(),
                getZacContext(),
                null),
            isTrue);

        expect(
            () => const NumTransformer.isNan().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNegative', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isNegative',
        equals: const NumTransformer.isNegative(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const NumTransformer.isNegative().transform(
                ZacTransformValue(-1.0), getContext(), getZacContext(), null),
            isTrue);

        expect(
            () => const NumTransformer.isNegative().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Int', () {
    testWidgets('.parse()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.parse',
        equals: const IntTransformer.parse(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IntTransformer.parse().transform(
                ZacTransformValue('5'), getContext(), getZacContext(), null),
            5);

        expect(
            () => const IntTransformer.parse().transform(
                ZacTransformValue('no no no'),
                getContext(),
                getZacContext(),
                null),
            throwsFormatException);

        expect(
            () => const IntTransformer.parse().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.tryParse()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.tryParse',
        equals: const IntTransformer.tryParse(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const IntTransformer.tryParse().transform(
                ZacTransformValue('5'), getContext(), getZacContext(), null),
            5);

        expect(
            const IntTransformer.tryParse().transform(
                ZacTransformValue('no no no'),
                getContext(),
                getZacContext(),
                null),
            isNull);

        expect(
            () => const IntTransformer.tryParse().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.operatorPlusPlus()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.incr',
        equals: IntTransformer.incr(ZacValue<int>(1)),
        props: <String, dynamic>{'by': 1},
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            IntTransformer.incr(ZacValue<int>(1)).transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            6);

        expect(
            () => IntTransformer.incr(ZacValue<int>(1)).transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<StateError>()));
      });
    });

    testWidgets('.operatorMinusMinus()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.decr',
        equals: IntTransformer.decr(ZacValue<int>(1)),
        props: <String, dynamic>{'by': 1},
      );

      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            IntTransformer.decr(ZacValue<int>(1)).transform(
                ZacTransformValue(5), getContext(), getZacContext(), null),
            4);

        expect(
            () => IntTransformer.decr(ZacValue<int>(1)).transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<StateError>()));
      });
    });
  });

  group('String', () {
    testWidgets('.length', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.length',
        equals: const StringTransformer.length(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const StringTransformer.length().transform(
                ZacTransformValue('foo'), getContext(), getZacContext(), null),
            3);

        expect(
            () => const StringTransformer.length().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.split()', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.split',
        equals:
            StringTransformer.split(pattern: ZacBuilder<String>.fromJson(',')),
        props: <String, dynamic>{
          'pattern': ',',
        },
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            StringTransformer.split(pattern: ZacBuilder<String>.fromJson(','))
                .transform(ZacTransformValue('a,b'), getContext(),
                    getZacContext(), null),
            ['a', 'b']);

        expect(
            () => StringTransformer.split(
                    pattern: ZacBuilder<String>.fromJson(','))
                .transform(ZacTransformValue(Object()), getContext(),
                    getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isEmpty', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.isEmpty',
        equals: const StringTransformer.isEmpty(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const StringTransformer.isEmpty().transform(
                ZacTransformValue(''), getContext(), getZacContext(), null),
            isTrue);

        expect(
            () => const StringTransformer.isEmpty().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNotEmpty', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.isNotEmpty',
        equals: const StringTransformer.isNotEmpty(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const StringTransformer.isNotEmpty().transform(
                ZacTransformValue(''), getContext(), getZacContext(), null),
            isFalse);

        expect(
            () => const StringTransformer.isNotEmpty().transform(
                ZacTransformValue(Object()),
                getContext(),
                getZacContext(),
                null),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.replaceAll()', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.replaceAll',
        equals: StringTransformer.replaceAll(ZacBuilder<String>.fromJson('xx'),
            ZacBuilder<String>.fromJson('yy')),
        props: <String, dynamic>{'from': 'xx', 'replace': 'yy'},
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            StringTransformer.replaceAll(ZacBuilder<String>.fromJson('xx'),
                    ZacBuilder<String>.fromJson('yy'))
                .transform(ZacTransformValue('fooxx'), getContext(),
                    getZacContext(), null),
            'fooyy');

        expect(
            () => StringTransformer.replaceAll(
                    ZacBuilder<String>.fromJson('xx'),
                    ZacBuilder<String>.fromJson('yy'))
                .transform(ZacTransformValue(Object()), getContext(),
                    getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Json', () {
    testWidgets('.encode()', (tester) async {
      _expectFromJson<JsonTransformer>(
        fromJson: JsonTransformer.fromJson,
        converter: 'z:1:Transformer:Json.encode',
        equals: const JsonTransformer.encode(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const JsonTransformer.encode().transform(
                ZacTransformValue(['foo', 'bar']),
                getContext(),
                getZacContext(),
                null),
            '["foo","bar"]');
      });
    });

    testWidgets('.decode()', (tester) async {
      _expectFromJson<JsonTransformer>(
        fromJson: JsonTransformer.fromJson,
        converter: 'z:1:Transformer:Json.decode',
        equals: const JsonTransformer.decode(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const JsonTransformer.decode().transform(
                ZacTransformValue('["foo", "bar"]'),
                getContext(),
                getZacContext(),
                null),
            ['foo', 'bar']);

        expect(
            () => const JsonTransformer.decode().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Bool', () {
    testWidgets('.negate()', (tester) async {
      _expectFromJson<BoolTransformer>(
        fromJson: BoolTransformer.fromJson,
        converter: 'z:1:Transformer:Bool.negate',
        equals: const BoolTransformer.negate(),
      );
      await testWithContext(tester, (getContext, getZacContext) {
        expect(
            const BoolTransformer.negate().transform(
                ZacTransformValue(false), getContext(), getZacContext(), null),
            true);

        expect(
            () => const JsonTransformer.decode().transform(
                ZacTransformValue(55), getContext(), getZacContext(), null),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });
}

class _ConcatStr implements ZacTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(ZacTransformValue transformValue, BuildContext context,
      ZacContext zacContext, ZacActionPayload? payload) {
    return (transformValue.value as String) + str;
  }
}
