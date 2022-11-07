import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  testWidgets('Create ZacValue', (tester) async {
    final now = DateTime.now();
    expect(ZacValue<bool>.fromJson(false), ZacValue<bool>(value: false));
    expect(ZacValue<int>.fromJson(5), ZacValue<int>(value: 5));
    expect(ZacValue<int>.fromJson(5.1), ZacValue<int>(value: 5));
    expect(ZacValue<double>.fromJson(5.1), ZacValue<double>(value: 5.1));
    expect(ZacValue<double>.fromJson(5), ZacValue<double>(value: 5.0));
    expect(ZacValue<String>.fromJson('a'), ZacValue<String>(value: 'a'));
    expect(ZacValue<String?>.fromJson(null), ZacValue<String?>(value: null));
    expect(ZacValue<DateTime>.fromJson(now.toIso8601String()),
        ZacValue<DateTime>(value: now));

    expect(ZacValue<Map<String, dynamic>>.fromJson(<String, dynamic>{'a': 1}),
        ZacValue<Map<String, dynamic>>(value: <String, dynamic>{'a': 1}));

    expect(
        ZacValue<Map<dynamic, FlutterWidget>>.fromJson(
            <dynamic, FlutterWidget>{'a': FlutterSizedBox()}),
        ZacValue<Map<dynamic, FlutterWidget>>(
            value: <dynamic, FlutterWidget>{'a': FlutterSizedBox()}));

    expect(
        ZacValue<FlutterSizedBox>.fromJson({
          'converter': 'f:1:SizedBox',
        }),
        ZacValue<FlutterSizedBox>(value: FlutterSizedBox()));

    expect(
        ZacValue<FlutterSizedBox>.fromJson({
          'converter': 'z:1:ZacValue',
          'value': {
            'converter': 'f:1:SizedBox',
          }
        }),
        ZacValue<FlutterSizedBox>(value: FlutterSizedBox()));

    expect(
        ZacValue<int>.fromJson({
          'converter': 'z:1:ZacValue.consume',
          'family': 'fam',
        }),
        ZacValue<int>.consume(family: 'fam'));

    expect(
        ZacValue<int>.fromJson({
          'converter': 'z:1:ZacValue.consume',
          'family': 'fam',
          'forceConsume': {'converter': 'z:1:ZacValueConsume.read'}
        }),
        ZacValue<int>.consume(
            family: 'fam', forceConsume: const ZacValueConsumeType.read()));

    expect(
        () => ZacValue<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue',
              'value': 'not valid'
            }),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'It was not possible to create "ZacValue<int>" from "z:1:ZacValue"'))));

    expect(
        () => ZacValue<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue',
              'value': 'not valid',
              'transformer': <Object?>[],
            }),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'It was not possible to create "ZacValue<int>" from "z:1:ZacValue"'))));

    expect(
        ZacValue<bool>.fromJson(
            {'converter': 'z:1:ZacValue.consume', 'family': 'fam'}),
        ZacValue<bool>.consume(family: 'fam'));

    late ZacContext zacContext;

    await testZacWidget(
        tester,
        LeakContext(
          cb: (o) => zacContext = o,
        ));

    expect(
        ZacValue<int>(
                value: 'hello',
                transformer:
                    ZacTransformers([const StringTransformer.length()]))
            .getValue(zacContext),
        5);
  });

  group('Consume SharedValue as ZacValue', () {
    testWidgets('which will watch for value updates by default',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(
                ZacValue<String>.consume(
                  family: 'shared',
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(zacContext, 'shared', (current) => 'hello world');
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('which can force to watch for value update', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(
                ZacValue<String>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.watch(),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(zacContext, 'shared', (current) => 'hello world');
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('which can read the value once', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(
                ZacValue<String>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.read(),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(zacContext, 'shared', (current) => 'hello world');
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);
    });

    testWidgets('which can transform the value and watch it', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(
                ZacValue<String>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.watch(),
                  transformer: ZacTransformers([
                    const StringTransformer.length(),
                    ObjectTransformer.toString()
                  ]),
                ),
              ),
            ),
          ));

      expect(find.text('5'), findsOneWidget);

      SharedValue.update(zacContext, 'shared', (current) => 'foo');
      await tester.pumpAndSettle();

      expect(find.text('3'), findsOneWidget);
    });

    testWidgets('which can transform the value and read it', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(
                ZacValue<String>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.read(),
                  transformer: ZacTransformers([
                    const StringTransformer.length(),
                    ObjectTransformer.toString()
                  ]),
                ),
              ),
            ),
          ));

      expect(find.text('5'), findsOneWidget);

      SharedValue.update(zacContext, 'shared', (current) => 'foo');
      await tester.pumpAndSettle();

      expect(find.text('5'), findsOneWidget);
    });

    testWidgets('which can select a subset of the value and watch it',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(
                ZacValue<String>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.watch(),
                  select: ZacTransformers([const StringTransformer.length()]),
                  transformer: ZacTransformers([ObjectTransformer.toString()]),
                ),
              ),
            ),
          ));

      expect(find.text('5'), findsOneWidget);

      SharedValue.update(zacContext, 'shared', (current) => 'foo');
      await tester.pumpAndSettle();

      expect(find.text('3'), findsOneWidget);
    });

    testWidgets('which can select a subset of the value and read it',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterText(
                ZacValue<String>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.read(),
                  select: ZacTransformers([const StringTransformer.length()]),
                  transformer: ZacTransformers([ObjectTransformer.toString()]),
                ),
              ),
            ),
          ));

      expect(find.text('5'), findsOneWidget);

      SharedValue.update(zacContext, 'shared', (current) => 'foo');
      await tester.pumpAndSettle();

      expect(find.text('5'), findsOneWidget);
    });

    testWidgets(
        'will throw if the consumed value does not match the requested type and cannot be transformed',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
            ),
          ));

      expect(
          () => ZacValue<int>.consume(family: 'shared').getValue(zacContext),
          throwsA(isA<StateError>().having(
              (p0) => p0.message,
              'error message',
              contains(
                  'It was not possible to return a "ZacValue<int>" for family "shared".'))));
    });

    testWidgets(
        'will throw if the consumed value does not match the requested type after transformation',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'hello',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
            ),
          ));

      expect(
          () => ZacValue<String>.consume(
              family: 'shared',
              transformer: ZacTransformers(
                [const StringTransformer.length()],
              )).getValue(zacContext),
          throwsA(isA<StateError>().having(
              (p0) => p0.message,
              'error message',
              contains(
                  'Unexpected type found after trying to transform a consumed SharedValue to "ZacValue<String>" for family "shared".'))));
    });
  });

  testWidgets('Create ZacValueList', (tester) async {
    final now = DateTime.now();

    expect(ZacValueList<bool>.fromJson([false]),
        ZacValueList<bool>(values: [false]));

    expect(ZacValueList<int>.fromJson([5, 5.1]),
        ZacValueList<int>(values: [5, 5]));

    expect(ZacValueList<double>.fromJson([5, 5.1]),
        ZacValueList<double>(values: [5.0, 5.1]));

    expect(ZacValueList<String>.fromJson(['a']),
        ZacValueList<String>(values: ['a']));

    expect(ZacValueList<DateTime>.fromJson([now.toIso8601String()]),
        ZacValueList<DateTime>(values: [now]));

    expect(
        ZacValueList<FlutterSizedBox>.fromJson([
          {'converter': 'f:1:SizedBox'}
        ]),
        ZacValueList<FlutterSizedBox>(values: [FlutterSizedBox()]));

    expect(
        ZacValueList<FlutterSizedBox>.fromJson({
          'converter': 'z:1:ZacValueList',
          'values': [
            {'converter': 'f:1:SizedBox'}
          ]
        }),
        ZacValueList<FlutterSizedBox>(values: [FlutterSizedBox()]));

    expect(
        ZacValueList<String>.fromJson(
            {'converter': 'z:1:ZacValueList.consume', 'family': 'fam'}),
        ZacValueList<String>.consume(family: 'fam'));

    expect(
        ZacValueList<String>.fromJson({
          'converter': 'z:1:ZacValueList.consume',
          'family': 'fam',
          'forceConsume': {'converter': 'z:1:ZacValueConsume.read'}
        }),
        ZacValueList<String>.consume(
            family: 'fam', forceConsume: const ZacValueConsumeType.read()));

    expect(
        () => ZacValueList<bool>.fromJson(false),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
            contains('Unsupported type in ZacValueList<bool>'))));

    expect(
        () => ZacValueList<bool>.fromJson(5),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
            contains('Unsupported type in ZacValueList<bool>'))));

    expect(
        () => ZacValueList<bool>.fromJson(<dynamic, dynamic>{}),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
            contains('Unsupported type in ZacValueList<bool>'))));

    expect(
        () => ZacValueList<int>.fromJson(['a', 5, 'b']),
        throwsA(isA<AssertionError>().having(
            (p0) => p0.message,
            'error message',
            contains(
                'It was not possible to create a "ZacValueList<int>" from "z:1:ZacValueList".'))));

    late ZacContext zacContext;
    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 'c',
          family: 'shared',
          child: LeakContext(cb: (c) {
            zacContext = c;
          }),
        ));

    expect(
        ZacValueList<String>.fromJson([
          'a',
          {
            'converter': 'z:1:ZacValue',
            'value': 'b',
          },
          {
            'converter': 'z:1:ZacValue.consume',
            'family': 'shared',
          },
        ]).getValue(zacContext),
        ['a', 'b', 'c']);
  });

  group('Consume SharedValue as ZacValueList', () {
    testWidgets('which will watch for value updates by default',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: [
              {'converter': 'f:1:Text', 'data': 'hello'}
            ],
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer:
                ZacTransformers([const ListTransformer.fromFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterColumn(
                children: ZacValueList<FlutterWidget>.consume(
                  family: 'shared',
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <FlutterWidget>[
                FlutterText(ZacValue<String>(value: 'hello world'))
              ]);
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('which can force to watch for value update', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: [
              {'converter': 'f:1:Text', 'data': 'hello'}
            ],
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer:
                ZacTransformers([const ListTransformer.fromFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterColumn(
                children: ZacValueList<FlutterWidget>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.watch(),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <FlutterWidget>[
                FlutterText(ZacValue<String>(value: 'hello world'))
              ]);
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('which can read the value once', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: [
              {'converter': 'f:1:Text', 'data': 'hello'}
            ],
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer:
                ZacTransformers([const ListTransformer.fromFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterColumn(
                children: ZacValueList<FlutterWidget>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.read(),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <FlutterWidget>[
                FlutterText(ZacValue<String>(value: 'hello world'))
              ]);
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);
      expect(find.text('hello world'), findsNothing);
    });

    testWidgets('which can transform the value and watch it', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: [
              {'converter': 'f:1:Text', 'data': 'hello'},
              {'converter': 'f:1:Text', 'data': 'world'}
            ],
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer:
                ZacTransformers([const ListTransformer.fromFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterColumn(
                children: ZacValueList<FlutterWidget>.consume(
                  family: 'shared',
                  transformer: ZacTransformers(
                    [
                      const IterableTransformer.take(1),
                      const IterableTransformer.toList(),
                      const ListTransformer.fromFlutterWidget()
                    ],
                  ),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <FlutterWidget>[
                FlutterText(ZacValue<String>(value: 'hello world')),
                FlutterText(ZacValue<String>(value: 'foo bar')),
              ]);
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsNothing);
      expect(find.text('foo bar'), findsNothing);
      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('which can transform the value and read it', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: [
              {'converter': 'f:1:Text', 'data': 'hello'},
              {'converter': 'f:1:Text', 'data': 'world'}
            ],
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer:
                ZacTransformers([const ListTransformer.fromFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterColumn(
                children: ZacValueList<FlutterWidget>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.read(),
                  transformer: ZacTransformers(
                    [
                      const IterableTransformer.take(1),
                      const IterableTransformer.toList(),
                      const ListTransformer.fromFlutterWidget()
                    ],
                  ),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <FlutterWidget>[
                FlutterText(ZacValue<String>(value: 'hello world')),
                FlutterText(ZacValue<String>(value: 'foo bar')),
              ]);
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);
      expect(find.text('foo bar'), findsNothing);
      expect(find.text('hello world'), findsNothing);
    });

    testWidgets('which can select a subset of the value and watch it',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: [
              {'converter': 'f:1:Text', 'data': 'hello'},
              {'converter': 'f:1:Text', 'data': 'world'}
            ],
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer:
                ZacTransformers([const ListTransformer.fromFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterColumn(
                children: ZacValueList<FlutterWidget>.consume(
                  family: 'shared',
                  select: ZacTransformers(
                    [
                      const IterableTransformer.take(1),
                      const IterableTransformer.toList(),
                      const ListTransformer.fromFlutterWidget()
                    ],
                  ),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <FlutterWidget>[
                FlutterText(ZacValue<String>(value: 'hello world')),
                FlutterText(ZacValue<String>(value: 'foo bar')),
              ]);
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsNothing);
      expect(find.text('foo bar'), findsNothing);
      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('which can select a subset of the value and read it',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: [
              {'converter': 'f:1:Text', 'data': 'hello'},
              {'converter': 'f:1:Text', 'data': 'world'}
            ],
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer:
                ZacTransformers([const ListTransformer.fromFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
              child: FlutterColumn(
                children: ZacValueList<FlutterWidget>.consume(
                  family: 'shared',
                  forceConsume: const ZacValueConsumeType.read(),
                  select: ZacTransformers(
                    [
                      const IterableTransformer.take(1),
                      const IterableTransformer.toList(),
                      const ListTransformer.fromFlutterWidget()
                    ],
                  ),
                ),
              ),
            ),
          ));

      expect(find.text('hello'), findsOneWidget);

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <FlutterWidget>[
                FlutterText(ZacValue<String>(value: 'hello world')),
                FlutterText(ZacValue<String>(value: 'foo bar')),
              ]);
      await tester.pumpAndSettle();

      expect(find.text('hello'), findsOneWidget);
      expect(find.text('foo bar'), findsNothing);
      expect(find.text('hello world'), findsNothing);
    });

    testWidgets('will throw if the consumed value is no list', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: 'no list',
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
            ),
          ));

      expect(
          () => ZacValueList<String>.consume(family: 'shared')
              .getValue(zacContext),
          throwsA(isA<StateError>().having(
              (p0) => p0.message,
              'error message',
              contains(
                  'It was not possible to return a "ZacValueList<String>" because the consumed value was no List'))));
    });

    testWidgets(
        'will throw if the consumed value does not match the requested type and cannot be transformed',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: ['hello'],
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
            ),
          ));

      expect(
          () =>
              ZacValueList<int>.consume(family: 'shared').getValue(zacContext),
          throwsA(isA<AssertionError>().having(
              (p0) => p0.message,
              'error message',
              contains(
                  'It was not possible to return a SharedValue in "ZacValueList<int>" for family "shared".'))));
    });
  });

  testWidgets('Create ZacValueMap', (tester) async {
    final now = DateTime.now();

    expect(ZacValueMap<bool>.fromJson({'a': false}),
        ZacValueMap<bool>(values: {'a': false}));

    expect(ZacValueMap<int>.fromJson({'a': 5, 'b': 5.1}),
        ZacValueMap<int>(values: {'a': 5, 'b': 5}));

    expect(ZacValueMap<double>.fromJson({'a': 5, 'b': 5.1}),
        ZacValueMap<double>(values: {'a': 5.0, 'b': 5.1}));

    expect(ZacValueMap<String>.fromJson({'a': 'hello'}),
        ZacValueMap<String>(values: {'a': 'hello'}));

    expect(ZacValueMap<DateTime>.fromJson({'a': now.toIso8601String()}),
        ZacValueMap<DateTime>(values: {'a': now}));

    expect(
        ZacValueMap<FlutterSizedBox>.fromJson({
          'a': {'converter': 'f:1:SizedBox'}
        }),
        ZacValueMap<FlutterSizedBox>(values: {'a': FlutterSizedBox()}));

    expect(
        ZacValueMap<FlutterSizedBox>.fromJson({
          'converter': 'z:1:ZacValueMap',
          'values': {
            'a': {'converter': 'f:1:SizedBox'}
          }
        }),
        ZacValueMap<FlutterSizedBox>(values: {'a': FlutterSizedBox()}));

    expect(
        ZacValueMap<String>.fromJson(
            {'converter': 'z:1:ZacValueMap.consume', 'family': 'fam'}),
        ZacValueMap<String>.consume(family: 'fam'));

    expect(
        ZacValueMap<String>.fromJson({
          'converter': 'z:1:ZacValueMap.consume',
          'family': 'fam',
          'forceConsume': {'converter': 'z:1:ZacValueConsume.read'}
        }),
        ZacValueMap<String>.consume(
            family: 'fam', forceConsume: const ZacValueConsumeType.read()));

    expect(
        () => ZacValueMap<bool>.fromJson(false),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
            contains('Unsupported type in ZacValueMap<bool>'))));

    expect(
        () => ZacValueMap<bool>.fromJson(5),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
            contains('Unsupported type in ZacValueMap<bool>'))));

    expect(
        () => ZacValueMap<bool>.fromJson(<dynamic>[]),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
            contains('Unsupported type in ZacValueMap<bool>'))));

    expect(
        () => ZacValueMap<int>.fromJson({'a': 'a', 'b': 5}),
        throwsA(isA<AssertionError>().having(
            (p0) => p0.message,
            'error message',
            contains(
                'It was not possible to create a "ZacValueMap<int>" from "z:1:ZacValueMap".'))));

    late ZacContext zacContext;
    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 'c',
          family: 'shared',
          child: LeakContext(cb: (c) {
            zacContext = c;
          }),
        ));

    expect(
        ZacValueMap<String>.fromJson({
          'a': 'a',
          'b': {
            'converter': 'z:1:ZacValue',
            'value': 'b',
          },
          'c': {
            'converter': 'z:1:ZacValue.consume',
            'family': 'shared',
          },
        }).getValue(zacContext),
        {'a': 'a', 'b': 'b', 'c': 'c'});
  });

  group('Consume SharedValue as ZacValueMap', () {
    testWidgets('which will watch for value updates by default',
        (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
          tester,
          SharedValueProviderBuilder(
            family: 'shared',
            value: {
              'a': {'converter': 'f:1:Text', 'data': 'hello'}
            },
            itemTransformer: ZacTransformers([ConvertTransformer()]),
            transformer: ZacTransformers(
                [const MapTransformer.fromStringFlutterWidget()]),
            autoCreate: true,
            child: LeakContext(
              cb: (c) => zacContext = c,
            ),
          ));

      expect(
          ZacValueMap<FlutterWidget>.consume(family: 'shared')
              .getValue(zacContext),
          {'a': FlutterText(ZacValue<String>.fromJson('hello'))});

      SharedValue.update(
          zacContext,
          'shared',
          (current) => <String, FlutterWidget>{
                'a': FlutterText(ZacValue<String>(value: 'hello world'))
              });
      await tester.pumpAndSettle();

      expect(
          ZacValueMap<FlutterWidget>.consume(family: 'shared')
              .getValue(zacContext),
          {'a': FlutterText(ZacValue<String>.fromJson('hello world'))});
    });

    // testWidgets('which can force to watch for value update', (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: [
    //           {'converter': 'f:1:Text', 'data': 'hello'}
    //         ],
    //         itemTransformer: ZacTransformers([ConvertTransformer()]),
    //         transformer:
    //             ZacTransformers([const ListTransformer.fromFlutterWidget()]),
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //           child: FlutterColumn(
    //             children: ZacValueList<FlutterWidget>.consume(
    //               family: 'shared',
    //               forceConsume: const ZacValueConsumeType.watch(),
    //             ),
    //           ),
    //         ),
    //       ));

    //   expect(find.text('hello'), findsOneWidget);

    //   SharedValue.update(
    //       zacContext,
    //       'shared',
    //       (current) => <FlutterWidget>[
    //             FlutterText(ZacValue<String>(value: 'hello world'))
    //           ]);
    //   await tester.pumpAndSettle();

    //   expect(find.text('hello world'), findsOneWidget);
    // });

    // testWidgets('which can read the value once', (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: [
    //           {'converter': 'f:1:Text', 'data': 'hello'}
    //         ],
    //         itemTransformer: ZacTransformers([ConvertTransformer()]),
    //         transformer:
    //             ZacTransformers([const ListTransformer.fromFlutterWidget()]),
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //           child: FlutterColumn(
    //             children: ZacValueList<FlutterWidget>.consume(
    //               family: 'shared',
    //               forceConsume: const ZacValueConsumeType.read(),
    //             ),
    //           ),
    //         ),
    //       ));

    //   expect(find.text('hello'), findsOneWidget);

    //   SharedValue.update(
    //       zacContext,
    //       'shared',
    //       (current) => <FlutterWidget>[
    //             FlutterText(ZacValue<String>(value: 'hello world'))
    //           ]);
    //   await tester.pumpAndSettle();

    //   expect(find.text('hello'), findsOneWidget);
    //   expect(find.text('hello world'), findsNothing);
    // });

    // testWidgets('which can transform the value and watch it', (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: [
    //           {'converter': 'f:1:Text', 'data': 'hello'},
    //           {'converter': 'f:1:Text', 'data': 'world'}
    //         ],
    //         itemTransformer: ZacTransformers([ConvertTransformer()]),
    //         transformer:
    //             ZacTransformers([const ListTransformer.fromFlutterWidget()]),
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //           child: FlutterColumn(
    //             children: ZacValueList<FlutterWidget>.consume(
    //               family: 'shared',
    //               transformer: ZacTransformers(
    //                 [
    //                   const IterableTransformer.take(1),
    //                   const IterableTransformer.toList(),
    //                   const ListTransformer.fromFlutterWidget()
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ));

    //   expect(find.text('hello'), findsOneWidget);

    //   SharedValue.update(
    //       zacContext,
    //       'shared',
    //       (current) => <FlutterWidget>[
    //             FlutterText(ZacValue<String>(value: 'hello world')),
    //             FlutterText(ZacValue<String>(value: 'foo bar')),
    //           ]);
    //   await tester.pumpAndSettle();

    //   expect(find.text('hello'), findsNothing);
    //   expect(find.text('foo bar'), findsNothing);
    //   expect(find.text('hello world'), findsOneWidget);
    // });

    // testWidgets('which can transform the value and read it', (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: [
    //           {'converter': 'f:1:Text', 'data': 'hello'},
    //           {'converter': 'f:1:Text', 'data': 'world'}
    //         ],
    //         itemTransformer: ZacTransformers([ConvertTransformer()]),
    //         transformer:
    //             ZacTransformers([const ListTransformer.fromFlutterWidget()]),
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //           child: FlutterColumn(
    //             children: ZacValueList<FlutterWidget>.consume(
    //               family: 'shared',
    //               forceConsume: const ZacValueConsumeType.read(),
    //               transformer: ZacTransformers(
    //                 [
    //                   const IterableTransformer.take(1),
    //                   const IterableTransformer.toList(),
    //                   const ListTransformer.fromFlutterWidget()
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ));

    //   expect(find.text('hello'), findsOneWidget);

    //   SharedValue.update(
    //       zacContext,
    //       'shared',
    //       (current) => <FlutterWidget>[
    //             FlutterText(ZacValue<String>(value: 'hello world')),
    //             FlutterText(ZacValue<String>(value: 'foo bar')),
    //           ]);
    //   await tester.pumpAndSettle();

    //   expect(find.text('hello'), findsOneWidget);
    //   expect(find.text('foo bar'), findsNothing);
    //   expect(find.text('hello world'), findsNothing);
    // });

    // testWidgets('which can select a subset of the value and watch it',
    //     (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: [
    //           {'converter': 'f:1:Text', 'data': 'hello'},
    //           {'converter': 'f:1:Text', 'data': 'world'}
    //         ],
    //         itemTransformer: ZacTransformers([ConvertTransformer()]),
    //         transformer:
    //             ZacTransformers([const ListTransformer.fromFlutterWidget()]),
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //           child: FlutterColumn(
    //             children: ZacValueList<FlutterWidget>.consume(
    //               family: 'shared',
    //               select: ZacTransformers(
    //                 [
    //                   const IterableTransformer.take(1),
    //                   const IterableTransformer.toList(),
    //                   const ListTransformer.fromFlutterWidget()
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ));

    //   expect(find.text('hello'), findsOneWidget);

    //   SharedValue.update(
    //       zacContext,
    //       'shared',
    //       (current) => <FlutterWidget>[
    //             FlutterText(ZacValue<String>(value: 'hello world')),
    //             FlutterText(ZacValue<String>(value: 'foo bar')),
    //           ]);
    //   await tester.pumpAndSettle();

    //   expect(find.text('hello'), findsNothing);
    //   expect(find.text('foo bar'), findsNothing);
    //   expect(find.text('hello world'), findsOneWidget);
    // });

    // testWidgets('which can select a subset of the value and read it',
    //     (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: [
    //           {'converter': 'f:1:Text', 'data': 'hello'},
    //           {'converter': 'f:1:Text', 'data': 'world'}
    //         ],
    //         itemTransformer: ZacTransformers([ConvertTransformer()]),
    //         transformer:
    //             ZacTransformers([const ListTransformer.fromFlutterWidget()]),
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //           child: FlutterColumn(
    //             children: ZacValueList<FlutterWidget>.consume(
    //               family: 'shared',
    //               forceConsume: const ZacValueConsumeType.read(),
    //               select: ZacTransformers(
    //                 [
    //                   const IterableTransformer.take(1),
    //                   const IterableTransformer.toList(),
    //                   const ListTransformer.fromFlutterWidget()
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ));

    //   expect(find.text('hello'), findsOneWidget);

    //   SharedValue.update(
    //       zacContext,
    //       'shared',
    //       (current) => <FlutterWidget>[
    //             FlutterText(ZacValue<String>(value: 'hello world')),
    //             FlutterText(ZacValue<String>(value: 'foo bar')),
    //           ]);
    //   await tester.pumpAndSettle();

    //   expect(find.text('hello'), findsOneWidget);
    //   expect(find.text('foo bar'), findsNothing);
    //   expect(find.text('hello world'), findsNothing);
    // });

    // testWidgets('will throw if the consumed value is no list', (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: 'no list',
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //         ),
    //       ));

    //   expect(
    //       () => ZacValueList<String>.consume(family: 'shared')
    //           .getValue(zacContext),
    //       throwsA(isA<StateError>().having(
    //           (p0) => p0.message,
    //           'error message',
    //           contains(
    //               'It was not possible to return a "ZacValueList<String>" because the consumed value was no List'))));
    // });

    // testWidgets(
    //     'will throw if the consumed value does not match the requested type and cannot be transformed',
    //     (tester) async {
    //   late ZacContext zacContext;
    //   await testZacWidget(
    //       tester,
    //       SharedValueProviderBuilder(
    //         family: 'shared',
    //         value: ['hello'],
    //         autoCreate: true,
    //         child: LeakContext(
    //           cb: (c) => zacContext = c,
    //         ),
    //       ));

    //   expect(
    //       () =>
    //           ZacValueList<int>.consume(family: 'shared').getValue(zacContext),
    //       throwsA(isA<AssertionError>().having(
    //           (p0) => p0.message,
    //           'error message',
    //           contains(
    //               'It was not possible to return a SharedValue in "ZacValueList<int>" for family "shared".'))));
    // });
  });

  testWidgets('pick a ZacValue and pass it to new actions as payload',
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
            value: ZacValue<String>.fromJson('hello'),
            actions: ZacActions([
              LeakAction(
                (p, zacContext) => payload = p,
              )
            ]),
          ),
        ]),
        child: FlutterSizedBox(),
      ),
    );

    expect(payload, ZacActionPayload.param('hello'));
  });
}
