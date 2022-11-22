import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void expectCreateSimpleList<Builder, Value>({
  required String converter,
  required List<Object> jsonItems,
  required List<Value> expectedItems,
  required Builder Function({required List<Value> items}) create,
  required Builder Function(Object data) fromJson,
}) {
  expect(fromJson(jsonItems as Object), create(items: expectedItems));

  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'items': jsonItems,
      }),
      create(items: expectedItems));
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'items': jsonItems,
      }),
      isA<ZacSimpleValueList<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'items': jsonItems,
      }),
      isA<ZacGetValueList<Value>>());
}

Future<void> expectSimpleList<Value>({
  required WidgetTester tester,
  required List<Value> expectValue,
  required Object Function({required List<Value> items}) createBuilder,
}) async {
  late ZacContext zacContext;

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: LeakContext(cb: (c) => zacContext = c),
    ),
  ));

  final builder = createBuilder(items: expectValue);

  expect(builder, isA<ZacSimpleValueList<Value>>());
  expect(builder, isA<ZacGetValueList<Value>>());
  expect((builder as ZacSimpleValueList<Value>).items, expectValue);
  expect((builder as ZacGetValueList<Value>).getValue(zacContext), expectValue);
}

void expectCreateTransformableList<Builder, Value>({
  required String converter,
  required Builder Function({
    required List<Object> items,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
  })
      create,
}) {
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'items': ['WHO CARES'],
        'transformer': <Object?>[],
        'itemTransformer': <Object?>[],
      }),
      isA<ZacValueTranformableList<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'items': ['WHO CARES'],
        'transformer': <Object?>[],
        'itemTransformer': <Object?>[],
      }),
      isA<ZacGetValueList<Value>>());

  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'items': ['WHO CARES'],
        'transformer': <Object?>[],
        'itemTransformer': <Object?>[],
      }),
      create(
        items: ['WHO CARES'],
        transformer: ZacTransformers([]),
        itemTransformer: ZacTransformers([]),
      ));
}

Future<void> expectTransformableList<Value>({
  required WidgetTester tester,
  required List<Value> expectValue,
  required Object Function({
    required List<Object> items,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
  })
      createBuilder,
}) async {
  late ZacContext zacContext;

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: LeakContext(cb: (c) => zacContext = c),
    ),
  ));

  final builder = createBuilder(
    items: expectValue as List<Object>,
    transformer: ZacTransformers([]),
  );

  final nullBuilder = createBuilder(
    items: expectValue as List<Object>,
    transformer: ZacTransformers([
      CustomTransformer(
        (transformValue, zacContext, payload) => null,
      )
    ]),
  );

  expect(builder, isA<ZacValueTranformableList<Value>>());
  expect(builder, isA<ZacGetValueList<Value>>());

  expect(
      (builder as ZacValueTranformableList<Value>)
          .getTransformedValue(zacContext),
      expectValue);
  expect((builder as ZacGetValueList<Value>).getValue(zacContext), expectValue);

  expect(
      (nullBuilder as ZacValueTranformableList<Value>)
          .getTransformedValueOrNull(zacContext),
      isNull);
  expect((nullBuilder as ZacGetValueList<Value>).getValueOrNull(zacContext),
      isNull);
}

void expectCreateSharedList<Builder, Value>({
  required String converter,
  required Builder Function({
    required Object family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  })
      create,
}) {
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ZacValueConsumeList<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ZacGetValueList<Value>>());

  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      create(family: 'shared'));
}

Future<void> expectSharedList<Value>({
  required WidgetTester tester,
  required Object Function({
    required Object family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  })
      createBuilder,
  required List<Value> expectValue,
}) async {
  final builder = createBuilder(family: 'shared');

  expect(builder, isA<ZacValueConsumeList<Value>>());
  expect(builder, isA<ZacGetValueList<Value>>());

  builder as ZacValueConsumeList<Value>;

  late ZacContext zacContext;

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: SharedValueProviderBuilder(
        value: expectValue,
        family: 'shared',
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    ),
  ));

  expect(builder.getSharedValue(zacContext), expectValue);

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: SharedValueProviderBuilder(
        value: null,
        family: 'shared',
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    ),
  ));

  expect(builder.getSharedValueOrNull(zacContext), isNull);
}

void expectCreateSimple<Builder, Value>({
  required String converter,
  required Object jsonValue,
  required Value expectValue,
  required Builder Function({required Value value}) create,
  required Builder Function(Object data) fromJson,
}) {
  expect(fromJson(jsonValue as Object), create(value: expectValue));

  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': jsonValue,
      }),
      create(value: expectValue));
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': jsonValue,
      }),
      isA<ZacSimpleValue<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': jsonValue,
      }),
      isA<ZacGetValue<Value>>());
}

Future<void> expectSimple<Value>({
  required WidgetTester tester,
  required Value expectValue,
  required Object Function({required Value value}) createBuilder,
}) async {
  late ZacContext zacContext;

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: LeakContext(cb: (c) => zacContext = c),
    ),
  ));

  final builder = createBuilder(value: expectValue);

  expect(builder, isA<ZacSimpleValue<Value>>());
  expect(builder, isA<ZacGetValue<Value>>());
  expect((builder as ZacSimpleValue<Value>).value, expectValue);
  expect((builder as ZacGetValue<Value>).getValue(zacContext), expectValue);
}

Future<void> expectTransformable<Value>({
  required WidgetTester tester,
  required Value expectValue,
  required Object Function(
          {required Object value, required ZacTransformers transformer})
      createBuilder,
}) async {
  late ZacContext zacContext;

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: LeakContext(cb: (c) => zacContext = c),
    ),
  ));

  final builder = createBuilder(
    value: expectValue as Object,
    transformer: ZacTransformers([]),
  );

  final nullBuilder = createBuilder(
    value: expectValue,
    transformer: ZacTransformers([
      CustomTransformer(
        (transformValue, zacContext, payload) => null,
      )
    ]),
  );

  expect(builder, isA<ZacValueTranformable<Value>>());
  expect(builder, isA<ZacGetValue<Value>>());

  expect(
      (builder as ZacValueTranformable<Value>).getTransformedValue(zacContext),
      expectValue);
  expect((builder as ZacGetValue<Value>).getValue(zacContext), expectValue);

  expect(
      (nullBuilder as ZacValueTranformable<Value>)
          .getTransformedValueOrNull(zacContext),
      isNull);
  expect(
      (nullBuilder as ZacGetValue<Value>).getValueOrNull(zacContext), isNull);
}

void expectCreateTransformable<Builder, Value>({
  required String converter,
  required Builder Function(
          {required Object value, required ZacTransformers transformer})
      create,
}) {
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': 'WHO CARES',
        'transformer': <Object?>[]
      }),
      isA<ZacValueTranformable<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': 'WHO CARES',
        'transformer': <Object?>[]
      }),
      isA<ZacGetValue<Value>>());

  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': 'WHO CARES',
        'transformer': <Object?>[]
      }),
      create(
        value: 'WHO CARES',
        transformer: ZacTransformers([]),
      ));
}

Future<void> expectShared<Value>({
  required WidgetTester tester,
  required Object Function({
    required Object family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  })
      createBuilder,
  required Value expectValue,
}) async {
  final builder = createBuilder(family: 'shared');

  expect(builder, isA<ZacValueConsume<Value>>());
  expect(builder, isA<ZacValueConsumeImpl<Value>>());

  late ZacContext zacContext;

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: SharedValueProviderBuilder(
        value: expectValue,
        family: 'shared',
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    ),
  ));

  builder as ZacValueConsume<Value>;

  expect(builder.getSharedValue(zacContext), expectValue);

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: SharedValueProviderBuilder(
        value: null,
        family: 'shared',
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    ),
  ));

  expect(builder.getSharedValueOrNull(zacContext), isNull);
}

void expectCreateShared<Builder, Value>({
  required String converter,
  required Builder Function({
    required Object family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  })
      create,
}) {
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ZacValueConsume<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ZacGetValue<Value>>());

  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      create(family: 'shared'));
}

class TestErrorZacGetValue with ZacGetValue<int> {}

class TestErrorZacGetValueList with ZacGetValueList<int> {}

void main() {
  group('ZacGetValue', () {
    testWidgets('will throw if no implementation was found', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(
          () => TestErrorZacGetValue().getValue(zacContext),
          throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
              contains('ZacGetValue<int> could not return a value because'))));
    });
  });

  group('ZacGetValueList', () {
    testWidgets('will throw if no implementation was found', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(
          () => TestErrorZacGetValueList().getValue(zacContext),
          throwsA(isA<StateError>().having(
              (p0) => p0.message,
              'error message',
              contains(
                  'ZacGetValueList<int> could not return a list because'))));
    });
  });

  group('ZacInt', () {
    test('can be created', () {
      expectCreateSimple<ZacInt, int>(
        converter: 'z:1:int',
        jsonValue: 1,
        expectValue: 1,
        create: ZacInt.new,
        fromJson: ZacInt.fromJson,
      );

      expectCreateTransformable<ZacInt, int>(
        converter: 'z:1:int.transformable',
        create: ZacInt.transformable,
      );

      expectCreateShared<ZacInt, int>(
        converter: 'z:1:int.consume',
        create: ZacInt.consume,
      );

      /// convert double to int
      expect(
          ConverterHelper.convertToType<ZacInt>({
            'converter': 'z:1:int',
            'value': 1.1,
          }),
          ZacInt(value: 1));

      /// do not convert double to int if ZacInt is transformable
      expect(
          ConverterHelper.convertToType<ZacInt>({
            'converter': 'z:1:int.transformable',
            'value': 5.1,
            'transformer': <Object?>[]
          }),
          ZacInt.transformable(
            value: 5.1,
            transformer: ZacTransformers([]),
          ));
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<int>(
        tester: tester,
        createBuilder: ZacInt.new,
        expectValue: 5,
      );

      await expectTransformable<int>(
        tester: tester,
        createBuilder: ZacInt.transformable,
        expectValue: 5,
      );

      await expectShared<int>(
        tester: tester,
        createBuilder: ZacInt.consume,
        expectValue: 5,
      );
    });
  });

  group('ZacDouble', () {
    test('can be created', () {
      expectCreateSimple<ZacDouble, double>(
        converter: 'z:1:double',
        jsonValue: 5.1,
        expectValue: 5.1,
        create: ZacDouble.new,
        fromJson: ZacDouble.fromJson,
      );

      expectCreateTransformable<ZacDouble, double>(
        converter: 'z:1:double.transformable',
        create: ZacDouble.transformable,
      );

      expectCreateShared<ZacDouble, double>(
        converter: 'z:1:double.consume',
        create: ZacDouble.consume,
      );

      /// convert int to double
      expect(
          ConverterHelper.convertToType<ZacDouble>({
            'converter': 'z:1:double',
            'value': 1,
          }),
          ZacDouble(value: 1.0));
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<double>(
        tester: tester,
        createBuilder: ZacDouble.new,
        expectValue: 5.1,
      );

      await expectTransformable<double>(
        tester: tester,
        createBuilder: ZacDouble.transformable,
        expectValue: 5.1,
      );

      await expectShared<double>(
        tester: tester,
        createBuilder: ZacDouble.consume,
        expectValue: 5.1,
      );
    });
  });

  group('ZacNum', () {
    test('can be created', () {
      expectCreateSimple<ZacNum, num>(
        converter: 'z:1:num',
        jsonValue: 5.1,
        expectValue: 5.1,
        create: ZacNum.new,
        fromJson: ZacNum.fromJson,
      );

      expectCreateTransformable<ZacNum, num>(
        converter: 'z:1:num.transformable',
        create: ZacNum.transformable,
      );

      expectCreateShared<ZacNum, num>(
        converter: 'z:1:num.consume',
        create: ZacNum.consume,
      );

      expect(ZacNum.fromJson(5.1), ZacNum(value: 5.1));
      expect(ZacNum.fromJson(5), ZacNum(value: 5));
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<num>(
        tester: tester,
        createBuilder: ZacNum.new,
        expectValue: 5.1,
      );

      await expectTransformable<num>(
        tester: tester,
        createBuilder: ZacNum.transformable,
        expectValue: 5.1,
      );

      await expectShared<num>(
        tester: tester,
        createBuilder: ZacNum.consume,
        expectValue: 5.1,
      );
    });
  });

  group('ZacString', () {
    test('can be created', () {
      expectCreateSimple<ZacString, String>(
        converter: 'z:1:String',
        jsonValue: 'hello',
        expectValue: 'hello',
        create: ZacString.new,
        fromJson: ZacString.fromJson,
      );

      expectCreateTransformable<ZacString, String>(
        converter: 'z:1:String.transformable',
        create: ZacString.transformable,
      );

      expectCreateShared<ZacString, String>(
        converter: 'z:1:String.consume',
        create: ZacString.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<String>(
        tester: tester,
        createBuilder: ZacString.new,
        expectValue: 'hello',
      );

      await expectTransformable<String>(
        tester: tester,
        createBuilder: ZacString.transformable,
        expectValue: 'hello',
      );

      await expectShared<String>(
        tester: tester,
        createBuilder: ZacString.consume,
        expectValue: 'hello',
      );
    });
  });

  group('ZacBool', () {
    test('can be created', () {
      expectCreateSimple<ZacBool, bool>(
        converter: 'z:1:bool',
        jsonValue: false,
        expectValue: false,
        create: ZacBool.new,
        fromJson: ZacBool.fromJson,
      );

      expectCreateTransformable<ZacBool, bool>(
        converter: 'z:1:bool.transformable',
        create: ZacBool.transformable,
      );

      expectCreateShared<ZacBool, bool>(
        converter: 'z:1:bool.consume',
        create: ZacBool.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<bool>(
        tester: tester,
        createBuilder: ZacBool.new,
        expectValue: false,
      );

      await expectTransformable<bool>(
        tester: tester,
        createBuilder: ZacBool.transformable,
        expectValue: false,
      );

      await expectShared<bool>(
        tester: tester,
        createBuilder: ZacBool.consume,
        expectValue: false,
      );
    });
  });

  group('ZacObject', () {
    test('can be created', () {
      expectCreateSimple<ZacObject, Object>(
        converter: 'z:1:Object',
        jsonValue: 'anything',
        expectValue: 'anything',
        create: ZacObject.new,
        fromJson: ZacObject.fromJson,
      );

      expectCreateTransformable<ZacObject, Object>(
        converter: 'z:1:Object.transformable',
        create: ZacObject.transformable,
      );

      expectCreateShared<ZacObject, Object>(
        converter: 'z:1:Object.consume',
        create: ZacObject.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<Object>(
        tester: tester,
        createBuilder: ZacObject.new,
        expectValue: Object(),
      );

      await expectTransformable<Object>(
        tester: tester,
        createBuilder: ZacObject.transformable,
        expectValue: Object(),
      );

      await expectShared<Object>(
        tester: tester,
        createBuilder: ZacObject.consume,
        expectValue: Object(),
      );
    });
  });

  group('ZacFlutterWidget', () {
    test('can be created', () {
      expectCreateSimple<ZacFlutterWidget, FlutterWidget>(
        converter: 'z:1:FlutterWidget',
        jsonValue: <String, dynamic>{'converter': 'f:1:SizedBox'},
        expectValue: FlutterSizedBox(),
        create: ZacFlutterWidget.new,
        fromJson: ZacFlutterWidget.fromJson,
      );

      expectCreateTransformable<ZacFlutterWidget, FlutterWidget>(
        converter: 'z:1:FlutterWidget.transformable',
        create: ZacFlutterWidget.transformable,
      );

      expectCreateShared<ZacFlutterWidget, FlutterWidget>(
        converter: 'z:1:FlutterWidget.consume',
        create: ZacFlutterWidget.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<FlutterWidget>(
        tester: tester,
        createBuilder: ZacFlutterWidget.new,
        expectValue: FlutterSizedBox(),
      );

      await expectTransformable<FlutterWidget>(
        tester: tester,
        createBuilder: ZacFlutterWidget.transformable,
        expectValue: FlutterSizedBox(),
      );

      await expectShared<FlutterWidget>(
        tester: tester,
        createBuilder: ZacFlutterWidget.consume,
        expectValue: FlutterSizedBox(),
      );
    });
  });

  group('ZacDateTime', () {
    test('can be created', () {
      final now = DateTime.now();
      expect(
          ConverterHelper.convertToType<ZacDateTime>({
            'converter': 'z:1:DateTime',
            'value': now.toIso8601String(),
          }),
          ZacDateTime(value: now));

      expect(
          ConverterHelper.convertToType<ZacDateTime>({
            'converter': 'z:1:DateTime',
            'value': now.toIso8601String(),
          }),
          isA<ZacSimpleValue<DateTime>>());
      expect(
          ConverterHelper.convertToType<ZacDateTime>({
            'converter': 'z:1:DateTime',
            'value': now.toIso8601String(),
          }),
          isA<ZacGetValue<DateTime>>());

      expect(
          ConverterHelper.convertToType<ZacDateTime>({
            'converter': 'z:1:DateTime.transformable',
            'value': 'WHO CARES',
            'transformer': <Object?>[]
          }),
          isA<ZacValueTranformable<DateTime>>());

      expect(
          ConverterHelper.convertToType<ZacDateTime>({
            'converter': 'z:1:DateTime.transformable',
            'value': 'WHO CARES',
            'transformer': <Object?>[]
          }),
          ZacDateTime.transformable(
              value: 'WHO CARES', transformer: ZacTransformers([])));

      expect(
          ConverterHelper.convertToType<ZacDateTime>(
              {'converter': 'z:1:DateTime.consume', 'family': 'shared'}),
          ZacDateTime.consume(family: 'shared'));

      expect(
          ConverterHelper.convertToType<ZacDateTime>(
              {'converter': 'z:1:DateTime.consume', 'family': 'shared'}),
          isA<ZacValueConsume<DateTime>>());

      expect(
          ZacDateTime.fromJson(now.toIso8601String()), ZacDateTime(value: now));
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimple<DateTime>(
        tester: tester,
        createBuilder: ZacDateTime.new,
        expectValue: DateTime.now(),
      );

      await expectTransformable<DateTime>(
        tester: tester,
        createBuilder: ZacDateTime.transformable,
        expectValue: DateTime.now(),
      );

      await expectShared<DateTime>(
        tester: tester,
        createBuilder: ZacDateTime.consume,
        expectValue: DateTime.now(),
      );
    });
  });

  group('ZacListOfFlutterWidget', () {
    test('can be created', () {
      expectCreateSimpleList<ZacListOfFlutterWidget, FlutterWidget>(
        converter: 'z:1:List<FlutterWidget>',
        jsonItems: [
          {'converter': 'f:1:SizedBox'}
        ],
        expectedItems: [FlutterSizedBox()],
        create: ZacListOfFlutterWidget.new,
        fromJson: ZacListOfFlutterWidget.fromJson,
      );

      expectCreateTransformableList<ZacListOfFlutterWidget, FlutterWidget>(
        converter: 'z:1:List<FlutterWidget>.transformable',
        create: ZacListOfFlutterWidget.transformable,
      );

      expectCreateSharedList<ZacListOfFlutterWidget, FlutterWidget>(
        converter: 'z:1:List<FlutterWidget>.consume',
        create: ZacListOfFlutterWidget.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectSimpleList<FlutterWidget>(
        tester: tester,
        createBuilder: ZacListOfFlutterWidget.new,
        expectValue: [FlutterSizedBox()],
      );

      await expectTransformableList<FlutterWidget>(
        tester: tester,
        createBuilder: ZacListOfFlutterWidget.transformable,
        expectValue: [FlutterSizedBox()],
      );

      await expectSharedList<FlutterWidget>(
        tester: tester,
        createBuilder: ZacListOfFlutterWidget.consume,
        expectValue: [FlutterSizedBox()],
      );
    });
  });

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
  //           value: ZacValue<String>.fromJson('hello'),
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
