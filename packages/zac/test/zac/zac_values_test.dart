import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../flutter/models.dart';
import '../helper.dart';

Future<void> _commonConsume<TClass, TVal>({
  required WidgetTester tester,
  required TVal testVal,
  required TClass Function(
    Object family, {
    ZacTransformers? transformer,
    SharedValueConsumeType consumeType,
  })
      createConsume,
}) async {
  late ZacOriginWidgetTree origin;

  await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'foo',
        value: {
          '_converter': 'z:1:$TClass',
          'value': testVal,
        },
        transformer: ZacTransformers([ConvertTransformer()]),
        child: LeakOrigin(
          cb: (o) => origin = o,
        ),
      ));

  expect((createConsume('foo') as ConsumeValue<TVal>).getSharedValue(origin),
      testVal);

  await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'foo',
        value: testVal,
        child: LeakOrigin(
          cb: (o) => origin = o,
        ),
      ));

  expect((createConsume('foo') as ConsumeValue<TVal>).getSharedValue(origin),
      testVal);
}

void _commonCreate<TClass, TVal>({
  required TVal testVal,
  required TClass Function(TVal value, {ZacTransformers? transformer}) create,
  required TClass Function(
    Object family, {
    ZacTransformers? transformer,
    SharedValueConsumeType consumeType,
  })
      createConsume,
  required TClass Function(Object data) fromJson,
}) {
  expect(
      ConverterHelper.convertToType<TClass>({
        '_converter': 'z:1:$TClass',
        'value': testVal,
      }),
      create(testVal));

  expect(
      ConverterHelper.convertToType<TClass>({
        '_converter': 'z:1:$TClass.consume',
        'family': 'foo',
      }),
      createConsume('foo'));

  expect(
      fromJson({
        '_converter': 'z:1:$TClass',
        'value': testVal,
      }),
      create(testVal));

  expect(
      fromJson({
        '_converter': 'z:1:$TClass.consume',
        'family': 'foo',
      }),
      createConsume('foo', consumeType: const SharedValueConsumeType.watch()));

  expect(
      fromJson({
        '_converter': 'z:1:SharedValue.consume',
        'family': 'foo',
      }),
      createConsume('foo', consumeType: const SharedValueConsumeType.watch()));

  expect(
      fromJson({
        '_converter': 'z:1:$TClass',
        'value': testVal,
        'transformer': [
          {'_converter': 'z:1:Transformer:Object.runtimeType'}
        ]
      }),
      create(testVal,
          transformer: ZacTransformers([ObjectTransformer.runtimeType()])));

  expect(
      fromJson({
        '_converter': 'z:1:SharedValue.consume',
        'family': 'foo',
        'transformer': [
          {'_converter': 'z:1:Transformer:Object.runtimeType'}
        ]
      }),
      createConsume('foo',
          transformer: ZacTransformers([ObjectTransformer.runtimeType()])));
}

void main() {
  testWidgets(
      'ActualValue.getActualValue() may transform but only to same type',
      (tester) async {
    late ZacOriginWidgetTree origin;

    await testZacWidget(
        tester,
        LeakOrigin(
          cb: (o) => origin = o,
        ));

    expect(
        (ZacString('hello',
                transformer: ZacTransformers([
                  StringTransformer.replaceAll(
                      ZacString('hello'), ZacString('world'))
                ])) as ActualValue<String>)
            .getActualValue(origin),
        'world');

    expect(
        () => (ZacString('hello',
                    transformer:
                        ZacTransformers([const StringTransformer.isEmpty()]))
                as ActualValue<String>)
            .getActualValue(origin),
        throwsStateError);
  });
  group('ZacBool', () {
    test('fromJson', () {
      _commonCreate<ZacBool, bool>(
        testVal: false,
        create: ZacBool.new,
        createConsume: ZacBool.consume,
        fromJson: ZacBool.fromJson,
      );

      expect(ZacBool.fromJson(false), ZacBool(false));
      expect(() => ZacBool.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      await _commonConsume<ZacBool, bool>(
        tester: tester,
        testVal: false,
        createConsume: ZacBool.consume,
      );
    });
  });

  group('ZacInt', () {
    test('fromJson', () {
      _commonCreate<ZacInt, int>(
        testVal: 1,
        create: ZacInt.new,
        createConsume: ZacInt.consume,
        fromJson: ZacInt.fromJson,
      );

      expect(ZacInt.fromJson(1), ZacInt(1));
      expect(ZacInt.fromJson(1.2), ZacInt(1));
      expect(() => ZacInt.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      await _commonConsume<ZacInt, int>(
        tester: tester,
        testVal: 1,
        createConsume: ZacInt.consume,
      );
    });
  });

  group('ZacDouble', () {
    test('fromJson', () {
      _commonCreate<ZacDouble, double>(
        testVal: 1.0,
        create: ZacDouble.new,
        createConsume: ZacDouble.consume,
        fromJson: ZacDouble.fromJson,
      );
      expect(ZacDouble.fromJson(1), ZacDouble(1.0));
      expect(ZacDouble.fromJson(1.2), ZacDouble(1.2));
      expect(() => ZacDouble.fromJson('foo'), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      await _commonConsume<ZacDouble, double>(
        tester: tester,
        testVal: 1.0,
        createConsume: ZacDouble.consume,
      );
      await _commonConsume<ZacDouble, double>(
        tester: tester,
        testVal: 1,
        createConsume: ZacDouble.consume,
      );
    });
  });

  group('ZacString', () {
    test('fromJson', () {
      _commonCreate<ZacString, String>(
        testVal: 'hello',
        create: ZacString.new,
        createConsume: ZacString.consume,
        fromJson: ZacString.fromJson,
      );
      expect(ZacString.fromJson('hello'), ZacString('hello'));
      expect(() => ZacString.fromJson(55), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      await _commonConsume<ZacString, String>(
        tester: tester,
        testVal: 'hello',
        createConsume: ZacString.consume,
      );
    });
  });

  group('ZacList', () {
    test('fromJson', () {
      final compare = <String>['foo', 'bar'];
      _commonCreate<ZacList, List<dynamic>>(
        testVal: compare,
        create: ZacList.new,
        createConsume: ZacList.consume,
        fromJson: ZacList.fromJson,
      );
      expect(ZacList.fromJson(compare), ZacList(compare));
      expect(() => ZacList.fromJson(55), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      await _commonConsume<ZacList, List<dynamic>>(
        tester: tester,
        testVal: <String>['foo', 'bar'],
        createConsume: ZacList.consume,
      );
    });
  });

  group('ZacMap', () {
    test('fromJson', () {
      final compare = <String, dynamic>{'foo': 'bar'};
      _commonCreate<ZacMap, Map<String, dynamic>>(
        testVal: compare,
        create: ZacMap.new,
        createConsume: ZacMap.consume,
        fromJson: ZacMap.fromJson,
      );
      expect(ZacMap.fromJson(compare), ZacMap(compare));
      expect(() => ZacMap.fromJson(55), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      await _commonConsume<ZacMap, Map<String, dynamic>>(
        tester: tester,
        testVal: <String, dynamic>{'foo': 'bar'},
        createConsume: ZacMap.consume,
      );
    });
  });

  group('ZacObject', () {
    test('fromJson', () {
      _commonCreate<ZacObject, Object>(
        testVal: 'hello',
        create: ZacObject.new,
        createConsume: ZacObject.consume,
        fromJson: ZacObject.fromJson,
      );
      _commonCreate<ZacObject, Object>(
        testVal: 55,
        create: ZacObject.new,
        createConsume: ZacObject.consume,
        fromJson: ZacObject.fromJson,
      );

      expect(ZacObject.fromJson('hello'), ZacObject('hello'));
      expect(ZacObject.fromJson(55), ZacObject(55));
    });

    testWidgets('consume', (tester) async {
      await _commonConsume<ZacObject, Object>(
        tester: tester,
        testVal: 55,
        createConsume: ZacObject.consume,
      );
    });
  });

  group('ZacWidget', () {
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
          ListOfZacWidget.consume('foo'));

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
          ListOfZacWidget.consume('foo'));
      expect(
          ListOfZacWidget.fromJson({
            '_converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ListOfZacWidget.consume('foo'));
      expect(() => ListOfZacWidget.fromJson(55), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      late ZacOriginWidgetTree origin;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: [
              {'_converter': 'f:1:SizedBox'}
            ],
            transformer: ZacTransformers([
              IterableTransformer.map(
                transformer: ZacTransformers([
                  ConvertTransformer(),
                ]),
              ),
              const IterableTransformer.toList(),
            ]),
            child: LeakOrigin(
              cb: (o) {
                origin = o;
              },
            ),
          ));
      expect(ListOfZacWidgetConsume('foo').getSharedValue(origin),
          [FlutterSizedBox()]);
      expect(
          ListOfZacWidget.consume('foo').getValue(origin), isA<List<Widget>>());
    });

    testWidgets('consume #2', (tester) async {
      late ZacOriginWidgetTree origin;

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
            transformer: ZacTransformers([ConvertTransformer()]),
            child: LeakOrigin(
              cb: (o) {
                origin = o;
              },
            ),
          ));
      expect(ListOfZacWidgetConsume('foo').getSharedValue(origin),
          [FlutterSizedBox()]);
      expect(
          ListOfZacWidget.consume('foo').getValue(origin), isA<List<Widget>>());
    });
  });
}
