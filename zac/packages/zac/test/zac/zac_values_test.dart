import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
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
              forceConsume: const ZacValueConsumeType.read(),
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
              forceConsume: const ZacValueConsumeType.read(),
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
