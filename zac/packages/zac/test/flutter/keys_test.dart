import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/zac.dart';

import '../helper.dart';

void main() {
  group('FlutterValueKey', () {
    test('is in converters', () {
      expectInRegistry('f:1:ValueKey', FlutterValueKey.fromJson);
    });

    testWidgets('.build()', (tester) async {
      await testWithContexts(
        tester,
        (getContext, getZacContext) {
          expect(
              FlutterValueKey.fromJson(<String, dynamic>{
                'builder': 'f:1:ValueKey',
                'value': 'val'
              }).build(getContext(), getZacContext()),
              const ValueKey<String>('val'));
        },
      );
    });
  });

  group('GlobalKey<NavigatorState>', () {
    test('is in registry', () {
      expectInRegistry('f:1:GlobalKey<NavigatorState>',
          FlutterGlobalKeyNavigatorState.fromJson);
    });
  });

  group('Provide GlobalKey<ScaffoldMessengerState>', () {
    test('is in registry', () {
      expectInRegistry('f:1:GlobalKey<ScaffoldMessengerState>',
          FlutterGlobalKeyScaffoldMessengerState.fromJson);
    });
  });
}
