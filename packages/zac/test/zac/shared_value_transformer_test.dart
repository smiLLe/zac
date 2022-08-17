import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/update_context.dart';

import '../helper.dart';

void main() {
  test('Convert', () {
    expect(
        ConvertTransformer().transform({
          '_converter': 'f:1:SizedBox',
        }, TestSharedValueInteractionType()),
        FlutterSizedBox());
  });

  group('List', () {
    test('.map()', () {
      expect(
          ConverterHelper.convertToType<ListTransformer>({
            '_converter': 'z:1:Transformer:List.map',
            'transformer': <Map<String, dynamic>>[],
          }),
          ListTransformer.map(transformer: []));
      expect(
          ListTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:List.map',
            'transformer': <Map<String, dynamic>>[],
          }),
          ListTransformer.map(transformer: []));

      expect(
          ListTransformer.map(transformer: [_ConcatStr('bar')])
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          ['foobar', 'oofbar']);

      expect(
          () => ListTransformer.map(transformer: [_ConcatStr('bar')])
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<SharedValueTransformError>()));
    });

    test('.first', () {
      expect(
          ConverterHelper.convertToType<ListTransformer>({
            '_converter': 'z:1:Transformer:List.first',
          }),
          ListTransformer.first());
      expect(
          ListTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:List.first',
          }),
          ListTransformer.first());

      expect(
          ListTransformer.first()
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          'foo');

      expect(
          () => ListTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<SharedValueTransformError>()));
    });

    test('.last', () {
      expect(
          ConverterHelper.convertToType<ListTransformer>({
            '_converter': 'z:1:Transformer:List.last',
          }),
          ListTransformer.last());
      expect(
          ListTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:List.last',
          }),
          ListTransformer.last());

      expect(
          ListTransformer.last()
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          'oof');

      expect(
          () => ListTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<SharedValueTransformError>()));
    });

    test('.single', () {
      expect(
          ConverterHelper.convertToType<ListTransformer>({
            '_converter': 'z:1:Transformer:List.single',
          }),
          ListTransformer.single());
      expect(
          ListTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:List.single',
          }),
          ListTransformer.single());

      expect(
          ListTransformer.single()
              .transform(['foo'], TestSharedValueInteractionType()),
          'foo');

      expect(
          () => ListTransformer.single()
              .transform(['foo', 'oof'], TestSharedValueInteractionType()),
          throwsStateError);

      expect(
          () => ListTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<SharedValueTransformError>()));
    });

    test('.length', () {
      expect(
          ConverterHelper.convertToType<ListTransformer>({
            '_converter': 'z:1:Transformer:List.length',
          }),
          ListTransformer.length());
      expect(
          ListTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:List.length',
          }),
          ListTransformer.length());

      expect(
          ListTransformer.length().transform(
              ['foo', 'foo', 'foo', 'foo'], TestSharedValueInteractionType()),
          4);

      expect(
          () => ListTransformer.first()
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<SharedValueTransformError>()));
    });
  });
  group('Map', () {
    test('.mapValues()', () async {
      expect(
          ConverterHelper.convertToType<MapTransformer>({
            '_converter': 'z:1:Transformer:Map.mapValues',
            'transformer': <Map<String, dynamic>>[],
          }),
          MapTransformer.mapValues(transformer: []));
      expect(
          MapTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:Map.mapValues',
            'transformer': <Map<String, dynamic>>[],
          }),
          MapTransformer.mapValues(transformer: []));

      expect(
          MapTransformer.mapValues(transformer: [_ConcatStr('bar')]).transform(
              {'a': 'foo', 'b': 'oof'}, TestSharedValueInteractionType()),
          {'a': 'foobar', 'b': 'oofbar'});

      expect(
          () => MapTransformer.mapValues(transformer: [_ConcatStr('bar')])
              .transform(55, TestSharedValueInteractionType()),
          throwsA(isA<SharedValueTransformError>()));
    });
  });

  group('Object', () {
    test('.isList()', () {
      expect(
          ConverterHelper.convertToType<ObjectTransformer>({
            '_converter': 'z:1:Transformer:Object.isList',
          }),
          ObjectTransformer.isList());
      expect(
          ObjectTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:Object.isList',
          }),
          ObjectTransformer.isList());

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
      expect(
          ConverterHelper.convertToType<ObjectTransformer>({
            '_converter': 'z:1:Transformer:Object.isMap',
          }),
          ObjectTransformer.isMap());
      expect(
          ObjectTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:Object.isMap',
          }),
          ObjectTransformer.isMap());

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
      expect(
          ConverterHelper.convertToType<ObjectTransformer>({
            '_converter': 'z:1:Transformer:Object.equals',
            'other': 5,
          }),
          ObjectTransformer.equals(other: 5));
      expect(
          ObjectTransformer.fromJson(<String, dynamic>{
            '_converter': 'z:1:Transformer:Object.equals',
            'other': 5,
          }),
          ObjectTransformer.equals(other: 5));

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
        expect(
            ConverterHelper.convertToType<ObjectTransformer>({
              '_converter': 'z:1:Transformer:Object.equalsSharedValue',
              'family': 'shared',
            }),
            ObjectTransformer.equalsSharedValue(
                family: 'shared',
                consumeType: const SharedValueConsumeType.read()));
        expect(
            ObjectTransformer.fromJson(<String, dynamic>{
              '_converter': 'z:1:Transformer:Object.equalsSharedValue',
              'family': 'shared',
            }),
            ObjectTransformer.equalsSharedValue(
                family: 'shared',
                consumeType: const SharedValueConsumeType.read()));
      });

      test('throws if no ZacContext found', () {
        expect(
            () => ObjectTransformer.equalsSharedValue(
                    family: 'shared',
                    consumeType: const SharedValueConsumeType.read())
                .transform('ignore', TestSharedValueInteractionType()),
            throwsA(isA<SharedValueTransformError>()));
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
}

class _ConcatStr implements SharedValueTransformer {
  final String str;

  _ConcatStr(this.str);

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    return (value as String) + str;
  }
}

class TestSharedValueInteractionType extends SharedValueInteractionType {}
