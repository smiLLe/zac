import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';

import '../helper.dart';

void main() {
  group('FlutterValueKey', () {
    test('can be created from json', () {
      final json = {
        'converter': 'f:1:ValueKey',
        'value': 'foo',
      };
      expectConvert<FlutterValueKey>(
        json: json,
        expected: FlutterValueKey('foo'),
      );
      expectConvertIsA<FlutterValueKey, FlutterLocalKey>(json: json);
      expectConvertIsA<FlutterValueKey, FlutterKey>(json: json);

      expectConvertConsumeSharedValue<FlutterValueKey, ValueKey<String>>(
        converter: 'z:1:ValueKey.consume',
        create: FlutterValueKey.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectValueFromZacBuilder<FlutterValueKey, Key>(
        tester: tester,
        builder: FlutterValueKey('hello'),
        expectValue: const ValueKey('hello'),
        expectValueOrNull: const ValueKey('hello'),
      );

      await expectConsumedValueFromZacBuilder<Key, ValueKey<String>>(
        tester: tester,
        createBuilder: FlutterValueKey.consume,
        expectValue: const ValueKey('hello'),
        sharedValue: const ValueKey('hello'),
      );
    });
  });

  group('FlutterGlobalKeyNavigatorState', () {
    test('can be created from json', () {
      final json = {
        'converter': 'z:1:GlobalKey<NavigatorState>.consume',
        'family': 'fam',
      };
      expectConvertIsA<FlutterGlobalKeyNavigatorState, FlutterKey>(json: json);

      expectConvertConsumeSharedValue<FlutterGlobalKeyNavigatorState,
          GlobalKey<NavigatorState>>(
        converter: 'z:1:GlobalKey<NavigatorState>.consume',
        create: FlutterGlobalKeyNavigatorState.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectConsumedValueFromZacBuilder<Key, GlobalKey<NavigatorState>>(
        tester: tester,
        createBuilder: FlutterGlobalKeyNavigatorState.consume,
        expectValue: GlobalKey<NavigatorState>(debugLabel: 'label'),
        sharedValue: GlobalKey<NavigatorState>(debugLabel: 'label'),
      );
    });
  });

  group('FlutterGlobalKeyScaffoldMessengerState', () {
    test('can be created', () {
      final json = {
        'converter': 'z:1:GlobalKey<ScaffoldMessengerState>.consume',
        'family': 'fam',
      };
      expectConvertIsA<FlutterGlobalKeyScaffoldMessengerState, FlutterKey>(
          json: json);

      expectConvertConsumeSharedValue<FlutterGlobalKeyScaffoldMessengerState,
          GlobalKey<ScaffoldMessengerState>>(
        converter: 'z:1:GlobalKey<ScaffoldMessengerState>.consume',
        create: FlutterGlobalKeyScaffoldMessengerState.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      await expectConsumedValueFromZacBuilder<Key,
          GlobalKey<ScaffoldMessengerState>>(
        tester: tester,
        createBuilder: FlutterGlobalKeyScaffoldMessengerState.consume,
        expectValue: GlobalKey<ScaffoldMessengerState>(debugLabel: 'label'),
        sharedValue: GlobalKey<ScaffoldMessengerState>(debugLabel: 'label'),
      );
    });
  });

  group('ZacProvideFlutterKey', () {
    test('can be created fromJson', () {
      expect(
          ConverterHelper.convertToType<ZacProvideFlutterKey>({
            'converter': 'z:1:ProvideKey:GlobalKey<NavigatorState>',
            'child': {
              'converter': 'f:1:SizedBox',
            },
            'family': 'shared',
            'debugLabel': 'label',
          }),
          ZacProvideFlutterKey.navigatorState(
            child: ZacFlutterWidget(value: FlutterSizedBox()),
            family: 'shared',
            debugLabel: 'label',
          ));

      expect(
          ConverterHelper.convertToType<ZacProvideFlutterKey>({
            'converter': 'z:1:ProvideKey:GlobalKey<ScaffoldMessengerState>',
            'child': {
              'converter': 'f:1:SizedBox',
            },
            'family': 'shared',
            'debugLabel': 'label',
          }),
          ZacProvideFlutterKey.scaffoldMessengerState(
            child: ZacFlutterWidget(value: FlutterSizedBox()),
            family: 'shared',
            debugLabel: 'label',
          ));
    });

    testWidgets('can provide GlobalKey<ScaffoldMessengerState>',
        (tester) async {
      late Object? sharedValue;

      await tester.pumpWidget(ProviderScope(
        child: ZacWidget(
          data: ZacProvideFlutterKey.scaffoldMessengerState(
            family: 'shared',
            child: ZacFlutterWidget(
              value: TestBuildCustomWidget(
                (zacContext) {
                  sharedValue =
                      zacContext.ref.watch(SharedValue.provider('shared'));
                  return const SizedBox();
                },
              ),
            ),
          ),
        ),
      ));

      expect(sharedValue, isA<GlobalKey<ScaffoldMessengerState>>());
    });

    testWidgets('can provide GlobalKey<NavigatorState>', (tester) async {
      late Object? sharedValue;

      await tester.pumpWidget(ProviderScope(
        child: ZacWidget(
          data: ZacProvideFlutterKey.navigatorState(
            family: 'shared',
            child: ZacFlutterWidget(
              value: TestBuildCustomWidget(
                (zacContext) {
                  sharedValue =
                      zacContext.ref.watch(SharedValue.provider('shared'));
                  return const SizedBox();
                },
              ),
            ),
          ),
        ),
      ));

      expect(sharedValue, isA<GlobalKey<NavigatorState>>());
    });
  });
}
