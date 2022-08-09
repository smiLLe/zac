import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/shared_value/shared_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/shared_value/transformers.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
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
              .transform(['foo', 'oof'], SharedValueInteractionType.other()),
          ['foobar', 'oofbar']);

      expect(
          () => ListTransformer.map(transformer: [_ConcatStr('bar')])
              .transform(55, SharedValueInteractionType.other()),
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
              {'a': 'foo', 'b': 'oof'}, SharedValueInteractionType.other()),
          {'a': 'foobar', 'b': 'oofbar'});

      expect(
          () => MapTransformer.mapValues(transformer: [_ConcatStr('bar')])
              .transform(55, SharedValueInteractionType.other()),
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
