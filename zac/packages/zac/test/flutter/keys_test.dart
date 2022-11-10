import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';

import '../helper.dart';

void main() {
  test('FlutterKey', () {
    fakeBuild<ValueKey>(
      FlutterKey.fromJson(<String, dynamic>{
        'converter': FlutterValueKey.unionValue,
        'value': 'test_key',
      }).buildKey,
      (matcher) => matcher.having(
          (p0) => p0, 'ValueKey', equals(const ValueKey<String>('test_key'))),
    );
  });

  test('FlutterLocalKey', () {
    fakeBuild<ValueKey>(
      FlutterLocalKey.fromJson(<String, dynamic>{
        'converter': FlutterValueKey.unionValue,
        'value': 'test_key',
      }).buildKey,
      (matcher) => matcher.having(
          (p0) => p0, 'ValueKey', equals(const ValueKey<String>('test_key'))),
    );
  });

  test('FlutterValueKey', () {
    fakeBuild<ValueKey>(
      FlutterValueKey.fromJson(<String, dynamic>{
        'converter': FlutterValueKey.unionValue,
        'value': 'test_key',
      }).buildKey,
      (matcher) => matcher.having(
          (p0) => p0, 'ValueKey', equals(const ValueKey<String>('test_key'))),
    );
  });

  group('FlutterGlobalKeyNavigatorState', () {
    testWidgets('Can be create/converted to builder', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      expect(
          ConverterHelper.convertToType<FlutterGlobalKeyNavigatorState>({
            'converter': 'f:1:GlobalKey<NavigatorState>',
          }),
          isA<FlutterGlobalKeyNavigatorStateBuilder>());

      expect(
          ConverterHelper.convertToType<FlutterGlobalKeyNavigatorState>({
            'converter': 'f:1:GlobalKey<NavigatorState>',
            'debugLabel': 'foo',
          }),
          isA<FlutterGlobalKeyNavigatorStateBuilder>()
              .having((p0) => p0.debugLabel, 'debugLabel', 'foo'));

      expect(
          ConverterHelper.convertToType<FlutterGlobalKeyNavigatorState>({
            'converter': 'f:1:GlobalKey<NavigatorState>',
          }).buildKey(zacContext),
          isA<GlobalKey<NavigatorState>>());
    });

    testWidgets('Can be manually created', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
      final key = GlobalKey<NavigatorState>(debugLabel: 'foo');
      expect(ZacGlobalKeyNavigatorState(key).buildKey(zacContext), key);
    });
  });
}
