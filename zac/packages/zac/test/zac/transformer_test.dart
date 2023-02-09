import 'package:flutter/cupertino.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/zac/context.dart';

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
      ZacRegistry()
          .getRegistered<ZacTransform>(converter)
          .call(<String, dynamic>{
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
  group('Iterable', () {
    testWidgets('.map()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.map',
        equals: IterableTransformer.map(transformer: ZacListOfTransformers([])),
        props: <String, dynamic>{
          'transformer': <dynamic>[],
        },
      );

      await testWithContexts(
        tester,
        (getContext, getZacContext) {
          expect(
              IterableTransformer.map(transformer: ZacListOfTransformers([]))
                  .build(getContext(), getZacContext())
                  .transform(ZacTransformValue(['foo', 'oof']), getContext(),
                      getZacContext()),
              isA<Iterable<Object?>>());

          expect(
              IterableTransformer.map(
                      transformer: ZacListOfTransformers([_ConcatStr('bar')]))
                  .build(getContext(), getZacContext())
                  .transform(ZacTransformValue(['foo', 'oof']), getContext(),
                      getZacContext()),
              ['foobar', 'oofbar']);

          expect(
              () => IterableTransformer.map(
                      transformer: ZacListOfTransformers([_ConcatStr('bar')]))
                  .build(getContext(), getZacContext())
                  .transform(
                      ZacTransformValue(55), getContext(), getZacContext()),
              throwsA(isA<ZacTransformError>()));
        },
      );
    });

    testWidgets('.first', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.first',
        equals: IterableTransformer.first(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.first()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(['foo', 'oof']), getContext(),
                    getZacContext()),
            'foo');

        expect(
            () => IterableTransformer.first()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.last', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.last',
        equals: IterableTransformer.last(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.last()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(['foo', 'oof']), getContext(),
                    getZacContext()),
            'oof');

        expect(
            () => IterableTransformer.first()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.single', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.single',
        equals: IterableTransformer.single(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.single()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(['foo']), getContext(), getZacContext()),
            'foo');

        expect(
            () => IterableTransformer.single()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(['foo', 'oof']), getContext(),
                    getZacContext()),
            throwsStateError);

        expect(
            () => IterableTransformer.first()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.length', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.length',
        equals: IterableTransformer.length(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.length()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(['foo', 'foo', 'foo', 'foo']),
                    getContext(), getZacContext()),
            4);

        expect(
            () => IterableTransformer.first()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isEmpty', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isEmpty',
        equals: IterableTransformer.isEmpty(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(['foo']), getContext(), getZacContext()),
            isFalse);

        expect(
            IterableTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<dynamic>[]), getContext(),
                    getZacContext()),
            isTrue);

        expect(
            () => IterableTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNotEmpty', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.isNotEmpty',
        equals: IterableTransformer.isNotEmpty(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(['foo']), getContext(), getZacContext()),
            isTrue);

        expect(
            IterableTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<dynamic>[]), getContext(),
                    getZacContext()),
            isFalse);

        expect(
            () => IterableTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toList', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toList',
        equals: IterableTransformer.toList(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.toList()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>{'foo'}), getContext(),
                    getZacContext()),
            isA<List<Object?>>());

        expect(
            () => IterableTransformer.toList()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toSet', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toSet',
        equals: IterableTransformer.toSet(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.toSet()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo']), getContext(),
                    getZacContext()),
            isA<Set<Object?>>());

        expect(
            () => IterableTransformer.toSet()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toString()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.toString',
        equals: IterableTransformer.toString(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.toString()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo']), getContext(),
                    getZacContext()),
            equals('[foo]'));

        expect(
            () => IterableTransformer.toString()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.join()', (tester) async {
      _expectFromJson<IterableTransformer>(
        fromJson: IterableTransformer.fromJson,
        converter: 'z:1:Transformer:Iterable.join',
        equals: IterableTransformer.join(),
      );

      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.join',
          equals: IterableTransformer.join(separator: '##'),
          props: <String, dynamic>{
            'separator': '##',
          });

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.join()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext()),
            equals('foobar'));

        expect(
            () => IterableTransformer.join()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
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

      await testWithContexts(tester, (getContext, getZacContext) async {
        expect(
            () =>
                IterableTransformer.contains(ZacBuilder<Object>.fromJson('foo'))
                    .build(getContext(), getZacContext())
                    .transform(
                        ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            IterableTransformer.contains(ZacBuilder<Object>.fromJson('foo'))
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext()),
            isTrue);
      });
    });

    testWidgets('.elementAt()', (tester) async {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.elementAt',
          equals: IterableTransformer.elementAt(1),
          props: <String, dynamic>{
            'index': 1,
          });

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.elementAt(1)
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext()),
            equals('bar'));

        expect(
            () => IterableTransformer.elementAt(1)
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.skip()', (tester) async {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.skip',
          equals: IterableTransformer.skip(1),
          props: <String, dynamic>{
            'count': 1,
          });

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.skip(1)
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext()),
            ['bar']);

        expect(
            () => IterableTransformer.skip(1)
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.take()', (tester) async {
      _expectFromJson<IterableTransformer>(
          fromJson: IterableTransformer.fromJson,
          converter: 'z:1:Transformer:Iterable.take',
          equals: IterableTransformer.take(2),
          props: <String, dynamic>{
            'count': 2,
          });

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IterableTransformer.take(2)
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext()),
            ['foo', 'bar']);

        expect(
            () => IterableTransformer.take(2)
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('List', () {
    testWidgets('.reversed', (tester) async {
      _expectFromJson<ListTransformer>(
        fromJson: ListTransformer.fromJson,
        converter: 'z:1:Transformer:List.reversed',
        equals: ListTransformer.reversed(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ListTransformer.reversed()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext()),
            ['bar', 'foo']);

        expect(
            () => ListTransformer.reversed()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
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

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ListTransformer.add(ZacBuilder<Object>.fromJson('hello'))
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String>['foo', 'bar']),
                    getContext(), getZacContext()),
            ['foo', 'bar', 'hello']);

        expect(
            () => ListTransformer.add(ZacBuilder<Object>.fromJson('hello'))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Map', () {
    testWidgets('.values', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.values',
        equals: MapTransformer.values(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            MapTransformer.values()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            [1, 2]);

        expect(
            () => MapTransformer.values()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.keys', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.keys',
        equals: MapTransformer.keys(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            MapTransformer.keys()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            ['foo', 'bar']);

        expect(
            () => MapTransformer.keys()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.entries', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.entries',
        equals: MapTransformer.entries(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            MapTransformer.entries()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            isA<Iterable<MapEntry<String, dynamic>>>());

        expect(
            () => MapTransformer.entries()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.length', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.length',
        equals: MapTransformer.length(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            MapTransformer.length()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            2);

        expect(
            () => MapTransformer.length()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isEmpty', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.isEmpty',
        equals: MapTransformer.isEmpty(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            MapTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            isFalse);

        expect(
            MapTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String, dynamic>{}), getContext(),
                    getZacContext()),
            isTrue);

        expect(
            () => MapTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNotEmpty', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.isNotEmpty',
        equals: MapTransformer.isNotEmpty(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            MapTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            isTrue);

        expect(
            MapTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String, dynamic>{}), getContext(),
                    getZacContext()),
            isFalse);

        expect(
            () => MapTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
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

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.containsKey(ZacBuilder<Object>.fromJson('foo'))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.containsKey(ZacBuilder<Object>.fromJson('foo'))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            isTrue);
      });
    });

    testWidgets('.containsValue', (tester) async {
      _expectFromJson<MapTransformer>(
          fromJson: MapTransformer.fromJson,
          converter: 'z:1:Transformer:Map.containsValue',
          equals: MapTransformer.containsValue(ZacBuilder<Object?>.fromJson(2)),
          props: <String, dynamic>{'value': 2});

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.containsValue(ZacBuilder<Object>.fromJson(2))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.containsValue(ZacBuilder<Object>.fromJson(2))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(<String, dynamic>{'foo': 1, 'bar': 2}),
                    getContext(),
                    getZacContext()),
            isTrue);
      });
    });

    testWidgets('.map', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.map',
        equals: MapTransformer.mapper(),
      );

      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map.map',
        equals: MapTransformer.mapper(
          keyTransformer: ZacListOfTransformers([]),
          valueTransformer: ZacListOfTransformers([]),
        ),
        props: <String, dynamic>{
          'keyTransformer': <dynamic>[],
          'valueTransformer': <dynamic>[],
        },
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            MapTransformer.mapper()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(
                        <String, dynamic>{'foo': 'a', 'bar': 'b'}),
                    getContext(),
                    getZacContext()),
            isA<Map<Object?, Object?>>());

        Object? keyExtra;
        Object? valueExtra;

        expect(
            MapTransformer.mapper(
              keyTransformer: ZacListOfTransformers([
                _ConcatStr('cool'),
                TestTransform(
                  (transformValue, context, zacContext) {
                    keyExtra = transformValue.extra1;
                    return transformValue.value;
                  },
                )
              ]),
              valueTransformer: ZacListOfTransformers([
                _ConcatStr('hello'),
                TestTransform(
                  (transformValue, context, zacContext) {
                    valueExtra = transformValue.extra1;
                    return transformValue.value;
                  },
                )
              ]),
            ).build(getContext(), getZacContext()).transform(
                ZacTransformValue(<String, dynamic>{'foo': 'a', 'bar': 'b'}),
                getContext(),
                getZacContext()),
            equals(
                <String, dynamic>{'foocool': 'ahello', 'barcool': 'bhello'}));
        expect(keyExtra, isA<MapEntry<dynamic, dynamic>>());
        expect(valueExtra, isA<MapEntry<dynamic, dynamic>>());

        expect(
            MapTransformer.mapper()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(
                        <String, dynamic>{'foo': 'a', 'bar': 'b'}),
                    getContext(),
                    getZacContext()),
            equals(<String, dynamic>{'foo': 'a', 'bar': 'b'}));

        expect(
            () => MapTransformer.mapper()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.from() of type <Object, Object>', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<Object, Object>.from',
        equals: MapTransformer.fromObjectObject(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.fromObjectObject()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.fromObjectObject()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(
                        <String, dynamic>{'foo': 'a', 'bar': 'b'}),
                    getContext(),
                    getZacContext()),
            isA<Map<Object, Object>>());
      });
    });

    testWidgets('.from() of type <String, Object?>', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object?>.from',
        equals: MapTransformer.fromStringNullObject(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.fromStringNullObject()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.fromStringNullObject()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(
                        <String, dynamic>{'foo': 'a', 'bar': 'b'}),
                    getContext(),
                    getZacContext()),
            isA<Map<String, Object?>>());
      });
    });

    testWidgets('.from() of type <String, Object>', (tester) async {
      _expectFromJson<MapTransformer>(
        fromJson: MapTransformer.fromJson,
        converter: 'z:1:Transformer:Map<String, Object>.from',
        equals: MapTransformer.fromStringObject(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.fromStringObject()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.fromStringObject()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(
                        <String, dynamic>{'foo': 'a', 'bar': 'b'}),
                    getContext(),
                    getZacContext()),
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

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.key(ZacBuilder<String>.fromJson('nameOfKey'))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.key(ZacBuilder<String>.fromJson('foo'))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(
                        <String, dynamic>{'foo': FlutterSizedBox()}),
                    getContext(),
                    getZacContext()),
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

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            () => MapTransformer.setValueForKey(
                  key: ZacBuilder<String>.fromJson('nameOfKey'),
                  value: ZacBuilder<Object>.fromJson('hello'),
                ).build(getContext(), getZacContext()).transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));

        expect(
            MapTransformer.setValueForKey(
              key: ZacBuilder<String>.fromJson('nameOfKey'),
              value: ZacBuilder<Object>.fromJson('hello'),
            ).build(getContext(), getZacContext()).transform(
                ZacTransformValue(<String, dynamic>{'a': 'a'}),
                getContext(),
                getZacContext()),
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

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isList()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(['foo']), getContext(), getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.isList()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.isMap()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isMap',
        equals: ObjectTransformer.isMap(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isMap()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(<String, dynamic>{}), getContext(),
                    getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.isMap()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.isBool()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isBool',
        equals: ObjectTransformer.isBool(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isBool()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(true), getContext(), getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.isBool()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.isString()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isString',
        equals: ObjectTransformer.isString(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isString()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(''), getContext(), getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.isString()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.isDouble()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isDouble',
        equals: ObjectTransformer.isDouble(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(5.6), getContext(), getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.isDouble()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            isFalse);

        expect(
            ObjectTransformer.isDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(''), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.isInt()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isInt',
        equals: ObjectTransformer.isInt(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isInt()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(5.6), getContext(), getZacContext()),
            isFalse);

        expect(
            ObjectTransformer.isInt()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.isInt()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(''), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.isNull()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.isNull',
        equals: ObjectTransformer.isNull(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.isNull()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(null), getContext(), getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.isNull()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(''), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.equals()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.equals',
        equals: ObjectTransformer.equals(other: ZacInt(5)),
        props: <String, dynamic>{
          'other': {'builder': 'z:1:int', 'value': 5},
        },
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.equals(other: ZacInt(5))
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            isTrue);

        expect(
            ObjectTransformer.equals(other: ZacInt(5))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('foo'), getContext(), getZacContext()),
            isFalse);
      });
    });

    testWidgets('.hashCode', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.hashCode',
        equals: ObjectTransformer.hashCode(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.hashCode()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            5.hashCode);
      });
    });

    testWidgets('.runtimeType', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.runtimeType',
        equals: ObjectTransformer.runtimeType(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.runtimeType()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            5.runtimeType);

        expect(
            ObjectTransformer.runtimeType()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('foo'), getContext(), getZacContext()),
            'foo'.runtimeType);
      });
    });

    testWidgets('.toString()', (tester) async {
      _expectFromJson<ObjectTransformer>(
        fromJson: ObjectTransformer.fromJson,
        converter: 'z:1:Transformer:Object.toString',
        equals: ObjectTransformer.toString(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            ObjectTransformer.toString()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            '5');

        expect(
            ObjectTransformer.toString()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('foo'), getContext(), getZacContext()),
            'foo');
      });
    });
  });

  group('Num', () {
    testWidgets('.toDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.toDouble',
        equals: NumTransformer.toDouble(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.toDouble()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            isA<double>().having((p0) => p0, 'is double', 5.0));

        expect(
            () => NumTransformer.toDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.toInt()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.toInt',
        equals: NumTransformer.toInt(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.toInt()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(5.1), getContext(), getZacContext()),
            isA<int>().having((p0) => p0, 'is int', 5));

        expect(
            () => NumTransformer.toInt()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.abs()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.abs',
        equals: NumTransformer.abs(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.abs().build(getContext(), getZacContext()).transform(
                ZacTransformValue(-2.5), getContext(), getZacContext()),
            2.5);

        expect(
            () => NumTransformer.abs()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.ceil()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.ceil',
        equals: NumTransformer.ceil(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.ceil()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(2.5), getContext(), getZacContext()),
            3);

        expect(
            () => NumTransformer.ceil()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.ceilToDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.ceilToDouble',
        equals: NumTransformer.ceilToDouble(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.ceilToDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(2.5), getContext(), getZacContext()),
            isA<double>().having((p0) => p0, 'double', 3.0));

        expect(
            () => NumTransformer.ceilToDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.floor()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.floor',
        equals: NumTransformer.floor(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.floor()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(2.5), getContext(), getZacContext()),
            2);

        expect(
            () => NumTransformer.floor()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.floorToDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.floorToDouble',
        equals: NumTransformer.floorToDouble(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.floorToDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(2.5), getContext(), getZacContext()),
            isA<double>().having((p0) => p0, 'double', 2.0));

        expect(
            () => NumTransformer.floorToDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.round()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.round',
        equals: NumTransformer.round(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.round()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(2.5), getContext(), getZacContext()),
            isA<int>().having((p0) => p0, 'int', 3));

        expect(
            () => NumTransformer.round()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.roundToDouble()', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.roundToDouble',
        equals: NumTransformer.roundToDouble(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.roundToDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(2.5), getContext(), getZacContext()),
            isA<double>().having((p0) => p0, 'int', 3.0));

        expect(
            () => NumTransformer.roundToDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isFinite', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isFinite',
        equals: NumTransformer.isFinite(),
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.isFinite()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(1), getContext(), getZacContext()),
            isTrue);

        expect(
            () => NumTransformer.roundToDouble()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isInfinite', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isInfinite',
        equals: NumTransformer.isInfinite(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.isInfinite()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(double.infinity), getContext(),
                    getZacContext()),
            isTrue);

        expect(
            () => NumTransformer.isInfinite()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNan', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isNan',
        equals: NumTransformer.isNan(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.isNan()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(double.nan), getContext(),
                    getZacContext()),
            isTrue);

        expect(
            () => NumTransformer.isNan()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNegative', (tester) async {
      _expectFromJson<NumTransformer>(
        fromJson: NumTransformer.fromJson,
        converter: 'z:1:Transformer:num.isNegative',
        equals: NumTransformer.isNegative(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            NumTransformer.isNegative()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(-1.0), getContext(), getZacContext()),
            isTrue);

        expect(
            () => NumTransformer.isNegative()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Int', () {
    testWidgets('.parse()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.parse',
        equals: IntTransformer.parse(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IntTransformer.parse()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('5'), getContext(), getZacContext()),
            5);

        expect(
            () => IntTransformer.parse()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue('no no no'), getContext(),
                    getZacContext()),
            throwsFormatException);

        expect(
            () => IntTransformer.parse()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.tryParse()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.tryParse',
        equals: IntTransformer.tryParse(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IntTransformer.tryParse()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('5'), getContext(), getZacContext()),
            5);

        expect(
            IntTransformer.tryParse()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue('no no no'), getContext(),
                    getZacContext()),
            isNull);

        expect(
            () => IntTransformer.tryParse()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.operatorPlusPlus()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.incr',
        equals: IntTransformer.incr(ZacInt(1)),
        props: <String, dynamic>{'by': 1},
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IntTransformer.incr(ZacInt(1))
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            6);

        expect(
            () => IntTransformer.incr(ZacInt(1))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<StateError>()));
      });
    });

    testWidgets('.operatorMinusMinus()', (tester) async {
      _expectFromJson<IntTransformer>(
        fromJson: IntTransformer.fromJson,
        converter: 'z:1:Transformer:int.decr',
        equals: IntTransformer.decr(ZacInt(1)),
        props: <String, dynamic>{'by': 1},
      );

      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            IntTransformer.decr(ZacInt(1))
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(5), getContext(), getZacContext()),
            4);

        expect(
            () => IntTransformer.decr(ZacInt(1))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<StateError>()));
      });
    });
  });

  group('String', () {
    testWidgets('.length', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.length',
        equals: StringTransformer.length(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            StringTransformer.length()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('foo'), getContext(), getZacContext()),
            3);

        expect(
            () => StringTransformer.length()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
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
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            StringTransformer.split(pattern: ZacBuilder<String>.fromJson(','))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('a,b'), getContext(), getZacContext()),
            ['a', 'b']);

        expect(
            () => StringTransformer.split(
                    pattern: ZacBuilder<String>.fromJson(','))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isEmpty', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.isEmpty',
        equals: StringTransformer.isEmpty(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            StringTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(''), getContext(), getZacContext()),
            isTrue);

        expect(
            () => StringTransformer.isEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });

    testWidgets('.isNotEmpty', (tester) async {
      _expectFromJson<StringTransformer>(
        fromJson: StringTransformer.fromJson,
        converter: 'z:1:Transformer:String.isNotEmpty',
        equals: StringTransformer.isNotEmpty(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            StringTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(''), getContext(), getZacContext()),
            isFalse);

        expect(
            () => StringTransformer.isNotEmpty()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
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
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            StringTransformer.replaceAll(ZacBuilder<String>.fromJson('xx'),
                    ZacBuilder<String>.fromJson('yy'))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue('fooxx'), getContext(), getZacContext()),
            'fooyy');

        expect(
            () => StringTransformer.replaceAll(
                    ZacBuilder<String>.fromJson('xx'),
                    ZacBuilder<String>.fromJson('yy'))
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(Object()), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Json', () {
    testWidgets('.encode()', (tester) async {
      _expectFromJson<JsonTransformer>(
        fromJson: JsonTransformer.fromJson,
        converter: 'z:1:Transformer:Json.encode',
        equals: JsonTransformer.encode(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            JsonTransformer.encode()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue(['foo', 'bar']), getContext(),
                    getZacContext()),
            '["foo","bar"]');
      });
    });

    testWidgets('.decode()', (tester) async {
      _expectFromJson<JsonTransformer>(
        fromJson: JsonTransformer.fromJson,
        converter: 'z:1:Transformer:Json.decode',
        equals: JsonTransformer.decode(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            JsonTransformer.decode()
                .build(getContext(), getZacContext())
                .transform(ZacTransformValue('["foo", "bar"]'), getContext(),
                    getZacContext()),
            ['foo', 'bar']);

        expect(
            () => JsonTransformer.decode()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });

  group('Bool', () {
    testWidgets('.negate()', (tester) async {
      _expectFromJson<BoolTransformer>(
        fromJson: BoolTransformer.fromJson,
        converter: 'z:1:Transformer:Bool.negate',
        equals: BoolTransformer.negate(),
      );
      await testWithContexts(tester, (getContext, getZacContext) {
        expect(
            BoolTransformer.negate()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(false), getContext(), getZacContext()),
            true);

        expect(
            () => JsonTransformer.decode()
                .build(getContext(), getZacContext())
                .transform(
                    ZacTransformValue(55), getContext(), getZacContext()),
            throwsA(isA<ZacTransformError>()));
      });
    });
  });
}

class _ConcatStr implements ZacBuilder<ZacTransform> {
  final String str;

  _ConcatStr(this.str);

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) {
    return ZacTransform(
      (transformValue, context, zacContext) {
        return (transformValue.value as String) + str;
      },
    );
  }
}
