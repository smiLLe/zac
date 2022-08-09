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
            converterKey: 'z:1:ZacBool',
            'value': false,
          }),
          ZacBool(false));

      expect(
          ConverterHelper.convertToType<ZacBool>({
            converterKey: 'z:1:ZacBool.consume',
            'name': 'foo',
          }),
          ZacBool.consume(name: 'foo'));

      expect(ZacBool.fromJson(false), ZacBool(false));
      expect(
          ZacBool.fromJson({
            converterKey: 'z:1:ZacBool',
            'value': false,
          }),
          ZacBool(false));
      expect(
          ZacBool.fromJson({
            converterKey: 'z:1:ZacBool.consume',
            'name': 'foo',
          }),
          ZacBool.consume(name: 'foo'));
      expect(
          ZacBool.fromJson({
            converterKey: 'z:1:SharedValue.consume',
            'name': 'foo',
          }),
          ZacBool.consume(name: 'foo'));
      expect(() => ZacBool.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ZacBool',
              'value': false,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacBool.consume(name: 'foo').getValue(awContext), false);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: false,
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacBool.consume(name: 'foo').getValue(awContext), false);
    });
  });

  group('ZacInt', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacInt>({
            converterKey: 'z:1:ZacInt',
            'value': 1,
          }),
          ZacInt(1));

      expect(
          ConverterHelper.convertToType<ZacInt>({
            converterKey: 'z:1:ZacInt.consume',
            'name': 'foo',
          }),
          ZacInt.consume(name: 'foo'));

      expect(ZacInt.fromJson(1), ZacInt(1));
      expect(ZacInt.fromJson(1.2), ZacInt(1));
      expect(
          ZacInt.fromJson({
            converterKey: 'z:1:ZacInt',
            'value': 1,
          }),
          ZacInt(1));
      expect(
          ZacInt.fromJson({
            converterKey: 'z:1:ZacInt.consume',
            'name': 'foo',
          }),
          ZacInt.consume(name: 'foo'));
      expect(
          ZacInt.fromJson({
            converterKey: 'z:1:SharedValue.consume',
            'name': 'foo',
          }),
          ZacInt.consume(name: 'foo'));
      expect(() => ZacInt.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ZacInt',
              'value': 55,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacInt.consume(name: 'foo').getValue(awContext), 55);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: 55,
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacInt.consume(name: 'foo').getValue(awContext), 55);
    });
  });

  group('ZacDouble', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacDouble>({
            converterKey: 'z:1:ZacDouble',
            'value': 1.0,
          }),
          ZacDouble(1.0));
      expect(
          ConverterHelper.convertToType<ZacDouble>({
            converterKey: 'z:1:ZacDouble',
            'value': 1,
          }),
          ZacDouble(1.0));

      expect(
          ConverterHelper.convertToType<ZacDouble>({
            converterKey: 'z:1:ZacDouble.consume',
            'name': 'foo',
          }),
          ZacDouble.consume(name: 'foo'));

      expect(ZacDouble.fromJson(1), ZacDouble(1.0));
      expect(ZacDouble.fromJson(1.2), ZacDouble(1.2));
      expect(
          ZacDouble.fromJson({
            converterKey: 'z:1:ZacDouble',
            'value': 1.0,
          }),
          ZacDouble(1.0));
      expect(
          ZacDouble.fromJson({
            converterKey: 'z:1:ZacDouble.consume',
            'name': 'foo',
          }),
          ZacDouble.consume(name: 'foo'));
      expect(
          ZacDouble.fromJson({
            converterKey: 'z:1:SharedValue.consume',
            'name': 'foo',
          }),
          ZacDouble.consume(name: 'foo'));
      expect(() => ZacDouble.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ZacDouble',
              'value': 1.0,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacDouble.consume(name: 'foo').getValue(awContext), 1.0);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: 1.0,
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacDouble.consume(name: 'foo').getValue(awContext), 1.0);
    });

    testWidgets('consume #2', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: 1,
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(() => ZacDouble.consume(name: 'foo').getValue(awContext),
          throwsStateError);
    });
  });

  group('ZacString', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacString>({
            converterKey: 'z:1:ZacString',
            'value': 'hello',
          }),
          ZacString('hello'));

      expect(
          ConverterHelper.convertToType<ZacString>({
            converterKey: 'z:1:ZacString.consume',
            'name': 'foo',
          }),
          ZacString.consume(name: 'foo'));

      expect(ZacString.fromJson('hello'), ZacString('hello'));
      expect(
          ZacString.fromJson({
            converterKey: 'z:1:ZacString',
            'value': 'hello',
          }),
          ZacString('hello'));
      expect(
          ZacString.fromJson({
            converterKey: 'z:1:ZacString.consume',
            'name': 'foo',
          }),
          ZacString.consume(name: 'foo'));
      expect(
          ZacString.fromJson({
            converterKey: 'z:1:SharedValue.consume',
            'name': 'foo',
          }),
          ZacString.consume(name: 'foo'));
      expect(() => ZacString.fromJson(55), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ZacString',
              'value': 'hello',
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacString.consume(name: 'foo').getValue(awContext), 'hello');
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: 'hello',
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacString.consume(name: 'foo').getValue(awContext), 'hello');
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
            'name': 'foo',
            'value': compare,
          }),
          ZacList.consume(name: 'foo'));

      expect(
          ZacList.fromJson({
            '_converter': 'z:1:ZacList.consume',
            'name': 'foo',
            'value': compare,
          }),
          ZacList.consume(name: 'foo'));

      expect(
          ZacList.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'name': 'foo',
            'value': compare,
          }),
          ZacList.consume(name: 'foo'));

      expect(ZacList.fromJson(compare), ZacList(compare));

      expect(() => ZacList.fromJson(55), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext awContext;
      final compare = <String>['foo', 'bar'];

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ZacList',
              'value': compare,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacList.consume(name: 'foo').getValue(awContext), compare);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;
      final compare = <String>['foo', 'bar'];

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: compare,
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacList.consume(name: 'foo').getValue(awContext), compare);
    });
  });

  group('ZacMap', () {
    test('fromJson', () {
      final compare = <String, dynamic>{'foo': 'bar'};
      expect(
          ConverterHelper.convertToType<ZacMap>({
            converterKey: 'z:1:ZacMap',
            'value': compare,
          }),
          ZacMap(compare));

      expect(
          ConverterHelper.convertToType<ZacMap>({
            converterKey: 'z:1:ZacMap.consume',
            'name': 'foo',
          }),
          ZacMap.consume(name: 'foo'));

      expect(ZacMap.fromJson(compare), ZacMap(compare));
      expect(
          ZacMap.fromJson({
            converterKey: 'z:1:ZacMap',
            'value': compare,
          }),
          ZacMap(compare));
      expect(
          ZacMap.fromJson({
            converterKey: 'z:1:ZacMap.consume',
            'name': 'foo',
          }),
          ZacMap.consume(name: 'foo'));
      expect(
          ZacMap.fromJson({
            converterKey: 'z:1:SharedValue.consume',
            'name': 'foo',
          }),
          ZacMap.consume(name: 'foo'));
      expect(() => ZacMap.fromJson(55), throwsConverterError);
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext awContext;
      final compare = <String, dynamic>{'foo': 'bar'};

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ZacMap',
              'value': compare,
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacMap.consume(name: 'foo').getValue(awContext), compare);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;
      final compare = <String, dynamic>{'foo': 'bar'};

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: compare,
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacMap.consume(name: 'foo').getValue(awContext), compare);
    });
  });

  group('ZacObject', () {
    test('fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacObject>({
            converterKey: 'z:1:ZacObject',
            'value': 'hello',
          }),
          ZacObject('hello'));

      expect(
          ConverterHelper.convertToType<ZacObject>({
            converterKey: 'z:1:ZacObject.consume',
            'name': 'foo',
          }),
          ZacObject.consume(name: 'foo'));

      expect(ZacObject.fromJson(55), ZacObject(55));
      expect(
          ZacObject.fromJson({
            converterKey: 'z:1:ZacObject',
            'value': 55,
          }),
          ZacObject(55));
      expect(
          ZacObject.fromJson({
            converterKey: 'z:1:ZacObject.consume',
            'name': 'foo',
          }),
          ZacObject.consume(name: 'foo'));
      expect(
          ZacObject.fromJson({
            converterKey: 'z:1:SharedValue.consume',
            'name': 'foo',
          }),
          ZacObject.consume(name: 'foo'));
    });

    testWidgets('consume ActualValue', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ZacObject',
              'value': 'hello',
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacObject.consume(name: 'foo').getValue(awContext), 'hello');
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: 'hello',
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));

      expect(ZacObject.consume(name: 'foo').getValue(awContext), 'hello');
    });
  });

  group('ZacWidget', () {
    test('fromJson', () {
      expect(ZacWidget.fromJson({converterKey: 'f:1:SizedBox'}),
          FlutterSizedBox());

      expect(
          ConverterHelper.convertToType<ZacWidget>(
              {converterKey: 'f:1:SizedBox'}),
          isA<ZacWidget>());

      expect(() => ZacWidget.fromJson(55), throwsConverterError);
    });

    testWidgets('can be consumed through ZacWidgetConsumer', (tester) async {
      await testMap(
        tester,
        <String, dynamic>{
          converterKey: 'z:1:SharedValue.provide',
          'name': 'foo',
          'value': {
            converterKey: 'f:1:SizedBox',
            'key': KeysModel.getValueKey('FINDME'),
          },
          'transformer': [
            {
              converterKey: 'z:1:Transformer:Converter',
            }
          ],
          'child': {
            converterKey: 'z:1:ZacWidget.consume',
            'name': 'foo',
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
            {converterKey: 'f:1:SizedBox'}
          ]),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ConverterHelper.convertToType<ListOfZacWidget>({
            converterKey: 'z:1:ListOfZacWidget',
            'value': [
              {converterKey: 'f:1:SizedBox'}
            ],
          }),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ConverterHelper.convertToType<ListOfZacWidget>({
            converterKey: 'z:1:ListOfZacWidget.consume',
            'name': 'foo',
          }),
          ListOfZacWidget.consume(name: 'foo'));

      expect(
          ListOfZacWidget.fromJson({
            converterKey: 'z:1:ListOfZacWidget',
            'value': [
              {converterKey: 'f:1:SizedBox'}
            ],
          }),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ListOfZacWidget.fromJson({
            converterKey: 'z:1:ListOfZacWidget.consume',
            'name': 'foo',
          }),
          ListOfZacWidget.consume(name: 'foo'));
      expect(
          ListOfZacWidget.fromJson({
            converterKey: 'z:1:SharedValue.consume',
            'name': 'foo',
          }),
          ListOfZacWidget.consume(name: 'foo'));
      expect(() => ListOfZacWidget.fromJson(55), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: [
              {converterKey: 'f:1:SizedBox'}
            ],
            transformer: [
              ListTransformer.map(
                transformer: [
                  ConvertTransformer(),
                ],
              )
            ],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));
      expect(ListOfZacWidgetConsume(name: 'foo').getSharedValue(awContext),
          [FlutterSizedBox()]);
      expect(ListOfZacWidget.consume(name: 'foo').getValue(awContext),
          isA<List<Widget>>());
    });

    testWidgets('consume #2', (tester) async {
      late ZacBuildContext awContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            name: 'foo',
            value: {
              converterKey: 'z:1:ListOfZacWidget',
              'value': [
                {converterKey: 'f:1:SizedBox'}
              ]
            },
            transformer: [ConvertTransformer()],
            child: LeakContext(
              cb: (context) => awContext = context,
            ),
          ));
      expect(ListOfZacWidgetConsume(name: 'foo').getSharedValue(awContext),
          [FlutterSizedBox()]);
      expect(ListOfZacWidget.consume(name: 'foo').getValue(awContext),
          isA<List<Widget>>());
    });
  });
}
