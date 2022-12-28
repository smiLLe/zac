import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

Matcher _throwsConverterIssue<T>() {
  return throwsA(isA<StateError>().having(
      (p0) => p0.message,
      'error message',
      contains(
          'It was not possible to convert data in ZacValueSimple<$T>.fromJson()')));
}

void main() {
  group('ZacValue', () {
    test('Is in converters', () {
      expectInConverter('z:1:ZacValue', ZacValueSimple.fromJson);
    });

    group('From Value', () {
      test('<num>', () {
        expect(ZacBuilder<num>.fromJson(5), ZacValueSimple<num>(5));
        expect(ZacBuilder<num>.fromJson(5.1), ZacValueSimple<num>(5.1));
        expect(ZacBuilder<num?>.fromJson(5), ZacValueSimple<num?>(5));
        expect(
            () => ZacBuilder<num>.fromJson(''), _throwsConverterIssue<num>());
      });

      test('<int>', () {
        expect(ZacBuilder<int>.fromJson(5), ZacValueSimple<int>(5));
        expect(ZacBuilder<int?>.fromJson(5), ZacValueSimple<int?>(5));
        expect(ZacBuilder<int>.fromJson(5.1), ZacValueSimple<int>(5));
        expect(
            () => ZacBuilder<int>.fromJson(''), _throwsConverterIssue<int>());
      });

      test('<double>', () {
        expect(ZacBuilder<double>.fromJson(5), ZacValueSimple<double>(5.0));
        expect(ZacBuilder<double>.fromJson(5.1), ZacValueSimple<double>(5.1));
        expect(ZacBuilder<double?>.fromJson(5.1), ZacValueSimple<double?>(5.1));
        expect(() => ZacBuilder<double>.fromJson(''),
            _throwsConverterIssue<double>());
      });

      test('<String>', () {
        expect(
            ZacBuilder<String>.fromJson('foo'), ZacValueSimple<String>('foo'));
        expect(ZacBuilder<String?>.fromJson('foo'),
            ZacValueSimple<String?>('foo'));
        expect(() => ZacBuilder<String>.fromJson(1),
            _throwsConverterIssue<String>());
      });

      test('<bool>', () {
        expect(ZacBuilder<bool>.fromJson(false), ZacValueSimple<bool>(false));
        expect(ZacBuilder<bool?>.fromJson(false), ZacValueSimple<bool?>(false));
        expect(
            () => ZacBuilder<bool>.fromJson(1), _throwsConverterIssue<bool>());
      });

      test('<DateTime>', () {
        final now = DateTime.now();
        expect(ZacBuilder<DateTime>.fromJson(now.toIso8601String()),
            ZacValueSimple<DateTime>(now));
        expect(() => ZacBuilder<DateTime>.fromJson(1),
            _throwsConverterIssue<DateTime>());
      });

      test('<Object>', () {
        final now = DateTime.now();
        expect(ZacBuilder<Object>.fromJson(now.toIso8601String()),
            ZacValueSimple<Object>(now.toIso8601String()));

        expect(ZacBuilder<Object>.fromJson(5.1), ZacValueSimple<Object>(5.1));
      });

      testWidgets('.build()', (tester) async {
        Object? obj;
        await tester.pumpWidget(
          ZacWidget(
            data: LeakContext(
              cb: (zacContext) {
                obj = ZacBuilder<String>.fromJson('foo').build(zacContext);
              },
            ),
          ),
        );

        expect(obj, 'foo');
      });
    });

    // group('From consume', () {
    //   test('can be created', () {
    //     expect(
    //         ZacBuilder<Widget>.fromJson({
    //           'builder': 'z:1:ZacValue.consume',
    //           'family': 'shared',
    //         }),
    //         ZacValueConsume<Widget>(family: 'shared'));
    //   });

    //   group('.build()', () {
    //     testWidgets('can consume and build without transformer',
    //         (tester) async {
    //       Future<void> _test<T>({required Object? shareValue}) async {
    //         late final ZacContext zacContext;
    //         await tester.pumpWidget(
    //           ProviderScope(
    //             child: MaterialApp(
    //               home: Material(
    //                 child: ZacWidget(
    //                   data: SharedValueProviderBuilder(
    //                     value: shareValue,
    //                     family: 'shared',
    //                     child: LeakContext(
    //                       cb: (z) => zacContext = z,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         );

    //         expect(ZacValueConsume<T>(family: 'shared').build(zacContext),
    //             shareValue);
    //       }

    //       await _test<int>(shareValue: 5);
    //       await _test<int?>(shareValue: 5);
    //       await _test<int?>(shareValue: null);
    //     });

    //     testWidgets('can consume and build a ZacBuilder<Widget>',
    //         (tester) async {
    //       await tester.pumpWidget(
    //         ProviderScope(
    //           child: ZacWidget(
    //             data: SharedValueProviderBuilder(
    //               value: FlutterSizedBox(
    //                 key: FlutterValueKey('FIND_ME_2'),
    //               ),
    //               family: 'shared',
    //               child: TestBuildCustomWidget(
    //                 (zacContext) {
    //                   return ZacValueConsume<Widget>(family: 'shared')
    //                       .build(zacContext);
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       );

    //       expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
    //     });

    //     testWidgets('can transform the shared value', (tester) async {
    //       late ZacContext zacContext;
    //       await tester.pumpWidget(
    //         ProviderScope(
    //           child: ZacWidget(
    //             data: SharedValueProviderBuilder(
    //               value: 'hello',
    //               family: 'shared',
    //               transformer: ZacTransformers([
    //                 CustomTransformer(
    //                   (transformValue, zacContext, payload) {
    //                     return (transformValue.value as String).length;
    //                   },
    //                 )
    //               ]),
    //               child: LeakContext(
    //                 cb: (c) {
    //                   zacContext = c;
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //       expect(ZacValueConsume<int>(family: 'shared').build(zacContext), 5);
    //     });

    //     testWidgets('will throw if shared value is null but null is not wanted',
    //         (tester) async {
    //       late ZacContext zacContext;
    //       await tester.pumpWidget(
    //         ProviderScope(
    //           child: ZacWidget(
    //             data: SharedValueProviderBuilder(
    //               value: null,
    //               family: 'shared',
    //               child: LeakContext(
    //                 cb: (c) {
    //                   zacContext = c;
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //       expect(
    //           () => ZacValueConsume<String>(family: 'shared').build(zacContext),
    //           throwsA(isA<StateError>().having(
    //               (p0) => p0.message,
    //               'error message',
    //               contains(
    //                   'because the value is null and there are no transformers added'))));
    //     });

    //     testWidgets(
    //         'will throw if shared value is not of expected type and no transformer were available',
    //         (tester) async {
    //       late ZacContext zacContext;
    //       await tester.pumpWidget(
    //         ProviderScope(
    //           child: ZacWidget(
    //             data: SharedValueProviderBuilder(
    //               value: 'hello',
    //               family: 'shared',
    //               child: LeakContext(
    //                 cb: (c) {
    //                   zacContext = c;
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //       expect(
    //           () => ZacValueConsume<int>(family: 'shared').build(zacContext),
    //           throwsA(isA<StateError>().having(
    //               (p0) => p0.message,
    //               'error message',
    //               contains(
    //                   'The value of type String was expected to be transformed'))));
    //     });
    //   });
    // });
  });

  group('ZacValueList', () {
    test('Is in converters', () {
      expectInConverter(['z:1:ZacValueList'], ZacValueListSimple.fromJson);
    });

    group('From Values', () {
      test('create from simple list', () {
        expect(ZacValueListSimple<int, List<int>>.fromJson([4]),
            ZacValueListSimple<int, List<int>>([ZacBuilder<int>.fromJson(4)]));
      });

      test('throws if unsupported type in fromJson', () {
        expect(
            () => ZacValueListSimple<int, List<int>>.fromJson('NONO'),
            throwsA(isA<StateError>().having(
                (p0) => p0.message,
                'error message',
                contains(
                    'Unsupported type in ZacValueListSimple<int, List<int>>: NONO'))));
      });

      test('will wrap items into a ZacValue', () {
        expect(
            ZacValueListSimple<int, List<int>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [4],
            }),
            ZacValueListSimple<int, List<int>>([ZacBuilder<int>.fromJson(4)]));

        expect(
            ZacValueListSimple<int?, List<int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [4],
            }),
            ZacValueListSimple<int?, List<int?>>(
                [ZacBuilder<int?>.fromJson(4)]));

        expect(
            ZacValueListSimple<Key, List<Key>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [
                {
                  'builder': 'f:1:ValueKey',
                  'value': 'hello',
                }
              ],
            }),
            ZacValueListSimple<Key, List<Key>>([
              ZacBuilder<Key>.fromJson({
                'builder': 'f:1:ValueKey',
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
            ZacValueListSimple<Key, List<Key>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [
                {
                  'builder': 'f:1:ValueKey',
                  'value': 'hello',
                },
                {
                  'builder': 'f:1:ValueKey',
                  'value': 'world',
                }
              ],
            }).build(zacContext),
            const [ValueKey('hello'), ValueKey('world')]);

        expect(
            ZacValueListSimple<int?, List<int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [1, 2],
            }).build(zacContext),
            const [1, 2]);
      });
    });

    // group('.consume', () {
    //   testWidgets('can consume null as list item', (tester) async {
    //     late List<int?> items;
    //     await tester.pumpWidget(
    //       ProviderScope(
    //         child: MaterialApp(
    //           home: ZacWidget(
    //             data: SharedValueProviderBuilder(
    //               value: [1, null],
    //               family: 'shared',
    //               child: TestBuildCustomWidget(
    //                 (zacContext) {
    //                   items = ZacValueListConsume<int?, List<int?>>(
    //                           family: 'shared')
    //                       .build(zacContext);
    //                   return const SizedBox();
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );

    //     expect(items, [1, null]);
    //   });

    //   testWidgets('can consume a ZacBuilder<Widget>', (tester) async {
    //     await tester.pumpWidget(
    //       ProviderScope(
    //         child: MaterialApp(
    //           home: ZacWidget(
    //             data: SharedValueProviderBuilder(
    //               value: [
    //                 FlutterSizedBox(
    //                   key: FlutterValueKey('FIND_ME_2'),
    //                 )
    //               ],
    //               family: 'shared',
    //               child: TestBuildCustomWidget(
    //                 (zacContext) {
    //                   return Column(
    //                     children: ZacValueListConsume<Widget, List<Widget>>(
    //                             family: 'shared')
    //                         .build(zacContext),
    //                   );
    //                 },
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );

    //     expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
    //   });

    //   testWidgets('can consume a String', (tester) async {
    //     await tester.pumpWidget(
    //       ProviderScope(
    //         child: MaterialApp(
    //           home: Material(
    //             child: ZacWidget(
    //               data: SharedValueProviderBuilder(
    //                 value: ['hello', 'world'],
    //                 family: 'shared',
    //                 child: TestBuildCustomWidget(
    //                   (zacContext) {
    //                     return Column(
    //                       children: [
    //                         ...ZacValueListConsume<String, List<String>>(
    //                                 family: 'shared')
    //                             .build(zacContext)
    //                             .map((e) => Text(e))
    //                       ],
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );

    //     expect(find.text('hello'), findsOneWidget);
    //     expect(find.text('world'), findsOneWidget);
    //   });
    // });
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
                items: {'a': ZacBuilder<int>.fromJson(1)}));
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
              'builder': 'z:1:ZacValueMap',
              'items': {'a': 1},
            }),
            ZacValueMap<int, Map<String, int>>(
                items: {'a': ZacBuilder<int>.fromJson(1)}));
        expect(
            ZacValueMap<int?, Map<String, int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueMap',
              'items': {'a': 1},
            }),
            ZacValueMap<int?, Map<String, int?>>(
                items: {'a': ZacBuilder<int?>.fromJson(1)}));

        expect(
            ZacValueMap<Key, Map<String, Key>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueMap',
              'items': {
                'a': {
                  'builder': 'f:1:ValueKey',
                  'value': 'hello',
                },
              },
            }),
            ZacValueMap<Key, Map<String, Key>>(
              items: {
                'a': ZacBuilder<Key>.fromJson({
                  'builder': 'f:1:ValueKey',
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
              'builder': 'z:1:ZacValueMap',
              'items': {
                'a': {
                  'builder': 'f:1:ValueKey',
                  'value': 'hello',
                },
                'b': {
                  'builder': 'f:1:ValueKey',
                  'value': 'world',
                }
              },
            }).build(zacContext),
            const {'a': ValueKey('hello'), 'b': ValueKey('world')});

        expect(
            ZacValueMap<int?, Map<String, int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueMap',
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
                  child: TestBuildCustomWidget(
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
                      key: FlutterValueKey('FIND_ME_2'),
                    )
                  },
                  family: 'shared',
                  child: TestBuildCustomWidget(
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
        );

        expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
      });
    });
  });

  testWidgets('Pick a ZacValue and pass it to new actions as payload',
      (tester) async {
    expect(
        () => ConverterHelper.convertToType<ZacValueActions>(<String, dynamic>{
              'builder': 'z:1:ZacValue.asActionPayload',
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
            value: ZacBuilder<Object>.fromJson('hello'),
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
