import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';

import '../helper.dart';

void main() {
  group('FlutterValueKey', () {
    test('is in converters', () {
      expectInRegistry('f:1:ValueKey', FlutterValueKey.fromJson);
    });

    testWidgets('.build()', (tester) async {
      late ZacContext zacContext;
      await tester.pumpWidget(
        ZacWidget(
          data: LeakContext(
            cb: (z) => zacContext = z,
          ),
        ),
      );
      expect(
          FlutterValueKey.fromJson(
                  <String, dynamic>{'builder': 'f:1:ValueKey', 'value': 'val'})
              .build(zacContext),
          const ValueKey<String>('val'));
    });
  });

  group('Provide GlobalKey<NavigatorState>', () {
    test('is in converters', () {
      expectInRegistry('z:1:GlobalKey<NavigatorState>.provide',
          FlutterGlobalKeyNavigatorStateProvider.fromJson);
    });

    testWidgets('.build()', (tester) async {
      late ZacContext zacContext;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: FlutterGlobalKeyNavigatorStateProvider(
              family: 'shared',
              child: LeakContext(
                cb: (z) => zacContext = z,
              ),
            ),
          ),
        ),
      );

      expect(
          ConsumeSharedValue<GlobalKey<NavigatorState>>(family: 'shared')
              .build(zacContext),
          isA<GlobalKey<NavigatorState>>());
    });
  });

  group('Provide GlobalKey<ScaffoldMessengerState>', () {
    test('is in converters', () {
      expectInRegistry('z:1:GlobalKey<ScaffoldMessengerState>.provide',
          FlutterGlobalKeyScaffoldMessengerStateProvider.fromJson);
    });

    testWidgets('.build()', (tester) async {
      late ZacContext zacContext;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: FlutterGlobalKeyScaffoldMessengerStateProvider(
              family: 'shared',
              child: LeakContext(
                cb: (z) => zacContext = z,
              ),
            ),
          ),
        ),
      );

      expect(
          ConsumeSharedValue<GlobalKey<ScaffoldMessengerState>>(
                  family: 'shared')
              .build(zacContext),
          isA<GlobalKey<ScaffoldMessengerState>>());
    });
  });
}
