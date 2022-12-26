import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

Matcher _throwsInBuiltInConverter<T>() {
  return throwsA(isA<StateError>().having(
      (p0) => p0.message,
      'error message',
      contains(
          'It was not possible to convert data in ZacValue<$T>.fromJson()')));
}

void main() {
  group('ZacValue', () {
    test('Is in converters', () {
      expectInConverter(
          ['z:1:ZacValue', 'z:1:ZacValue.consume'], ZacValue.fromJson);
    });

    group('From Value', () {
      test('<num>', () {
        expect(ZacValue<num>.fromJson(5), ZacValue<num>(5));
        expect(ZacValue<num>.fromJson(5.1), ZacValue<num>(5.1));
        expect(ZacValue<num?>.fromJson(5), ZacValue<num?>(5));
        expect(
            () => ZacValue<num>.fromJson(''), _throwsInBuiltInConverter<num>());
      });

      test('<int>', () {
        expect(ZacValue<int>.fromJson(5), ZacValue<int>(5));
        expect(ZacValue<int?>.fromJson(5), ZacValue<int?>(5));
        expect(ZacValue<int>.fromJson(5.1), ZacValue<int>(5));
        expect(
            () => ZacValue<int>.fromJson(''), _throwsInBuiltInConverter<int>());
      });

      test('<double>', () {
        expect(ZacValue<double>.fromJson(5), ZacValue<double>(5.0));
        expect(ZacValue<double>.fromJson(5.1), ZacValue<double>(5.1));
        expect(ZacValue<double?>.fromJson(5.1), ZacValue<double?>(5.1));
        expect(() => ZacValue<double>.fromJson(''),
            _throwsInBuiltInConverter<double>());
      });

      test('<String>', () {
        expect(ZacValue<String>.fromJson('foo'), ZacValue<String>('foo'));
        expect(ZacValue<String?>.fromJson('foo'), ZacValue<String?>('foo'));
        expect(() => ZacValue<String>.fromJson(1),
            _throwsInBuiltInConverter<String>());
      });

      test('<bool>', () {
        expect(ZacValue<bool>.fromJson(false), ZacValue<bool>(false));
        expect(ZacValue<bool?>.fromJson(false), ZacValue<bool?>(false));
        expect(() => ZacValue<bool>.fromJson(1),
            _throwsInBuiltInConverter<bool>());
      });

      test('<DateTime>', () {
        final now = DateTime.now();
        expect(ZacValue<DateTime>.fromJson(now.toIso8601String()),
            ZacValue<DateTime>(now));
        expect(() => ZacValue<DateTime>.fromJson(1),
            _throwsInBuiltInConverter<DateTime>());
      });

      test('<Object>', () {
        final now = DateTime.now();
        expect(ZacValue<Object>.fromJson(now.toIso8601String()),
            ZacValue<Object>(now.toIso8601String()));

        expect(ZacValue<Object>.fromJson(5.1), ZacValue<Object>(5.1));
      });

      test('<Widget>', () {
        expect(
            ZacValue<Widget>.fromJson(<String, dynamic>{
              'converter': 'f:1:SizedBox',
            }),
            ZacValue<Widget>(FlutterSizedBox()));

        expect(
            ZacValue<Widget?>.fromJson(<String, dynamic>{
              'converter': 'f:1:SizedBox',
            }),
            ZacValue<Widget?>(FlutterSizedBox()));
      });

      testWidgets('.build()', (tester) async {
        Object? obj;
        await tester.pumpWidget(
          ZacWidget(
            data: LeakContext(
              cb: (zacContext) {
                obj = ZacValue<String>.fromJson('foo').build(zacContext);
              },
            ),
          ),
        );

        expect(obj, 'foo');
      });

      testWidgets('.build() #2', (tester) async {
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

        expect(ZacValue<Key>(FlutterValueKey('key')).build(zacContext),
            const ValueKey('key'));
      });
    });

    group('From consume', () {
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
                        child: ZacValue<Widget>(
                          LeakContext(
                            cb: (z) => zacContext = z,
                          ),
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
                    key: FlutterValueKey('FIND_ME_2').toZacValue(),
                  ),
                  family: 'shared',
                  child: ZacValue<Widget>(
                    TestBuildCustomWidget(
                      (zacContext) {
                        return ZacValue<Widget>.consume(family: 'shared')
                            .build(zacContext);
                      },
                    ),
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
                  child: ZacValue<Widget>(
                    LeakContext(
                      cb: (c) {
                        zacContext = c;
                      },
                    ),
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
                  child: ZacValue<Widget>(
                    LeakContext(
                      cb: (c) {
                        zacContext = c;
                      },
                    ),
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
                  child: ZacValue<Widget>(
                    LeakContext(
                      cb: (c) {
                        zacContext = c;
                      },
                    ),
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
  });

  group('ZacValueList', () {
    test('Is in converters', () {
      expectInConverter(['z:1:ZacValueList', 'z:1:ZacValueList.consume'],
          ZacValueList.fromJson);
    });

    group('From Values', () {
      test('create from simple list', () {
        expect(ZacValueList<int, List<int>>.fromJson([4]),
            ZacValueList<int, List<int>>(items: [ZacValue<int>.fromJson(4)]));
      });

      test('throws if unsupported type in fromJson', () {
        expect(
            () => ZacValueList<int, List<int>>.fromJson('NONO'),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'error message',
                contains(
                    'Unsupported type in ZacValueList<int, List<int>>: NONO'))));
      });

      test('will wrap items into a ZacValue', () {
        expect(
            ZacValueList<int, List<int>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueList',
              'items': [4],
            }),
            ZacValueList<int, List<int>>(items: [ZacValue<int>.fromJson(4)]));

        expect(
            ZacValueList<int?, List<int?>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueList',
              'items': [4],
            }),
            ZacValueList<int?, List<int?>>(
                items: [ZacValue<int?>.fromJson(4)]));

        expect(
            ZacValueList<Key, List<Key>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueList',
              'items': [
                {
                  'converter': 'f:1:ValueKey',
                  'value': 'hello',
                }
              ],
            }),
            ZacValueList<Key, List<Key>>(items: [
              ZacValue<Key>.fromJson({
                'converter': 'f:1:ValueKey',
                'value': 'hello',
              })
            ]));
      });

      testWidgets('.build()', (tester) async {
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
            ZacValueList<Key, List<Key>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueList',
              'items': [
                {
                  'converter': 'f:1:ValueKey',
                  'value': 'hello',
                },
                {
                  'converter': 'f:1:ValueKey',
                  'value': 'world',
                }
              ],
            }).build(zacContext),
            const [ValueKey('hello'), ValueKey('world')]);

        expect(
            ZacValueList<int?, List<int?>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueList',
              'items': [1, 2],
            }).build(zacContext),
            const [1, 2]);
      });
    });

    group('.consume', () {
      testWidgets('can consume null as list item', (tester) async {
        late List<int?> items;
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: [1, null],
                  family: 'shared',
                  child: ZacValue<Widget>(
                    TestBuildCustomWidget(
                      (zacContext) {
                        items = ZacValueList<int?, List<int?>>.consume(
                                family: 'shared')
                            .build(zacContext);
                        return const SizedBox();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        );

        expect(items, [1, null]);
      });

      testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: [
                    FlutterSizedBox(
                      key: FlutterValueKey('FIND_ME_2').toZacValue(),
                    )
                  ],
                  family: 'shared',
                  child: ZacValue<Widget>(
                    TestBuildCustomWidget(
                      (zacContext) {
                        return Column(
                          children: ZacValueList<Widget, List<Widget>>.consume(
                                  family: 'shared')
                              .build(zacContext),
                        );
                      },
                    ),
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
                    child: ZacValue<Widget>(
                      TestBuildCustomWidget(
                        (zacContext) {
                          return Column(
                            children: [
                              ...ZacValueList<String, List<String>>.consume(
                                      family: 'shared')
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
          ),
        );

        expect(find.text('hello'), findsOneWidget);
        expect(find.text('world'), findsOneWidget);
      });
    });
  });

  group('ZacValueMap', () {
    test('Is in converters', () {
      expectInConverter(
          ['z:1:ZacValueMap', 'z:1:ZacValueMap.consume'], ZacValueMap.fromJson);
    });

    group('From Values', () {
      test('create from simple Map', () {
        expect(
            ZacValueMap<int, Map<String, int>>.fromJson({'a': 1}),
            ZacValueMap<int, Map<String, int>>(
                items: {'a': ZacValue<int>.fromJson(1)}));
      });

      test('throws if unsupported type in fromJson', () {
        expect(
            () => ZacValueMap<int, Map<String, int>>.fromJson('NONO'),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'error message',
                contains(
                    'Unsupported type in ZacValueMap<int, Map<String, int>>: NONO'))));
      });

      test('will wrap items into a ZacValue', () {
        expect(
            ZacValueMap<int, Map<String, int>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueMap',
              'items': {'a': 1},
            }),
            ZacValueMap<int, Map<String, int>>(
                items: {'a': ZacValue<int>.fromJson(1)}));
        expect(
            ZacValueMap<int?, Map<String, int?>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueMap',
              'items': {'a': 1},
            }),
            ZacValueMap<int?, Map<String, int?>>(
                items: {'a': ZacValue<int?>.fromJson(1)}));

        expect(
            ZacValueMap<Key, Map<String, Key>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueMap',
              'items': {
                'a': {
                  'converter': 'f:1:ValueKey',
                  'value': 'hello',
                },
              },
            }),
            ZacValueMap<Key, Map<String, Key>>(
              items: {
                'a': ZacValue<Key>.fromJson({
                  'converter': 'f:1:ValueKey',
                  'value': 'hello',
                })
              },
            ));
      });

      testWidgets('.build()', (tester) async {
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
            ZacValueMap<Key, Map<String, Key>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueMap',
              'items': {
                'a': {
                  'converter': 'f:1:ValueKey',
                  'value': 'hello',
                },
                'b': {
                  'converter': 'f:1:ValueKey',
                  'value': 'world',
                }
              },
            }).build(zacContext),
            const {'a': ValueKey('hello'), 'b': ValueKey('world')});

        expect(
            ZacValueMap<int?, Map<String, int?>>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValueMap',
              'items': {'a': 1, 'b': 2},
            }).build(zacContext),
            const {'a': 1, 'b': 2});
      });
    });

    group('.consume', () {
      testWidgets('can consume null as value', (tester) async {
        late Map<String, int?> items;
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: {'a': null, 'b': 1},
                  family: 'shared',
                  child: ZacValue<Widget>(
                    TestBuildCustomWidget(
                      (zacContext) {
                        items = ZacValueMap<int?, Map<String, int?>>.consume(
                                family: 'shared')
                            .build(zacContext);
                        return const SizedBox();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        );

        expect(items, {'a': null, 'b': 1});
      });

      testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
        await tester.pumpWidget(
          ProviderScope(
            child: MaterialApp(
              home: ZacWidget(
                data: SharedValueProviderBuilder(
                  value: {
                    'a': FlutterSizedBox(
                      key: FlutterValueKey('FIND_ME_2').toZacValue(),
                    )
                  },
                  family: 'shared',
                  child: ZacValue<Widget>(
                    TestBuildCustomWidget(
                      (zacContext) {
                        final map =
                            ZacValueMap<Widget, Map<String, Widget>>.consume(
                                    family: 'shared')
                                .build(zacContext);

                        return map['a']!;
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        );

        expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
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
}
