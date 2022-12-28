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
          'It was not possible to convert data in ZacValue<$T>.fromJson()')));
}

void main() {
  group('ZacValue', () {
    test('Is in converters', () {
      expectInConverter('z:1:ZacValue', ZacValue.fromJson);
    });

    group('From Value', () {
      test('<num>', () {
        expect(ZacBuilder<num>.fromJson(5), ZacValue<num>(5));
        expect(ZacBuilder<num>.fromJson(5.1), ZacValue<num>(5.1));
        expect(ZacBuilder<num?>.fromJson(5), ZacValue<num?>(5));
        expect(
            () => ZacBuilder<num>.fromJson(''), _throwsConverterIssue<num>());
      });

      test('<int>', () {
        expect(ZacBuilder<int>.fromJson(5), ZacValue<int>(5));
        expect(ZacBuilder<int?>.fromJson(5), ZacValue<int?>(5));
        expect(ZacBuilder<int>.fromJson(5.1), ZacValue<int>(5));
        expect(
            () => ZacBuilder<int>.fromJson(''), _throwsConverterIssue<int>());
      });

      test('<double>', () {
        expect(ZacBuilder<double>.fromJson(5), ZacValue<double>(5.0));
        expect(ZacBuilder<double>.fromJson(5.1), ZacValue<double>(5.1));
        expect(ZacBuilder<double?>.fromJson(5.1), ZacValue<double?>(5.1));
        expect(() => ZacBuilder<double>.fromJson(''),
            _throwsConverterIssue<double>());
      });

      test('<String>', () {
        expect(ZacBuilder<String>.fromJson('foo'), ZacValue<String>('foo'));
        expect(ZacBuilder<String?>.fromJson('foo'), ZacValue<String?>('foo'));
        expect(() => ZacBuilder<String>.fromJson(1),
            _throwsConverterIssue<String>());
      });

      test('<bool>', () {
        expect(ZacBuilder<bool>.fromJson(false), ZacValue<bool>(false));
        expect(ZacBuilder<bool?>.fromJson(false), ZacValue<bool?>(false));
        expect(
            () => ZacBuilder<bool>.fromJson(1), _throwsConverterIssue<bool>());
      });

      test('<DateTime>', () {
        final now = DateTime.now();
        expect(ZacBuilder<DateTime>.fromJson(now.toIso8601String()),
            ZacValue<DateTime>(now));
        expect(() => ZacBuilder<DateTime>.fromJson(1),
            _throwsConverterIssue<DateTime>());
      });

      test('<Object>', () {
        final now = DateTime.now();
        expect(ZacBuilder<Object>.fromJson(now.toIso8601String()),
            ZacValue<Object>(now.toIso8601String()));

        expect(ZacBuilder<Object>.fromJson(5.1), ZacValue<Object>(5.1));
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
