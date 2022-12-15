import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';

import '../helper.dart';
import '../zac/zac_values_test.dart';

void main() {
  group('FlutterValueKey', () {
    test('is in converters', () {
      expectInConverter('f:1:ValueKey', FlutterValueKey.fromJson);
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
          FlutterValueKey.fromJson(<String, dynamic>{
            'converter': 'f:1:ValueKey',
            'value': 'val'
          }).build(zacContext),
          const ValueKey<String>('val'));
    });
  });

  group('Provide GlobalKey<NavigatorState>', () {
    test('is in converters', () {
      expectInConverter('z:1:GlobalKey<NavigatorState>.provide',
          FlutterGlobalKeyNavigatorStateProvider.fromJson);
    });

    testWidgets('.build()', (tester) async {
      late ZacContext zacContext;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: FlutterGlobalKeyNavigatorStateProvider(
              family: 'shared',
              child: ZacValue<Widget>.builder(
                LeakContext(
                  cb: (z) => zacContext = z,
                ),
              ),
            ),
          ),
        ),
      );

      expect(
          ZacValue<GlobalKey<NavigatorState>>.consume(family: 'shared')
              .build(zacContext),
          isA<GlobalKey<NavigatorState>>());
    });
  });

  group('Provide GlobalKey<ScaffoldMessengerState>', () {
    test('is in converters', () {
      expectInConverter('z:1:GlobalKey<ScaffoldMessengerState>.provide',
          FlutterGlobalKeyScaffoldMessengerStateProvider.fromJson);
    });

    testWidgets('.build()', (tester) async {
      late ZacContext zacContext;
      await tester.pumpWidget(
        ProviderScope(
          child: ZacWidget(
            data: FlutterGlobalKeyScaffoldMessengerStateProvider(
              family: 'shared',
              child: ZacValue<Widget>.builder(
                LeakContext(
                  cb: (z) => zacContext = z,
                ),
              ),
            ),
          ),
        ),
      );

      expect(
          ZacValue<GlobalKey<ScaffoldMessengerState>>.consume(family: 'shared')
              .build(zacContext),
          isA<GlobalKey<ScaffoldMessengerState>>());
    });
  });
}
