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

  group('Provide GlobalKey<NavigatorState>', () {
    test('is in converters', () {
      expectInRegistry('z:1:GlobalKey<NavigatorState>.provide',
          FlutterGlobalKeyNavigatorStateProvider.fromJson);
    });

    testWidgets('.build()', (tester) async {
      await testWithContextsWraped(
        tester,
        (child) => FlutterGlobalKeyNavigatorStateProvider(
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(
              ConsumeSharedValue<GlobalKey<NavigatorState>>(family: 'shared')
                  .build(getContext(), getZacContext()),
              isA<GlobalKey<NavigatorState>>());
        },
      );
    });
  });

  group('Provide GlobalKey<ScaffoldMessengerState>', () {
    test('is in converters', () {
      expectInRegistry('z:1:GlobalKey<ScaffoldMessengerState>.provide',
          FlutterGlobalKeyScaffoldMessengerStateProvider.fromJson);
    });

    testWidgets('.build()', (tester) async {
      await testWithContextsWraped(
        tester,
        (child) => FlutterGlobalKeyScaffoldMessengerStateProvider(
          family: 'shared',
          child: child,
        ),
        (getContext, getZacContext) {
          expect(
              ConsumeSharedValue<GlobalKey<ScaffoldMessengerState>>(
                      family: 'shared')
                  .build(getContext(), getZacContext()),
              isA<GlobalKey<ScaffoldMessengerState>>());
        },
      );
    });
  });
}
