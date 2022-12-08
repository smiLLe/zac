import 'package:flutter/widgets.dart';
import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

class _TestBuilder implements ZacBuilder<String> {
  final String? str;

  _TestBuilder(this.str);

  factory _TestBuilder.fromJson(Map<String, dynamic> data) {
    return _TestBuilder(data['str'] as String?);
  }

  @override
  String build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return str!;
  }

  @override
  String? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return str;
  }
}

Matcher _throwsOnInvalidData<T>() {
  return throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
      contains('It was not possible to convert data to ZacValue<$T>.')));
}

void main() {
  test('ZacValue is in converters', () {
    expectInConverter(
        ['z:1:ZacValue.builder', 'z:1:ZacValue.value', 'z:1:ZacValue.consume'],
        ZacValue.fromJson);
  });

  test('Explicitly create ZacValue.value', () {
    expect(
        ZacValue<int>.fromJson({
          'converter': 'z:1:ZacValue.value',
          'value': 4,
        }),
        ZacValue<int>.value(value: 4));
  });

  group('ZacValue.builder', () {
    test('cCan be explicitly created', () {
      expect(
          ZacValue<Widget>.fromJson({
            'converter': 'z:1:ZacValue.builder',
            'builder': {'converter': 'f:1:SizedBox'},
          }),
          ZacValue<Widget>.builder(builder: FlutterSizedBox()));
    });

    test('can be created through a registered converter', () {
      expect(ZacValue<Widget>.fromJson({'converter': 'f:1:SizedBox'}),
          ZacValue<Widget>.builder(builder: FlutterSizedBox()));
    });

    test(
        '.builder may return a value of a different type but will then require a transformer',
        () {
      allConverter = {...allConverter, 'test': _TestBuilder.fromJson};
      expect(
          () => ZacValue<int>.fromJson({
                'converter': 'z:1:ZacValue.builder',
                'builder': {'converter': 'test', 'str': 'hello'},
                'transformer': [
                  {'converter': 'z:1:Transformer:String.length'}
                ]
              }),
          returnsNormally);
    });

    test(
        'will throw if a builder does not return a value of T and has no transformer',
        () {
      allConverter = {...allConverter, 'test': _TestBuilder.fromJson};

      expect(
          () => ZacValue<int>.fromJson({
                'converter': 'z:1:ZacValue.builder',
                'builder': {'converter': 'test', 'str': 'hello'},
              }),
          throwsAssertionError);
    });
  });

  test('Explicitly create ZacValue.consume', () {
    expect(
        ZacValue<Widget>.fromJson({
          'converter': 'z:1:ZacValue.consume',
          'family': 'shared',
        }),
        ZacValue<Widget>.consume(family: 'shared'));
  });

  test('ZacValue<num>', () {
    expect(ZacValue<num>.fromJson(5), ZacValue<num>.value(value: 5));
    expect(ZacValue<num>.fromJson(5.1), ZacValue<num>.value(value: 5.1));
    expect(() => ZacValue<num>.fromJson(''), _throwsOnInvalidData<num>());
  });

  test('ZacValue<int>', () {
    expect(ZacValue<int>.fromJson(5), ZacValue<int>.value(value: 5));
    expect(ZacValue<int>.fromJson(5.1), ZacValue<int>.value(value: 5));
    expect(() => ZacValue<int>.fromJson(''), _throwsOnInvalidData<int>());
  });

  test('ZacValue<double>', () {
    expect(ZacValue<double>.fromJson(5), ZacValue<double>.value(value: 5.0));
    expect(ZacValue<double>.fromJson(5.1), ZacValue<double>.value(value: 5.1));
    expect(() => ZacValue<double>.fromJson(''), _throwsOnInvalidData<double>());
  });

  test('ZacValue<String>', () {
    expect(
        ZacValue<String>.fromJson('foo'), ZacValue<String>.value(value: 'foo'));
    expect(() => ZacValue<String>.fromJson(1), _throwsOnInvalidData<String>());
  });

  test('ZacValue<bool>', () {
    expect(ZacValue<bool>.fromJson(false), ZacValue<bool>.value(value: false));
    expect(() => ZacValue<bool>.fromJson(1), _throwsOnInvalidData<bool>());
  });

  test('ZacValue<DateTime>', () {
    final now = DateTime.now();
    expect(ZacValue<DateTime>.fromJson(now.toIso8601String()),
        ZacValue<DateTime>.value(value: now));
    expect(
        () => ZacValue<DateTime>.fromJson(1), _throwsOnInvalidData<DateTime>());
  });

  test('ZacValue<Object>', () {
    final now = DateTime.now();
    expect(ZacValue<Object>.fromJson(now.toIso8601String()),
        ZacValue<Object>.value(value: now.toIso8601String()));

    expect(ZacValue<Object>.fromJson(5.1), ZacValue<Object>.value(value: 5.1));
  });

  // group('ZacInt', () {
  //   test('can be created from json', () {
  //     expect(ZacInt.fromJson(5), ZacInt(value: 5));

  //     expect(ZacInt.fromJson(5.1), ZacInt(value: 5));

  //     expectConvertToZacBuilder<ZacInt, int>(json: {
  //       'converter': 'z:1:int',
  //       'value': 5,
  //     }, expected: ZacInt(value: 5));

  //     expectConvertToZacBuilder<ZacInt, int>(json: {
  //       'converter': 'z:1:int',
  //       'value': 5.1,
  //     }, expected: ZacInt(value: 5));

  //     expectConvertConsumeSharedValue<ZacInt, int>(
  //       converter: 'z:1:int.consume',
  //       create: ZacInt.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacInt, int>(
  //       tester: tester,
  //       builder: ZacInt(value: 5),
  //       expectValue: 5,
  //       expectValueOrNull: 5,
  //     );

  //     await expectConsumedValueFromZacBuilder<int, int>(
  //       tester: tester,
  //       createBuilder: ZacInt.consume,
  //       expectValue: 5,
  //       sharedValue: 5,
  //     );
  //   });
  // });

  // group('ZacDouble', () {
  //   test('can be created', () {
  //     expect(ZacDouble.fromJson(5), ZacDouble(value: 5.0));

  //     expect(ZacDouble.fromJson(5.1), ZacDouble(value: 5.1));

  //     expectConvertToZacBuilder<ZacDouble, double>(json: {
  //       'converter': 'z:1:double',
  //       'value': 5,
  //     }, expected: ZacDouble(value: 5.0));

  //     expectConvertToZacBuilder<ZacDouble, double>(json: {
  //       'converter': 'z:1:double',
  //       'value': 5.1,
  //     }, expected: ZacDouble(value: 5.1));

  //     expectConvertConsumeSharedValue<ZacDouble, double>(
  //       converter: 'z:1:double.consume',
  //       create: ZacDouble.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacDouble, double>(
  //       tester: tester,
  //       builder: ZacDouble(value: 5.1),
  //       expectValue: 5.1,
  //       expectValueOrNull: 5.1,
  //     );

  //     await expectConsumedValueFromZacBuilder<double, double>(
  //       tester: tester,
  //       createBuilder: ZacDouble.consume,
  //       expectValue: 5.1,
  //       sharedValue: 5.1,
  //     );
  //   });
  // });

  // group('ZacNum', () {
  //   test('can be created', () {
  //     expect(ZacNum.fromJson(5), ZacNum(value: 5));

  //     expect(ZacNum.fromJson(5.1), ZacNum(value: 5.1));

  //     expectConvertToZacBuilder<ZacNum, num>(json: {
  //       'converter': 'z:1:num',
  //       'value': 5,
  //     }, expected: ZacNum(value: 5));

  //     expectConvertToZacBuilder<ZacNum, num>(json: {
  //       'converter': 'z:1:num',
  //       'value': 5.1,
  //     }, expected: ZacNum(value: 5.1));

  //     expectConvertConsumeSharedValue<ZacNum, num>(
  //       converter: 'z:1:num.consume',
  //       create: ZacNum.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacNum, num>(
  //       tester: tester,
  //       builder: ZacNum(value: 5),
  //       expectValue: 5,
  //       expectValueOrNull: 5,
  //     );

  //     await expectConsumedValueFromZacBuilder<num, num>(
  //       tester: tester,
  //       createBuilder: ZacNum.consume,
  //       expectValue: 5,
  //       sharedValue: 5,
  //     );
  //   });
  // });

  // group('ZacString', () {
  //   test('can be created', () {
  //     expect(ZacString.fromJson('hello'), ZacString(value: 'hello'));

  //     expectConvertToZacBuilder<ZacString, String>(json: {
  //       'converter': 'z:1:String',
  //       'value': 'hello',
  //     }, expected: ZacString(value: 'hello'));

  //     expectConvertConsumeSharedValue<ZacString, String>(
  //       converter: 'z:1:String.consume',
  //       create: ZacString.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacString, String>(
  //       tester: tester,
  //       builder: ZacString(value: 'hello'),
  //       expectValue: 'hello',
  //       expectValueOrNull: 'hello',
  //     );

  //     await expectConsumedValueFromZacBuilder<String, String>(
  //       tester: tester,
  //       createBuilder: ZacString.consume,
  //       expectValue: 'hello',
  //       sharedValue: 'hello',
  //     );
  //   });
  // });

  // group('ZacBool', () {
  //   test('can be created', () {
  //     expectConvertToZacBuilder<ZacBool, bool>(json: {
  //       'converter': 'z:1:bool',
  //       'value': false,
  //     }, expected: ZacBool(value: false));

  //     expectConvertConsumeSharedValue<ZacBool, bool>(
  //       converter: 'z:1:bool.consume',
  //       create: ZacBool.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacBool, bool>(
  //       tester: tester,
  //       builder: ZacBool(value: false),
  //       expectValue: false,
  //       expectValueOrNull: false,
  //     );

  //     await expectConsumedValueFromZacBuilder<bool, bool>(
  //       tester: tester,
  //       createBuilder: ZacBool.consume,
  //       expectValue: false,
  //       sharedValue: false,
  //     );
  //   });
  // });

  // group('ZacObject', () {
  //   test('can be created', () {
  //     final obj = Object();
  //     expectConvertToZacBuilder<ZacObject, Object>(json: {
  //       'converter': 'z:1:Object',
  //       'value': obj,
  //     }, expected: ZacObject(value: obj));

  //     expectConvertConsumeSharedValue<ZacObject, Object>(
  //       converter: 'z:1:Object.consume',
  //       create: ZacObject.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     final obj = Object();
  //     await expectValueFromZacBuilder<ZacObject, Object>(
  //       tester: tester,
  //       builder: ZacObject(value: obj),
  //       expectValue: obj,
  //       expectValueOrNull: obj,
  //     );

  //     await expectConsumedValueFromZacBuilder<Object, Object>(
  //       tester: tester,
  //       createBuilder: ZacObject.consume,
  //       expectValue: obj,
  //       sharedValue: obj,
  //     );
  //   });
  // });

  // group('ZacFlutterWidget', () {
  //   test('can be created', () {
  //     expectConvertToZacBuilder<ZacFlutterWidget, Widget>(json: {
  //       'converter': 'z:1:FlutterWidget',
  //       'value': {'converter': 'f:1:SizedBox'},
  //     }, expected: ZacFlutterWidget(value: FlutterSizedBox()));

  //     expectConvertConsumeSharedValue<ZacFlutterWidget, FlutterWidget>(
  //       converter: 'z:1:FlutterWidget.consume',
  //       create: ZacFlutterWidget.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await tester.pumpWidget(
  //       ZacUpdateContext(
  //         builder: (zacContext) {
  //           return ZacFlutterWidget(
  //             value: FlutterSizedBox(
  //               key: FlutterValueKey('FIND_ME'),
  //             ),
  //           ).build(zacContext);
  //         },
  //       ),
  //     );
  //     expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);

  //     await tester.pumpWidget(
  //       ProviderScope(
  //         child: ZacWidget(
  //           data: SharedValueProviderBuilder(
  //             value: FlutterSizedBox(
  //               key: FlutterValueKey('FIND_ME_2'),
  //             ),
  //             family: 'shared',
  //             child: TestBuildCustomWidget(
  //               (zacContext) {
  //                 return ZacFlutterWidget.consume(family: 'shared')
  //                     .build(zacContext);
  //               },
  //             ),
  //           ),
  //         ),
  //       ),
  //     );

  //     expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
  //   });
  // });

  // group('ZacDateTime', () {
  //   test('can be created', () {
  //     final now = DateTime.now();
  //     expect(
  //         ZacDateTime.fromJson(now.toIso8601String()), ZacDateTime(value: now));

  //     expectConvertToZacBuilder<ZacDateTime, DateTime>(json: {
  //       'converter': 'z:1:DateTime',
  //       'value': now.toIso8601String(),
  //     }, expected: ZacDateTime(value: now));

  //     expectConvertConsumeSharedValue<ZacDateTime, DateTime>(
  //       converter: 'z:1:DateTime.consume',
  //       create: ZacDateTime.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     final now = DateTime.now();
  //     await expectValueFromZacBuilder<ZacDateTime, DateTime>(
  //       tester: tester,
  //       builder: ZacDateTime(value: now),
  //       expectValue: now,
  //       expectValueOrNull: now,
  //     );

  //     await expectConsumedValueFromZacBuilder<DateTime, DateTime>(
  //       tester: tester,
  //       createBuilder: ZacDateTime.consume,
  //       expectValue: now,
  //       sharedValue: now,
  //     );
  //   });
  // });

  // group('ZacListOfFlutterWidget', () {
  //   test('can be created', () {
  //     expectConvertToZacBuilder<ZacListOfFlutterWidget, List<Widget>>(json: {
  //       'converter': 'z:1:List<FlutterWidget>',
  //       'items': [
  //         {'converter': 'f:1:SizedBox'}
  //       ],
  //     }, expected: ZacListOfFlutterWidget(items: [FlutterSizedBox()]));

  //     expectConvertConsumeListSharedValue<ZacListOfFlutterWidget,
  //         FlutterWidget>(
  //       converter: 'z:1:List<FlutterWidget>.consume',
  //       create: ZacListOfFlutterWidget.consume,
  //     );
  //   });
  // });

  // testWidgets('pick a ZacValue and pass it to new actions as payload',
  //     (tester) async {
  //   expect(
  //       () => ConverterHelper.convertToType<ZacValueActions>(<String, dynamic>{
  //             'converter': 'z:1:ZacValue.asActionPayload',
  //             'value': 5,
  //             'actions': <Object>[],
  //           }),
  //       returnsNormally);

  //   late ZacActionPayload payload;
  //   await testZacWidget(
  //     tester,
  //     ZacExecuteActionsBuilder.once(
  //       actions: ZacActions([
  //         ZacValueActions.asPayload(
  //           value: ZacObject.fromJson('hello'),
  //           actions: ZacActions([
  //             LeakAction(
  //               (p, zacContext) => payload = p,
  //             )
  //           ]),
  //         ),
  //       ]),
  //       child: FlutterSizedBox(),
  //     ),
  //   );

  //   expect(payload, ZacActionPayload.param('hello'));
  // });
}
