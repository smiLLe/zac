import 'package:flutter/foundation.dart';
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
      expectInRegistry('z:1:ZacValue', ZacValue.fromRegister);
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
      expectInRegistry(['z:1:ZacValueList'], ZacValueList.fromRegister);
    });

    group('From Values', () {
      test('create from simple list', () {
        expect(ZacValueList<int, List<int>>.fromJson([4]),
            ZacValueList<int, List<int>>([ZacBuilder<int>.fromJson(4)]));
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
              'builder': 'z:1:ZacValueList',
              'items': [4],
            }),
            ZacValueList<int, List<int>>([ZacBuilder<int>.fromJson(4)]));

        expect(
            ZacValueList<int?, List<int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [4],
            }),
            ZacValueList<int?, List<int?>>([ZacBuilder<int?>.fromJson(4)]));

        expect(
            ZacValueList<Key, List<Key>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [
                {
                  'builder': 'f:1:ValueKey',
                  'value': 'hello',
                }
              ],
            }),
            ZacValueList<Key, List<Key>>([
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
            ZacValueList<Key, List<Key>>.fromJson(<String, dynamic>{
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
            }).build(context, zacContext),
            const [ValueKey('hello'), ValueKey('world')]);

        expect(
            ZacValueList<int?, List<int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueList',
              'items': [1, 2],
            }).build(context, zacContext),
            const [1, 2]);
      });
    });
  });

  group('ZacValueMap', () {
    test('Is in converters', () {
      expectInRegistry(['z:1:ZacValueMap'], ZacValueMap.fromRegister);
    });

    group('From Values', () {
      test('create from simple Map', () {
        expect(
            ZacMapBuilder<int, Map<String, int>>.fromJson({'a': 1}),
            ZacValueMap<int, Map<String, int>>(
                {'a': ZacBuilder<int>.fromJson(1)}));
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

      test('will wrap items into a ZacBuilder', () {
        expect(
            ZacMapBuilder<int, Map<String, int>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueMap',
              'items': {'a': 1},
            }),
            ZacValueMap<int, Map<String, int>>(
                {'a': ZacBuilder<int>.fromJson(1)}));
        expect(
            ZacMapBuilder<int?, Map<String, int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueMap',
              'items': {'a': 1},
            }),
            ZacValueMap<int?, Map<String, int?>>(
                {'a': ZacBuilder<int?>.fromJson(1)}));

        expect(
            ZacMapBuilder<Key, Map<String, Key>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueMap',
              'items': {
                'a': {
                  'builder': 'f:1:ValueKey',
                  'value': 'hello',
                },
              },
            }),
            ZacValueMap<Key, Map<String, Key>>(
              {
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
            }).build(context, zacContext),
            const {'a': ValueKey('hello'), 'b': ValueKey('world')});

        expect(
            ZacValueMap<int?, Map<String, int?>>.fromJson(<String, dynamic>{
              'builder': 'z:1:ZacValueMap',
              'items': {'a': 1, 'b': 2},
            }).build(context, zacContext),
            const {'a': 1, 'b': 2});
      });
    });
  });

  testWidgets('Pick a ZacValue and pass it to new actions as payload',
      (tester) async {
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
