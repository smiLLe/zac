import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  group('ZacBool', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacBool>({
            '_converter': 'z:1:ZacBool',
            'value': false,
          }),
          ZacBool(false));

      expect(
          ConverterHelper.convertToType<ZacBool>({
            '_converter': 'z:1:ZacBool.consume',
            'family': 'foo',
          }),
          ZacBool.consume(family: 'foo'));

      expect(ZacBool.fromJson(false), ZacBool(false));
      expect(
          ZacBool.fromJson({
            '_converter': 'z:1:ZacBool',
            'value': false,
          }),
          ZacBool(false));
      expect(
          ZacBool.fromJson({
            '_converter': 'z:1:ZacBool.consume',
            'family': 'foo',
          }),
          ZacBool.consume(family: 'foo'));
      expect(
          ZacBool.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ZacBool.consume(family: 'foo'));
      expect(() => ZacBool.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ZacBool',
              'value': false,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacBool.consume(family: 'foo').getValue(zacContext), false);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: false,
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacBool.consume(family: 'foo').getValue(zacContext), false);
    });
  });

  group('ZacInt', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacInt>({
            '_converter': 'z:1:ZacInt',
            'value': 1,
          }),
          ZacInt(1));

      expect(
          ConverterHelper.convertToType<ZacInt>({
            '_converter': 'z:1:ZacInt.consume',
            'family': 'foo',
          }),
          ZacInt.consume(family: 'foo'));

      expect(ZacInt.fromJson(1), ZacInt(1));
      expect(ZacInt.fromJson(1.2), ZacInt(1));
      expect(
          ZacInt.fromJson({
            '_converter': 'z:1:ZacInt',
            'value': 1,
          }),
          ZacInt(1));
      expect(
          ZacInt.fromJson({
            '_converter': 'z:1:ZacInt.consume',
            'family': 'foo',
          }),
          ZacInt.consume(family: 'foo'));
      expect(
          ZacInt.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ZacInt.consume(family: 'foo'));
      expect(() => ZacInt.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ZacInt',
              'value': 55,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacInt.consume(family: 'foo').getValue(zacContext), 55);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: 55,
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacInt.consume(family: 'foo').getValue(zacContext), 55);
    });
  });

  group('ZacDouble', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacDouble>({
            '_converter': 'z:1:ZacDouble',
            'value': 1.0,
          }),
          ZacDouble(1.0));
      expect(
          ConverterHelper.convertToType<ZacDouble>({
            '_converter': 'z:1:ZacDouble',
            'value': 1,
          }),
          ZacDouble(1.0));

      expect(
          ConverterHelper.convertToType<ZacDouble>({
            '_converter': 'z:1:ZacDouble.consume',
            'family': 'foo',
          }),
          ZacDouble.consume(family: 'foo'));

      expect(ZacDouble.fromJson(1), ZacDouble(1.0));
      expect(ZacDouble.fromJson(1.2), ZacDouble(1.2));
      expect(
          ZacDouble.fromJson({
            '_converter': 'z:1:ZacDouble',
            'value': 1.0,
          }),
          ZacDouble(1.0));
      expect(
          ZacDouble.fromJson({
            '_converter': 'z:1:ZacDouble.consume',
            'family': 'foo',
          }),
          ZacDouble.consume(family: 'foo'));
      expect(
          ZacDouble.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ZacDouble.consume(family: 'foo'));
      expect(() => ZacDouble.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ZacDouble',
              'value': 1.0,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacDouble.consume(family: 'foo').getValue(zacContext), 1.0);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: 1.0,
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacDouble.consume(family: 'foo').getValue(zacContext), 1.0);
    });

    testWidgets('consume #2', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: 1,
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(() => ZacDouble.consume(family: 'foo').getValue(zacContext),
          throwsStateError);
    });
  });

  group('ZacString', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacString>({
            '_converter': 'z:1:ZacString',
            'value': 'hello',
          }),
          ZacString('hello'));

      expect(
          ConverterHelper.convertToType<ZacString>({
            '_converter': 'z:1:ZacString.consume',
            'family': 'foo',
          }),
          ZacString.consume(family: 'foo'));

      expect(ZacString.fromJson('hello'), ZacString('hello'));
      expect(
          ZacString.fromJson({
            '_converter': 'z:1:ZacString',
            'value': 'hello',
          }),
          ZacString('hello'));
      expect(
          ZacString.fromJson({
            '_converter': 'z:1:ZacString.consume',
            'family': 'foo',
          }),
          ZacString.consume(family: 'foo'));
      expect(
          ZacString.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ZacString.consume(family: 'foo'));
      expect(() => ZacString.fromJson(55), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ZacString',
              'value': 'hello',
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacString.consume(family: 'foo').getValue(zacContext), 'hello');
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: 'hello',
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacString.consume(family: 'foo').getValue(zacContext), 'hello');
    });
  });

  group('ZacList', () {
    test('fromJson', () {
      final compare = <String>['foo', 'bar'];
      expect(
          ConverterHelper.convertToType<ZacList>({
            '_converter': 'z:1:ZacList',
            'value': compare,
          }),
          ZacList(compare));

      expect(
          ZacList.fromJson({
            '_converter': 'z:1:ZacList',
            'value': compare,
          }),
          ZacList(compare));

      expect(
          ConverterHelper.convertToType<ZacList>({
            '_converter': 'z:1:ZacList.consume',
            'family': 'foo',
            'value': compare,
          }),
          ZacList.consume(family: 'foo'));

      expect(
          ZacList.fromJson({
            '_converter': 'z:1:ZacList.consume',
            'family': 'foo',
            'value': compare,
          }),
          ZacList.consume(family: 'foo'));

      expect(
          ZacList.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
            'value': compare,
          }),
          ZacList.consume(family: 'foo'));

      expect(ZacList.fromJson(compare), ZacList(compare));

      expect(() => ZacList.fromJson(55), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext zacContext;
      final compare = <String>['foo', 'bar'];

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ZacList',
              'value': compare,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacList.consume(family: 'foo').getValue(zacContext), compare);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;
      final compare = <String>['foo', 'bar'];

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: compare,
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacList.consume(family: 'foo').getValue(zacContext), compare);
    });
  });

  group('ZacMap', () {
    test('fromJson', () {
      final compare = <String, dynamic>{'foo': 'bar'};
      expect(
          ConverterHelper.convertToType<ZacMap>({
            '_converter': 'z:1:ZacMap',
            'value': compare,
          }),
          ZacMap(compare));

      expect(
          ConverterHelper.convertToType<ZacMap>({
            '_converter': 'z:1:ZacMap.consume',
            'family': 'foo',
          }),
          ZacMap.consume(family: 'foo'));

      expect(ZacMap.fromJson(compare), ZacMap(compare));
      expect(
          ZacMap.fromJson({
            '_converter': 'z:1:ZacMap',
            'value': compare,
          }),
          ZacMap(compare));
      expect(
          ZacMap.fromJson({
            '_converter': 'z:1:ZacMap.consume',
            'family': 'foo',
          }),
          ZacMap.consume(family: 'foo'));
      expect(
          ZacMap.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ZacMap.consume(family: 'foo'));
      expect(() => ZacMap.fromJson(55), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext zacContext;
      final compare = <String, dynamic>{'foo': 'bar'};

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ZacMap',
              'value': compare,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacMap.consume(family: 'foo').getValue(zacContext), compare);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;
      final compare = <String, dynamic>{'foo': 'bar'};

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: compare,
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacMap.consume(family: 'foo').getValue(zacContext), compare);
    });
  });

  group('ZacObject', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacObject>({
            '_converter': 'z:1:ZacObject',
            'value': 'hello',
          }),
          ZacObject('hello'));

      expect(
          ConverterHelper.convertToType<ZacObject>({
            '_converter': 'z:1:ZacObject.consume',
            'family': 'foo',
          }),
          ZacObject.consume(family: 'foo'));

      expect(ZacObject.fromJson(55), ZacObject(55));
      expect(
          ZacObject.fromJson({
            '_converter': 'z:1:ZacObject',
            'value': 55,
          }),
          ZacObject(55));
      expect(
          ZacObject.fromJson({
            '_converter': 'z:1:ZacObject.consume',
            'family': 'foo',
          }),
          ZacObject.consume(family: 'foo'));
      expect(
          ZacObject.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ZacObject.consume(family: 'foo'));
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ZacObject',
              'value': 'hello',
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacObject.consume(family: 'foo').getValue(zacContext), 'hello');
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: 'hello',
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));

      expect(ZacObject.consume(family: 'foo').getValue(zacContext), 'hello');
    });
  });

  group('ZacWidget', () {
    test('fromJson', () {
      expect(ZacWidget.fromJson({'_converter': 'f:1:SizedBox'}),
          FlutterSizedBox());

      expect(
          ConverterHelper.convertToType<ZacWidget>(
              {'_converter': 'f:1:SizedBox'}),
          isA<ZacWidget>());

      expect(() => ZacWidget.fromJson(55), throwsConverterError);
    });

    testWidgets('can be consumed through ZacWidgetConsumer', (tester) async {
      await testMap(
        tester,
        <String, dynamic>{
          '_converter': 'z:1:SharedValue.provide',
          'family': 'foo',
          'value': {
            '_converter': 'f:1:SizedBox',
            'key': KeysModel.getValueKey('FINDME'),
          },
          'transformer': [
            {
              '_converter': 'z:1:Transformer:Converter',
            }
          ],
          'child': {
            '_converter': 'z:1:ZacWidget.consume',
            'family': 'foo',
          },
        },
      );

      expect(find.byKey(const ValueKey('FINDME')), findsOneWidget);
    });
  });

  group('ListOfZacWidget', () {
    test('fromJson', () {
      expect(
          ListOfZacWidget.fromJson([
            {'_converter': 'f:1:SizedBox'}
          ]),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ConverterHelper.convertToType<ListOfZacWidget>({
            '_converter': 'z:1:ListOfZacWidget',
            'value': [
              {'_converter': 'f:1:SizedBox'}
            ],
          }),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ConverterHelper.convertToType<ListOfZacWidget>({
            '_converter': 'z:1:ListOfZacWidget.consume',
            'family': 'foo',
          }),
          ListOfZacWidget.consume(family: 'foo'));

      expect(
          ListOfZacWidget.fromJson({
            '_converter': 'z:1:ListOfZacWidget',
            'value': [
              {'_converter': 'f:1:SizedBox'}
            ],
          }),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ListOfZacWidget.fromJson({
            '_converter': 'z:1:ListOfZacWidget.consume',
            'family': 'foo',
          }),
          ListOfZacWidget.consume(family: 'foo'));
      expect(
          ListOfZacWidget.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ListOfZacWidget.consume(family: 'foo'));
      expect(() => ListOfZacWidget.fromJson(55), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: [
              {'_converter': 'f:1:SizedBox'}
            ],
            transformer: [
              IterableTransformer.map(
                transformer: [
                  ConvertTransformer(),
                ],
              )
            ],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));
      expect(ListOfZacWidgetConsume(family: 'foo').getSharedValue(zacContext),
          [FlutterSizedBox()]);
      expect(ListOfZacWidget.consume(family: 'foo').getValue(zacContext),
          isA<List<Widget>>());
    });

    testWidgets('consume #2', (tester) async {
      late ZacBuildContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              '_converter': 'z:1:ListOfZacWidget',
              'value': [
                {'_converter': 'f:1:SizedBox'}
              ]
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => zacContext = context,
            ),
          ));
      expect(ListOfZacWidgetConsume(family: 'foo').getSharedValue(zacContext),
          [FlutterSizedBox()]);
      expect(ListOfZacWidget.consume(family: 'foo').getValue(zacContext),
          isA<List<Widget>>());
    });
  });
}
