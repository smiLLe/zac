import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/transformers.dart';

void main() {
  test('Convert', () {
    expect(
        ConvertTransformer().transform({
          '_converter': 'f:1:SizedBox',
        }, TestSharedValueInteractionType()),
        FlutterSizedBox());
  });

  group('List', () {
    test('.map()', () async {
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
