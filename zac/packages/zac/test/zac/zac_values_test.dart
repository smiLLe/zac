import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

Matcher _throwsOnInvalidData<T>() {
  return throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
      contains('It was not possible to create ZacValue<$T> from data:')));
}

void main() {
  group('ZacValue', () {
    test('Is in converters', () {
      expectInConverter([
        'z:1:ZacValue.builder',
        'z:1:ZacValue.value',
        'z:1:ZacValue.consume'
      ], ZacValue.fromJson);
    });

    group('.value', () {
      test('can be created', () {
        expect(
            ZacValue<int>.fromJson({
              'converter': 'z:1:ZacValue.value',
              'value': 4,
            }),
            ZacValue<int>(4));
      });

      test('will throw if requested type is not given', () {
        expect(
            () => ZacValue<int>.fromJson({
                  'converter': 'z:1:ZacValue.value',
                  'value': 'hello',
                }),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'error messages',
                contains(
                    'The error was probably created by using "z:1:ZacValue.value" converter'))));
      });

      group('.build()', () {
        testWidgets('can return a value of ZacBuilder or just simple values',
            (tester) async {
          late ZacContext zacContext;
          await tester.pumpWidget(
            ProviderScope(
              child: ZacWidget(
                data: LeakContext(
                  cb: (z) => zacContext = z,
                ),
              ),
            ),
          );
          expect(ZacValue<int>(5).build(zacContext), 5);
          expect(ZacValue<int?>(null).build(zacContext), isNull);
          expect(ZacValue<Key>(FlutterValueKey('key')).build(zacContext),
              const ValueKey('key'));
        });

        testWidgets('will throw if return value is not of expected type',
            (tester) async {
          late ZacContext zacContext;
          await tester.pumpWidget(
            ProviderScope(
              child: ZacWidget(
                data: LeakContext(
                  cb: (z) => zacContext = z,
                ),
              ),
            ),
          );
          expect(
              () => ZacValue<int>('hello').build(zacContext),
              throwsA(isA<StateError>().having(
                  (p0) => p0.message,
                  'error message',
                  contains(
                      'It was not possible to return a value of type int from ZacValue<int>.build()'))));
        });
      });
    });

    // group('.builder', () {
    //   test('can be created', () {
    //     expect(
    //         ZacValue<Widget>.fromJson({
    //           'converter': 'z:1:ZacValue.builder',
    //           'builder': {'converter': 'f:1:SizedBox'},
    //         }),
    //         ZacValue<Widget>.builder(builder: FlutterSizedBox()));
    //   });

    //   test('can be created through a registered converter', () {
    //     expect(ZacValue<Widget>.fromJson({'converter': 'f:1:SizedBox'}),
    //         ZacValue<Widget>.builder(builder: FlutterSizedBox()));
    //   });

    //   test('will throw if created builder does not match the required type',
    //       () {
    //     expect(
    //         () => ZacValue<int>.fromJson({'converter': 'f:1:SizedBox'}),
    //         throwsA(isA<StateError>().having(
    //             (p0) => p0.message,
    //             'error messages',
    //             contains('It was not possible to create ZacBuilder<int>'))));
    //   });
    // });

    group('.consume()', () {
      test('can be created', () {
        expect(
            ZacValue<Widget>.fromJson({
              'converter': 'z:1:ZacValue.consume',
              'family': 'shared',
            }),
            ZacValue<Widget>.consume(family: 'shared'));
      });

      group('.build()', () {
        testWidgets('can consume and build without transformer',
            (tester) async {
          Future<void> _test<T>({required Object? shareValue}) async {
            late final ZacContext zacContext;
            await tester.pumpWidget(
              ProviderScope(
                child: MaterialApp(
                  home: Material(
                    child: ZacWidget(
                      data: SharedValueProviderBuilder(
                        value: shareValue,
                        family: 'shared',
                        child: LeakContext(
                          cb: (z) => zacContext = z,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );

            expect(ZacValue<T>.consume(family: 'shared').build(zacContext),
                shareValue);
          }

          await _test<int>(shareValue: 5);
          await _test<int?>(shareValue: 5);
          await _test<int?>(shareValue: null);
        });

        testWidgets('can consume and build a ZacBuilder<Widget>',
            (tester) async {
          await tester.pumpWidget(
            ProviderScope(
              child: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: FlutterSizedBox(
                    key: FlutterValueKey('FIND_ME_2'),
                  ),
                  family: 'shared',
                  child: TestBuildCustomWidget(
                    (zacContext) {
                      return ZacValue<Widget>.consume(family: 'shared')
                          .build(zacContext);
                    },
                  ),
                ),
              ),
            ),
          );

          expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
        });

        testWidgets('can transform the shared value', (tester) async {
          late ZacContext zacContext;
          await tester.pumpWidget(
            ProviderScope(
              child: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: 'hello',
                  family: 'shared',
                  transformer: ZacTransformers([
                    CustomTransformer(
                      (transformValue, zacContext, payload) {
                        return (transformValue.value as String).length;
                      },
                    )
                  ]),
                  child: LeakContext(
                    cb: (c) {
                      zacContext = c;
                    },
                  ),
                ),
              ),
            ),
          );
          expect(ZacValue<int>.consume(family: 'shared').build(zacContext), 5);
        });

        testWidgets('will throw if shared value is null but null is not wanted',
            (tester) async {
          late ZacContext zacContext;
          await tester.pumpWidget(
            ProviderScope(
              child: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: null,
                  family: 'shared',
                  child: LeakContext(
                    cb: (c) {
                      zacContext = c;
                    },
                  ),
                ),
              ),
            ),
          );
          expect(
              () =>
                  ZacValue<String>.consume(family: 'shared').build(zacContext),
              throwsA(isA<StateError>().having(
                  (p0) => p0.message,
                  'error message',
                  contains(
                      'because the value is null and there are no transformers added'))));
        });

        testWidgets(
            'will throw if shared value is not of expected type and no transformer were available',
            (tester) async {
          late ZacContext zacContext;
          await tester.pumpWidget(
            ProviderScope(
              child: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: 'hello',
                  family: 'shared',
                  child: LeakContext(
                    cb: (c) {
                      zacContext = c;
                    },
                  ),
                ),
              ),
            ),
          );
          expect(
              () => ZacValue<int>.consume(family: 'shared').build(zacContext),
              throwsA(isA<StateError>().having(
                  (p0) => p0.message,
                  'error message',
                  contains(
                      'The value of type String was expected to be transformed'))));
        });
      });
    });

    test('<num>', () {
      expect(ZacValue<num>.fromJson(5), ZacValue<num>(5));
      expect(ZacValue<num>.fromJson(5.1), ZacValue<num>(5.1));
      expect(ZacValue<num?>.fromJson(5), ZacValue<num?>(5));
      expect(() => ZacValue<num>.fromJson(''), _throwsOnInvalidData<num>());
    });

    test('<int>', () {
      expect(ZacValue<int>.fromJson(5), ZacValue<int>(5));
      expect(ZacValue<int?>.fromJson(5), ZacValue<int?>(5));
      expect(ZacValue<int>.fromJson(5.1), ZacValue<int>(5));
      expect(() => ZacValue<int>.fromJson(''), _throwsOnInvalidData<int>());
    });

    test('<double>', () {
      expect(ZacValue<double>.fromJson(5), ZacValue<double>(5.0));
      expect(ZacValue<double>.fromJson(5.1), ZacValue<double>(5.1));
      expect(ZacValue<double?>.fromJson(5.1), ZacValue<double?>(5.1));
      expect(
          () => ZacValue<double>.fromJson(''), _throwsOnInvalidData<double>());
    });

    test('<String>', () {
      expect(ZacValue<String>.fromJson('foo'), ZacValue<String>('foo'));
      expect(ZacValue<String?>.fromJson('foo'), ZacValue<String?>('foo'));
      expect(
          () => ZacValue<String>.fromJson(1), _throwsOnInvalidData<String>());
    });

    test('<bool>', () {
      expect(ZacValue<bool>.fromJson(false), ZacValue<bool>(false));
      expect(ZacValue<bool?>.fromJson(false), ZacValue<bool?>(false));
      expect(() => ZacValue<bool>.fromJson(1), _throwsOnInvalidData<bool>());
    });

    test('<DateTime>', () {
      final now = DateTime.now();
      expect(ZacValue<DateTime>.fromJson(now.toIso8601String()),
          ZacValue<DateTime>(now));
      expect(() => ZacValue<DateTime>.fromJson(1),
          _throwsOnInvalidData<DateTime>());
    });

    test('<Object>', () {
      final now = DateTime.now();
      expect(ZacValue<Object>.fromJson(now.toIso8601String()),
          ZacValue<Object>(now.toIso8601String()));

      expect(ZacValue<Object>.fromJson(5.1), ZacValue<Object>(5.1));
    });
  });

  group('ZacValueList', () {
    test('Is in converters', () {
      expectInConverter(['z:1:ZacValueList', 'z:1:ZacValueList.consume'],
          ZacValueList.fromJson);
    });

    test('can be created using simple values', () {
      expect(
          ZacValueList<int>.fromJson(<String, dynamic>{
            'converter': 'z:1:ZacValueList',
            'items': [4],
          }),
          ZacValueList<int>.value(items: [4]));

      expect(
          ZacValueList<String>.fromJson(<String, dynamic>{
            'converter': 'z:1:ZacValueList',
            'items': ['a', 'b'],
          }),
          ZacValueList<String>.value(items: ['a', 'b']));
    });

    test('can be created using ZacBuilder', () {
      expect(
          ZacValueList<Widget>.fromJson(<String, dynamic>{
            'converter': 'z:1:ZacValueList',
            'items': [
              {'converter': 'f:1:SizedBox'}
            ],
          }),
          ZacValueList<Widget>.value(items: [FlutterSizedBox()]));
    });

    group('.consume', () {
      test('can be created', () {
        expect(
            ZacValueList<Widget>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueList.consume',
              'family': 'shared',
            }),
            ZacValueList<Widget>.consume(family: 'shared'));
      });

      testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: [
                    FlutterSizedBox(
                      key: FlutterValueKey('FIND_ME_2'),
                    )
                  ],
                  family: 'shared',
                  child: TestBuildCustomWidget(
                    (zacContext) {
                      return Column(
                        children: ZacValueList<Widget>.consume(family: 'shared')
                            .build(zacContext),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        );

        expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
      });

      testWidgets('can consume a String', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: Material(
                child: ZacWidget(
                  data: SharedValueProviderBuilder(
                    value: ['hello', 'world'],
                    family: 'shared',
                    child: TestBuildCustomWidget(
                      (zacContext) {
                        return Column(
                          children: [
                            ...ZacValueList<String>.consume(family: 'shared')
                                .build(zacContext)
                                .map((e) => Text(e))
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        );

        expect(find.text('hello'), findsOneWidget);
        expect(find.text('world'), findsOneWidget);
      });
    });
  });

  testWidgets('Pick a ZacValue and pass it to new actions as payload',
      (tester) async {
    expect(
        () => ConverterHelper.convertToType<ZacValueActions>(<String, dynamic>{
              'converter': 'z:1:ZacValue.asActionPayload',
              'value': 5,
              'actions': <Object>[],
            }),
        returnsNormally);

    late ZacActionPayload payload;
    await testZacWidget(
      tester,
      ZacExecuteActionsBuilder.once(
        actions: ZacActions([
          ZacValueActions.asPayload(
            value: ZacValue<Object>.fromJson('hello'),
            actions: ZacActions([
              LeakAction(
                (p, zacContext) => payload = p,
              )
            ]),
          ),
        ]),
        child: ZacValue<Widget>(FlutterSizedBox()),
      ),
    );

    expect(payload, ZacActionPayload.param('hello'));
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
}
