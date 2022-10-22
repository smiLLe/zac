import 'package:riverpod/riverpod.dart';
import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../flutter/models.dart';
import '../helper.dart';

part 'zac_values_test.freezed.dart';
part 'zac_values_test.g.dart';

class CustomData {}

@defaultConverterFreezed
class ZacValueTest with _$ZacValueTest {
  factory ZacValueTest.fromJson(Map<String, dynamic> json) =>
      _$ZacValueTestFromJson(json);

  factory ZacValueTest({
    required ZacValue<int> value,
    required ZacValue<int> simple,
    required ZacValue<int> watch,
    required ZacValue<int> read,
    ZacValue<DateTime>? date,
    ZacValue<CustomData>? custom,
  }) = _ZacValueTest;
}

@defaultConverterFreezed
class ZacValueReadTest with _$ZacValueReadTest {
  factory ZacValueReadTest.fromJson(Map<String, dynamic> json) =>
      _$ZacValueReadTestFromJson(json);

  factory ZacValueReadTest({
    required ZacValueRead<int> value,
    required ZacValueRead<int> simple,
    required ZacValueRead<int> read,
  }) = _ZacValueReadTest;
}

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
  late ZacContext zacContext;

  await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'foo',
        value: {
          'converter': 'z:1:$TClass',
          'value': testVal,
        },
        transformer: ZacTransformers([ConvertTransformer()]),
        child: LeakContext(
          cb: (o) => zacContext = o,
        ),
      ));

  expect(
      (createConsume('foo') as ConsumeValue<TVal>).getSharedValue(zacContext),
      testVal);

  await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'foo',
        value: testVal,
        child: LeakContext(
          cb: (o) => zacContext = o,
        ),
      ));

  expect(
      (createConsume('foo') as ConsumeValue<TVal>).getSharedValue(zacContext),
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
        'converter': 'z:1:$TClass',
        'value': testVal,
      }),
      create(testVal));

  expect(
      ConverterHelper.convertToType<TClass>({
        'converter': 'z:1:$TClass.consume',
        'family': 'foo',
      }),
      createConsume('foo'));

  expect(
      fromJson({
        'converter': 'z:1:$TClass',
        'value': testVal,
      }),
      create(testVal));

  expect(
      fromJson({
        'converter': 'z:1:$TClass.consume',
        'family': 'foo',
      }),
      createConsume('foo', consumeType: const SharedValueConsumeType.watch()));

  expect(
      fromJson({
        'converter': 'z:1:SharedValue.consume',
        'family': 'foo',
      }),
      createConsume('foo', consumeType: const SharedValueConsumeType.watch()));

  expect(
      fromJson({
        'converter': 'z:1:$TClass',
        'value': testVal,
        'transformer': [
          {'converter': 'z:1:Transformer:Object.runtimeType'}
        ]
      }),
      create(testVal,
          transformer: ZacTransformers([ObjectTransformer.runtimeType()])));

  expect(
      fromJson({
        'converter': 'z:1:SharedValue.consume',
        'family': 'foo',
        'transformer': [
          {'converter': 'z:1:Transformer:Object.runtimeType'}
        ]
      }),
      createConsume('foo',
          transformer: ZacTransformers([ObjectTransformer.runtimeType()])));
}

void main() {
  test('Create a ZacValue', () {
    expect(ZacValue<int>.fromJson(5), ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValue<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:SharedValue', 'value': 5}),
        ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValue<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:SharedValue.watch',
          'family': 'shared'
        }),
        ZacValueConsume<int>.watch(family: 'shared'));

    expect(
        ZacValue<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:SharedValue.read',
          'family': 'shared'
        }),
        ZacValueConsume<int>.read(family: 'shared'));

    final now = DateTime.now();
    expect(ZacValue<DateTime>.fromJson(now.toString()),
        ZacValueConsume<DateTime>.simple(value: now));

    expect(
        ZacValue<Map<String, dynamic>>.fromJson(
            <String, dynamic>{'foo': 'bar'}),
        ZacValueConsume<Map<String, dynamic>>.simple(
            value: <String, dynamic>{'foo': 'bar'}));

    expect(ZacValue<List>.fromJson(<dynamic>[1, 'foo']),
        ZacValueConsume<List>.simple(value: <dynamic>[1, 'foo']));

    expect(
        ZacValue<FlutterWidget>.fromJson(
            <String, dynamic>{'converter': 'f:1:SizedBox'}),
        ZacValueConsume<FlutterWidget>.simple(value: FlutterSizedBox()));

    expect(
        () => ZacValue<int>.fromJson(() {}),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('because the data given is not supported'))));
  });

  test('Create a ZacValueRead', () {
    expect(
        ZacValueRead<int>.fromJson(5), ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValueRead<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:SharedValue', 'value': 5}),
        ZacValueConsume<int>.simple(value: 5));

    expect(
        () => ZacValueRead<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:SharedValue.watch',
              'family': 'shared'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacValueRead<int>"'))));

    expect(
        ZacValueRead<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:SharedValue.read',
          'family': 'shared'
        }),
        ZacValueConsume<int>.read(family: 'shared'));

    final now = DateTime.now();
    expect(ZacValueRead<DateTime>.fromJson(now.toString()),
        ZacValueConsume<DateTime>.simple(value: now));

    expect(
        ZacValueRead<Map<String, dynamic>>.fromJson(
            <String, dynamic>{'foo': 'bar'}),
        ZacValueConsume<Map<String, dynamic>>.simple(
            value: <String, dynamic>{'foo': 'bar'}));

    expect(ZacValueRead<List>.fromJson(<dynamic>[1, 'foo']),
        ZacValueConsume<List>.simple(value: <dynamic>[1, 'foo']));

    expect(
        ZacValueRead<FlutterWidget>.fromJson(
            <String, dynamic>{'converter': 'f:1:SizedBox'}),
        ZacValueConsume<FlutterWidget>.simple(value: FlutterSizedBox()));

    expect(
        () => ZacValueRead<int>.fromJson(() {}),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('because the data given is not supported'))));
  });

  test(
      'ZacValueConsume.simple will throw error in .fromJson if the value has a wrong type',
      () {
    expect(
        () => ZacValueConsume<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:SharedValue',
              'value': 'not valid'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create ZacValueConsume<int>'))));

    expect(
        () => ZacValueConsume<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:SharedValue',
              'value': 'not valid',
              'transformer': <Object?>[]
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create ZacValueConsume<int>'))));

    expect(
        () => ZacValueConsume<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:SharedValue',
              'value': 'not valid',
              'transformer': <Object?>[
                {'converter': 'z:1:Transformer:Object.toString'}
              ]
            }),
        returnsNormally);

    expect(
        () => ZacValueConsume<Object?>.fromJson(
            <String, dynamic>{'converter': 'z:1:SharedValue', 'value': 'foo'}),
        returnsNormally);

    expect(
        () => ZacValueConsume<Object?>.fromJson(
            <String, dynamic>{'converter': 'z:1:SharedValue', 'value': null}),
        returnsNormally);

    expect(
        () => ZacValueConsume<Object>.fromJson(
            <String, dynamic>{'converter': 'z:1:SharedValue', 'value': 'foo'}),
        returnsNormally);
  });

  testWidgets('Read/Watch an exposed value', (tester) async {
    late ZacContext zacContext;

    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          family: 'shared',
          value: 5,
          child: LeakContext(
            cb: (o) => zacContext = o,
          ),
        ));

    expect(
        ZacValueConsume<int>.watch(family: 'shared').getValue(zacContext), 5);
    expect(ZacValueConsume<int>.read(family: 'shared').getValue(zacContext), 5);

    expect(
        ZacValueConsume<String>.watch(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        '5');

    expect(
        () => ZacValueConsume<String>.watch(
              family: 'shared',
            ).getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to return a SharedValue in '))));

    expect(
        () => ZacValueConsume<int>.watch(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('Unexpected type found after transforming a consumed'))));

    expect(
        ZacValueConsume<String>.read(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        '5');

    expect(
        () => ZacValueConsume<String>.read(
              family: 'shared',
            ).getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to return a SharedValue in '))));

    expect(
        () => ZacValueConsume<int>.read(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('Unexpected type found after transforming a consumed'))));
  });

  testWidgets(
      'ActualValue.getActualValue() may transform but only to same type',
      (tester) async {
    late ZacContext zacContext;

    await testZacWidget(
        tester,
        LeakContext(
          cb: (o) => zacContext = o,
        ));

    expect(
        (ZacString('hello',
                transformer: ZacTransformers([
                  StringTransformer.replaceAll(
                      ZacString('hello'), ZacString('world'))
                ])) as ActualValue<String>)
            .getActualValue(zacContext),
        'world');

    expect(
        () => (ZacString('hello',
                    transformer:
                        ZacTransformers([const StringTransformer.isEmpty()]))
                as ActualValue<String>)
            .getActualValue(zacContext),
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
          'converter': 'z:1:SharedValue.provide',
          'family': 'foo',
          'value': {
            'converter': 'f:1:SizedBox',
            'key': KeysModel.getValueKey('FINDME'),
          },
          'transformer': [
            {
              'converter': 'z:1:Transformer:Converter',
            }
          ],
          'child': {
            'converter': 'z:1:ZacWidget.consume',
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
            {'converter': 'f:1:SizedBox'}
          ]),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ConverterHelper.convertToType<ListOfZacWidget>({
            'converter': 'z:1:ListOfZacWidget',
            'value': [
              {'converter': 'f:1:SizedBox'}
            ],
          }),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ConverterHelper.convertToType<ListOfZacWidget>({
            'converter': 'z:1:ListOfZacWidget.consume',
            'family': 'foo',
          }),
          ListOfZacWidget.consume('foo'));

      expect(
          ListOfZacWidget.fromJson({
            'converter': 'z:1:ListOfZacWidget',
            'value': [
              {'converter': 'f:1:SizedBox'}
            ],
          }),
          ListOfZacWidget([FlutterSizedBox()]));

      expect(
          ListOfZacWidget.fromJson({
            'converter': 'z:1:ListOfZacWidget.consume',
            'family': 'foo',
          }),
          ListOfZacWidget.consume('foo'));
      expect(
          ListOfZacWidget.fromJson({
            'converter': 'z:1:SharedValue.consume',
            'family': 'foo',
          }),
          ListOfZacWidget.consume('foo'));
      expect(() => ListOfZacWidget.fromJson(55), throwsConverterError);
    });

    testWidgets('consume', (tester) async {
      late ZacContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: [
              {'converter': 'f:1:SizedBox'}
            ],
            transformer: ZacTransformers([
              IterableTransformer.map(
                transformer: ZacTransformers([
                  ConvertTransformer(),
                ]),
              ),
              const IterableTransformer.toList(),
            ]),
            child: LeakContext(
              cb: (o) {
                zacContext = o;
              },
            ),
          ));
      expect(ListOfZacWidgetConsume('foo').getSharedValue(zacContext),
          [FlutterSizedBox()]);
      expect(ListOfZacWidget.consume('foo').getValue(zacContext),
          isA<List<Widget>>());
    });

    testWidgets('consume #2', (tester) async {
      late ZacContext zacContext;

      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'foo',
            value: {
              'converter': 'z:1:ListOfZacWidget',
              'value': [
                {'converter': 'f:1:SizedBox'}
              ]
            },
            transformer: ZacTransformers([ConvertTransformer()]),
            child: LeakContext(
              cb: (o) {
                zacContext = o;
              },
            ),
          ));
      expect(ListOfZacWidgetConsume('foo').getSharedValue(zacContext),
          [FlutterSizedBox()]);
      expect(ListOfZacWidget.consume('foo').getValue(zacContext),
          isA<List<Widget>>());
    });
  });
}
