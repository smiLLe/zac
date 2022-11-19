import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void expectTransformableList<Builder, Value>({
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

void expectSimpleValueList<Builder, Value>({
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

void expectSharedList<Builder, Value>({
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
      isA<SharedValueConsumeList<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ZacGetValueList<Value>>());

  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      create(family: 'shared'));
}

void expectSimpleValue<Builder, Value>({
  required String converter,
  required Value value,
  required Builder Function({required Value value}) create,
  required Builder Function(Object data) fromJson,
}) {
  expect(fromJson(value as Object), create(value: value));

  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': value,
      }),
      create(value: value));
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': value,
      }),
      isA<ZacSimpleValue<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>({
        'converter': converter,
        'value': value,
      }),
      isA<ZacGetValue<Value>>());
}

void expectTransformable<Builder, Value>({
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

void expectShared<Builder, Value>({
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
      isA<SharedValueConsume<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ZacGetValue<Value>>());

  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      create(family: 'shared'));
}

class TestZacGetValue<T> with ZacValueTranformable<T>, ZacGetValue<T> {
  @override
  final ZacTransformers transformer;

  @override
  final Object value;

  TestZacGetValue(this.transformer, this.value);
}

class TestZacGetValueList<T>
    with ZacValueTranformableList<T>, ZacGetValueList<T> {
  @override
  final ZacTransformers? transformer;

  @override
  final ZacTransformers? itemTransformer;

  @override
  final List<Object> items;

  TestZacGetValueList(this.transformer, this.itemTransformer, this.items);
}

class TestZacSimpleValue<T> with ZacSimpleValue<T>, ZacGetValue<T> {
  @override
  final T value;

  TestZacSimpleValue(this.value);
}

class TestZacSimpleValueList<T> with ZacSimpleValueList<T>, ZacGetValueList<T> {
  @override
  final List<T> items;

  TestZacSimpleValueList(this.items);
}

class TestSharedValueConsume<T> with SharedValueConsume<T>, ZacGetValue<T> {
  @override
  final SharedValueFamily family;

  @override
  final SharedValueConsumeType? forceConsume;

  @override
  final ZacTransformers? select;

  @override
  final ZacTransformers? transformer;

  TestSharedValueConsume(
      this.family, this.forceConsume, this.select, this.transformer);
}

class TestSharedValueConsumeList<T>
    with SharedValueConsumeList<T>, ZacGetValueList<T> {
  @override
  final SharedValueFamily family;

  @override
  final SharedValueConsumeType? forceConsume;

  @override
  final ZacTransformers? select;

  @override
  final ZacTransformers? transformer;

  @override
  final ZacTransformers? itemTransformer;

  TestSharedValueConsumeList(this.family, this.forceConsume, this.select,
      this.transformer, this.itemTransformer);
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

  testWidgets('SharedValueConsume will return the value from ZacGetValue<T>',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        value: 5,
        family: 'shared',
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );
    expect(
        TestSharedValueConsume<int>('shared', null, null, null)
            .getValue(zacContext),
        5);
  });

  testWidgets(
      'SharedValueConsumeList will return the value from ZacGetValueList<T>',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        value: [5],
        family: 'shared',
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );
    expect(
        TestSharedValueConsumeList<int>('shared', null, null, null, null)
            .getValue(zacContext),
        [5]);
  });

  group('ZacSimpleValue', () {
    testWidgets('will return the value from ZacGetValue<T>', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(TestZacSimpleValue<int>(5).getValue(zacContext), 5);
    });
  });

  group('ZacSimpleValueList', () {
    testWidgets('will return the value from ZacGetValueList<T>',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(TestZacSimpleValueList<int>([5]).getValue(zacContext), [5]);
    });
  });

  group('ZacValueTranformable', () {
    testWidgets('will return the transformed value', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(
          TestZacGetValue<int>(
                  ZacTransformers([
                    CustomTransformer(
                      (transformValue, zacContext, payload) {
                        return (transformValue.value as String).length;
                      },
                    )
                  ]),
                  'hello')
              .getTransformedValue(zacContext),
          5);

      expect(
          () => TestZacGetValue<int>(ZacTransformers([]), 'hello')
              .getTransformedValue(zacContext),
          throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
              contains('It was not possible to get a value of type int in'))));
    });

    testWidgets('will return the transformed value from ZacGetValue<T>',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(
          TestZacGetValue<int>(
                  ZacTransformers([
                    CustomTransformer(
                      (transformValue, zacContext, payload) {
                        return (transformValue.value as String).length;
                      },
                    )
                  ]),
                  'hello')
              .getValue(zacContext),
          5);
    });
  });

  group('ZacValueTranformableList', () {
    testWidgets('will return the transformed value', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(
          TestZacGetValueList<int>(
              ZacTransformers([
                CustomTransformer(
                  (transformValue, zacContext, payload) {
                    return List<int>.from(transformValue.value as List);
                  },
                )
              ]),
              ZacTransformers([
                CustomTransformer(
                  (transformValue, zacContext, payload) {
                    return (transformValue.value as String).length;
                  },
                )
              ]),
              ['hello']).getTransformedValue(zacContext),
          [5]);

      /// what if transformer does not return a list
      expect(
          () => TestZacGetValueList<int>(
              ZacTransformers([
                CustomTransformer(
                  (transformValue, zacContext, payload) {
                    return 'NO LIST';
                  },
                )
              ]),
              ZacTransformers([]),
              ['hello']).getTransformedValue(zacContext),
          throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
              contains('It was not possible to get a list of type int in'))));
    });

    testWidgets('will return the transformed value from ZacGetValueList<T>',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(
          TestZacGetValueList<int>(
              ZacTransformers([
                CustomTransformer(
                  (transformValue, zacContext, payload) {
                    return List<int>.from(transformValue.value as List);
                  },
                )
              ]),
              ZacTransformers([
                CustomTransformer(
                  (transformValue, zacContext, payload) {
                    return (transformValue.value as String).length;
                  },
                )
              ]),
              ['hello']).getValue(zacContext),
          [5]);
    });
  });

  group('ZacInt', () {
    test('can be created', () {
      expectSimpleValue<ZacInt, int>(
        converter: 'z:1:int',
        value: 1,
        create: ZacInt.new,
        fromJson: ZacInt.fromJson,
      );

      expectTransformable<ZacInt, int>(
        converter: 'z:1:int.transformable',
        create: ZacInt.transformable,
      );

      expectShared<ZacInt, int>(
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
  });

  group('ZacDouble', () {
    test('can be created', () {
      expectSimpleValue<ZacDouble, double>(
        converter: 'z:1:double',
        value: 5.1,
        create: ZacDouble.new,
        fromJson: ZacDouble.fromJson,
      );

      expectTransformable<ZacDouble, double>(
        converter: 'z:1:double.transformable',
        create: ZacDouble.transformable,
      );

      expectShared<ZacDouble, double>(
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
  });

  group('ZacNum', () {
    test('can be created', () {
      expectSimpleValue<ZacNum, num>(
        converter: 'z:1:num',
        value: 5.1,
        create: ZacNum.new,
        fromJson: ZacNum.fromJson,
      );

      expectTransformable<ZacNum, num>(
        converter: 'z:1:num.transformable',
        create: ZacNum.transformable,
      );

      expectShared<ZacNum, num>(
        converter: 'z:1:num.consume',
        create: ZacNum.consume,
      );

      expect(ZacNum.fromJson(5.1), ZacNum(value: 5.1));
      expect(ZacNum.fromJson(5), ZacNum(value: 5));
    });
  });

  group('ZacString', () {
    test('can be created', () {
      expectSimpleValue<ZacString, String>(
        converter: 'z:1:String',
        value: 'hello',
        create: ZacString.new,
        fromJson: ZacString.fromJson,
      );

      expectTransformable<ZacString, String>(
        converter: 'z:1:String.transformable',
        create: ZacString.transformable,
      );

      expectShared<ZacString, String>(
        converter: 'z:1:String.consume',
        create: ZacString.consume,
      );
    });
  });

  group('ZacBool', () {
    test('can be created', () {
      expectSimpleValue<ZacBool, bool>(
        converter: 'z:1:bool',
        value: false,
        create: ZacBool.new,
        fromJson: ZacBool.fromJson,
      );

      expectTransformable<ZacBool, bool>(
        converter: 'z:1:bool.transformable',
        create: ZacBool.transformable,
      );

      expectShared<ZacBool, bool>(
        converter: 'z:1:bool.consume',
        create: ZacBool.consume,
      );
    });
  });

  group('ZacObject', () {
    test('can be created', () {
      expectSimpleValue<ZacObject, Object>(
        converter: 'z:1:Object',
        value: 'anything',
        create: ZacObject.new,
        fromJson: ZacObject.fromJson,
      );

      expectTransformable<ZacObject, Object>(
        converter: 'z:1:Object.transformable',
        create: ZacObject.transformable,
      );

      expectShared<ZacObject, Object>(
        converter: 'z:1:Object.consume',
        create: ZacObject.consume,
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
          isA<SharedValueConsume<DateTime>>());

      expect(
          ZacDateTime.fromJson(now.toIso8601String()), ZacDateTime(value: now));
    });
  });

  group('ZacListOfFlutterWidget', () {
    test('can be created', () {
      expectSimpleValueList<ZacListOfFlutterWidget, FlutterWidget>(
        converter: 'z:1:List<FlutterWidget>',
        jsonItems: [
          {'converter': 'f:1:SizedBox'}
        ],
        expectedItems: [FlutterSizedBox()],
        create: ZacListOfFlutterWidget.new,
        fromJson: ZacListOfFlutterWidget.fromJson,
      );

      expectTransformableList<ZacListOfFlutterWidget, FlutterWidget>(
        converter: 'z:1:List<FlutterWidget>.transformable',
        create: ZacListOfFlutterWidget.transformable,
      );

      expectSharedList<ZacListOfFlutterWidget, FlutterWidget>(
        converter: 'z:1:List<FlutterWidget>.consume',
        create: ZacListOfFlutterWidget.consume,
      );
    });
  });

  test('Create ZacValue', () {
    final now = DateTime.now();
    expect(ZacValue<bool>.fromJson(false), ZacValue<bool>(data: false));
    expect(ZacValue<int>.fromJson(5), ZacValue<int>(data: 5));
    expect(ZacValue<int>.fromJson(5.1), ZacValue<int>(data: 5));
    expect(ZacValue<double>.fromJson(5.1), ZacValue<double>(data: 5.1));
    expect(ZacValue<double>.fromJson(5), ZacValue<double>(data: 5.0));
    expect(ZacValue<String>.fromJson('a'), ZacValue<String>(data: 'a'));
    expect(ZacValue<DateTime>.fromJson(now.toIso8601String()),
        ZacValue<DateTime>(data: now));

    expect(
        ZacValue<FlutterSizedBox>.fromJson({
          'converter': 'f:1:SizedBox',
        }),
        ZacValue<FlutterSizedBox>(data: FlutterSizedBox()));

    expect(
        ZacValue<FlutterSizedBox>.fromJson({
          'converter': 'z:1:ZacValue',
          'data': {
            'converter': 'f:1:SizedBox',
          }
        }),
        ZacValue<FlutterSizedBox>(data: FlutterSizedBox()));

    expect(
        () => ZacValue<Map<String, dynamic>>.fromJson(<String, dynamic>{}),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'Unsupported data type in ZacValue<Map<String, dynamic>>'))));

    expect(
        () => ZacValue<List<Object?>>.fromJson(<Object?>[]),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('Unsupported data type in ZacValue<List<Object?>>'))));
  });

  test(
      'Create ZacValue from JSON will throw when provided data is of unwanted type',
      () {
    expect(
        () => ZacValue<int>.fromJson('nope'),
        throwsA(isA<AssertionError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'It was not possible to create ZacValue<int> from JSON because the provided data was no "int" but "String".'))));

    expect(
        () => ZacValue<int>.fromJson({
              'converter': 'z:1:ZacValue',
              'data': 'nope',
              'transformer': <dynamic>[],
            }),
        throwsA(isA<AssertionError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'It was not possible to create ZacValue<int> from JSON because the provided data was no "int" but "String".'))));

    expect(
        () => ZacValue<int>.fromJson({
              'converter': 'z:1:ZacValue',
              'data': 'nope',
              'transformer': [
                {'converter': 'z:1:Transformer:String.length'}
              ],
            }),
        returnsNormally);
  });

  testWidgets('ZacValue.getValue() will return value', (tester) async {
    await testZacWidget(
        tester, FlutterText(ZacValue<String>.fromJson('hello')));
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValue.getValue() will return value #2', (tester) async {
    await testZacWidget(
        tester,
        FlutterText(ZacValue<String>.fromJson(
            {'converter': 'z:1:ZacValue', 'data': 'hello'})));
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValue.getValue() will return transformed value',
      (tester) async {
    await testZacWidget(
        tester,
        FlutterText(ZacValue<String>(
          data: 'heppo',
          transformer: ZacTransformers([
            StringTransformer.replaceAll(
                ZacValue<String>(data: 'p'), ZacValue<String>(data: 'l'))
          ]),
        )));
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValue.getValue() will return consumed value', (tester) async {
    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          family: 'shared',
          value: 'hello',
          child: FlutterText(
            ZacValue<String>.consume(
              family: 'shared',
            ),
          ),
        ));
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValue.getValue() will return transformed consumed value',
      (tester) async {
    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          family: 'shared',
          value: 'heppo',
          child: FlutterText(
            ZacValue<String>.consume(
              family: 'shared',
              transformer: ZacTransformers([
                StringTransformer.replaceAll(
                    ZacValue<String>(data: 'p'), ZacValue<String>(data: 'l'))
              ]),
            ),
          ),
        ));
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValue.getValue() will return selected consumed value',
      (tester) async {
    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          family: 'shared',
          value: 'heppo',
          child: FlutterText(
            ZacValue<String>.consume(
              family: 'shared',
              select: ZacTransformers([
                StringTransformer.replaceAll(
                    ZacValue<String>(data: 'p'), ZacValue<String>(data: 'l'))
              ]),
            ),
          ),
        ));
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValue.getValue() will watch for updates', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: 'hello',
        child: LeakContext(
          cb: (c) => zacContext = c,
          child: FlutterText(
            ZacValue<String>.consume(family: 'shared'),
          ),
        ),
      ),
    );
    expect(find.text('hello'), findsOneWidget);

    SharedValue.update(zacContext, 'shared', (current) => 'hello world');
    await tester.pumpAndSettle();

    expect(find.text('hello world'), findsOneWidget);
  });

  testWidgets(
      'ZacValue.getValue() can read the value without watching for updates',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: 'hello',
        child: LeakContext(
          cb: (c) => zacContext = c,
          child: FlutterText(
            ZacValue<String>.consume(
              family: 'shared',
              forceConsume: const SharedValueConsumeType.read(),
            ),
          ),
        ),
      ),
    );
    expect(find.text('hello'), findsOneWidget);

    SharedValue.update(zacContext, 'shared', (current) => 'hello world');
    await tester.pumpAndSettle();

    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets(
      'ZacValue.getValue() will throw if returned value is of wrong type',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: 'hello',
        child: LeakContext(
          cb: (c) => zacContext = c,
        ),
      ),
    );
    expect(
        () => ZacValue<int>.consume(family: 'shared').getValue(zacContext),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'It was not possible to return a value of "int" in ZacValue<int>.'))));
  });

  test('Create ZacValueMap', () {
    expect(
        ZacValueMap<int>.fromJson({
          'converter': 'z:1:ZacValueMap',
          'data': {'a': 1}
        }),
        ZacValueMap<int>(data: {'a': 1}));

    expect(
        ZacValueMap<int>.fromJson({
          'converter': 'z:1:ZacValueMap',
          'data': {
            'a': {'converter': 'z:1:ZacValue', 'data': 1}
          }
        }),
        ZacValueMap<int>(data: {'a': ZacValue<int>(data: 1)}));

    expect(
        ZacValueMap<int>.fromJson(
            {'converter': 'z:1:ZacValueMap.consume', 'family': 'shared'}),
        ZacValueMap<int>.consume(family: 'shared'));

    expect(
        () => ZacValueMap<int>.fromJson(5),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('Unsupported data type in ZacValueMap<int>'))));
  });

  testWidgets('ZacValueMap.getValue() will return value', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    expect(
        ZacValueMap<FlutterWidget>.fromJson({
          'converter': 'z:1:ZacValueMap',
          'data': {
            'a': {'converter': 'f:1:SizedBox'}
          }
        }).getValue(zacContext),
        {'a': FlutterSizedBox()});
  });

  testWidgets('ZacValueMap.getValue() will return value #2', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    expect(
        ZacValueMap<FlutterWidget>.fromJson({
          'converter': 'z:1:ZacValueMap',
          'data': {
            'a': {
              'converter': 'z:1:ZacValue',
              'data': {'converter': 'f:1:SizedBox'}
            }
          }
        }).getValue(zacContext),
        {'a': FlutterSizedBox()});
  });

  testWidgets('ZacValueMap.getValue() will return transformed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    expect(
      ZacValueMap<int>(
        data: {'a': 'foo'},
        transformer: ZacTransformers([
          MapTransformer.mapper(
            valueTransformer:
                ZacTransformers([const StringTransformer.length()]),
          )
        ]),
      ).getValue(zacContext),
      {'a': 3},
    );
  });

  testWidgets('ZacValueMap.getValue() will return consumed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: {'a': 'foo'},
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );

    expect(
      ZacValueMap<String>.consume(family: 'shared').getValue(zacContext),
      {'a': 'foo'},
    );
  });

  testWidgets('ZacValueMap.getValue() will return transformed consumed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: {'a': 'foo'},
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );

    expect(
      ZacValueMap<int>.consume(
        family: 'shared',
        transformer: ZacTransformers([
          MapTransformer.mapper(
            valueTransformer:
                ZacTransformers([const StringTransformer.length()]),
          )
        ]),
      ).getValue(zacContext),
      {'a': 3},
    );
  });

  testWidgets('ZacValueMap.getValue() will return selected consumed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: {'a': 'foo'},
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );

    expect(
      ZacValueMap<int>.consume(
        family: 'shared',
        select: ZacTransformers([
          MapTransformer.mapper(
            valueTransformer:
                ZacTransformers([const StringTransformer.length()]),
          )
        ]),
      ).getValue(zacContext),
      {'a': 3},
    );
  });

  test('Create ZacValueList', () {
    expect(ZacValueList<int>.fromJson([1]), ZacValueList<int>(data: [1]));

    expect(
        ZacValueList<int>.fromJson({
          'converter': 'z:1:ZacValueList',
          'data': [1]
        }),
        ZacValueList<int>(data: [1]));

    expect(
        ZacValueList<int>.fromJson({
          'converter': 'z:1:ZacValueList',
          'data': [
            {'converter': 'z:1:ZacValue', 'data': 1}
          ]
        }),
        ZacValueList<int>(data: [ZacValue<int>(data: 1)]));

    expect(
        ZacValueList<int>.fromJson(
            {'converter': 'z:1:ZacValueList.consume', 'family': 'shared'}),
        ZacValueList<int>.consume(family: 'shared'));

    expect(
        () => ZacValueList<int>.fromJson(5),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('Unsupported data type in ZacValueList<int>'))));
  });

  testWidgets('ZacValueList.getValue() will throw if List contains wrong types',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    expect(
        () => ZacValueList<int>.fromJson({
              'converter': 'z:1:ZacValueList',
              'data': ['a', 5]
            }).getValue(zacContext),
        throwsA(isA<AssertionError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'One item in ZacValueList<int> was no "int" but "String".'))));
  });

  testWidgets('ZacValueList.getValue() will return value', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    expect(
        ZacValueList<FlutterWidget>.fromJson({
          'converter': 'z:1:ZacValueList',
          'data': [
            {'converter': 'f:1:SizedBox'}
          ]
        }).getValue(zacContext),
        [FlutterSizedBox()]);
  });

  testWidgets('ZacValueList.getValue() will return value #2', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    expect(
        ZacValueList<FlutterWidget>.fromJson({
          'converter': 'z:1:ZacValueList',
          'data': [
            {
              'converter': 'z:1:ZacValue',
              'data': {'converter': 'f:1:SizedBox'}
            }
          ]
        }).getValue(zacContext),
        [FlutterSizedBox()]);
  });

  testWidgets('ZacValueList.getValue() will return transformed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    expect(
      ZacValueList<String>(
        data: ['foo', 'bar'],
        transformer: ZacTransformers([const ListTransformer.reversed()]),
      ).getValue(zacContext),
      ['bar', 'foo'],
    );
  });

  testWidgets('ZacValueList.getValue() will return consumed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: ['foo', 'bar'],
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );

    expect(
      ZacValueList<String>.consume(family: 'shared').getValue(zacContext),
      ['foo', 'bar'],
    );
  });

  testWidgets('ZacValueList.getValue() will return transformed consumed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: ['foo', 'bar'],
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );

    expect(
      ZacValueList<String>.consume(
        family: 'shared',
        transformer: ZacTransformers([const ListTransformer.reversed()]),
      ).getValue(zacContext),
      ['bar', 'foo'],
    );
  });

  testWidgets(
      'ZacValueList.getValue() will return transformed consumed value #2',
      (tester) async {
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: {'a': FlutterText(ZacValue<String>(data: 'hello'))},
        child: FlutterColumn(
          children: ZacValueList<FlutterWidget>.consume(
            family: 'shared',
            transformer: ZacTransformers([
              const MapTransformer.values(),
              const IterableTransformer.toList()
            ]),
          ),
        ),
      ),
    );

    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValueList.getValue() will return selected consumed value',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: ['foo', 'bar'],
        child: LeakContext(cb: (c) => zacContext = c),
      ),
    );

    expect(
      ZacValueList<String>.consume(
        family: 'shared',
        select: ZacTransformers([const ListTransformer.reversed()]),
      ).getValue(zacContext),
      ['bar', 'foo'],
    );
  });

  testWidgets('ZacValueList.getValue() will return selected consumed value #2',
      (tester) async {
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: {'a': FlutterText(ZacValue<String>(data: 'hello'))},
        child: FlutterColumn(
          children: ZacValueList<FlutterWidget>.consume(
            family: 'shared',
            select: ZacTransformers([
              const MapTransformer.values(),
              const IterableTransformer.toList()
            ]),
          ),
        ),
      ),
    );

    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('ZacValueList.getValue() will watch for updates', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: [FlutterText(ZacValue<String>(data: 'hello'))],
        child: LeakContext(
          cb: (c) => zacContext = c,
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.consume(family: 'shared'),
          ),
        ),
      ),
    );

    expect(find.text('hello'), findsOneWidget);
    SharedValue.update(zacContext, 'shared',
        (current) => [FlutterText(ZacValue<String>(data: 'hello world'))]);
    await tester.pumpAndSettle();
    expect(find.text('hello'), findsNothing);
    expect(find.text('hello world'), findsOneWidget);
  });

  testWidgets(
      'ZacValueList.getValue() can read the value without watching for updates',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
      tester,
      SharedValueProviderBuilder(
        family: 'shared',
        value: [FlutterText(ZacValue<String>(data: 'hello'))],
        child: LeakContext(
          cb: (c) => zacContext = c,
          child: FlutterColumn(
            children: ZacValueList<FlutterWidget>.consume(
              family: 'shared',
              forceConsume: const SharedValueConsumeType.read(),
            ),
          ),
        ),
      ),
    );

    expect(find.text('hello'), findsOneWidget);
    SharedValue.update(zacContext, 'shared',
        (current) => [FlutterText(ZacValue<String>(data: 'hello world'))]);
    await tester.pumpAndSettle();
    expect(find.text('hello'), findsOneWidget);
    expect(find.text('hello world'), findsNothing);
  });

  test('Create ZacValueConsumeOnly', () {
    expect(
        ZacValueConsumeOnly<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.consume',
          'family': 'shared',
        }),
        ZacValueConsumeOnly<int>(ZacValue<int>.consume(family: 'shared')
            .map((value) => throw Error(), consume: (obj) => obj)));

    expect(
        () => ZacValueConsumeOnly<int>.fromJson(
            {'converter': 'z:1:ZacValue', 'data': 5}),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error messages',
            contains(
                'Something very bad happend. ZacValueConsumeOnly<int> must always contain a _ZacValueConsume<int>'))));
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
