import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/zac.dart';

import '../helper.dart';
import '../zac/zac_values_test.dart';

void main() {
  group('FlutterValueKey', () {
    test('can be created', () {
      expect(
          ConverterHelper.convertToType<FlutterValueKey>({
            'converter': 'f:1:ValueKey',
            'value': 'foo',
          }),
          FlutterValueKey('foo'));

      expect(
          ConverterHelper.convertToType<FlutterValueKey>({
            'converter': 'f:1:ValueKey',
            'value': 'foo',
          }),
          isA<FlutterLocalKey>());

      expect(
          ConverterHelper.convertToType<FlutterValueKey>({
            'converter': 'f:1:ValueKey',
            'value': 'foo',
          }),
          isA<FlutterKey>());

      expectCreateShared<FlutterValueKey, ValueKey<String>>(
        converter: 'z:1:ValueKey.consume',
        create: FlutterValueKey.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      late ZacContext zacContext;

      await tester.pumpWidget(ProviderScope(
        child: ZacWidget(data: LeakContext(cb: (c) => zacContext = c)),
      ));

      expect(FlutterValueKey('foo').getKey(zacContext),
          const ValueKey<String>('foo'));
      expect(FlutterValueKey('foo').getKeyOrNull(zacContext),
          const ValueKey<String>('foo'));

      await expectShared<ValueKey<String>>(
        tester: tester,
        createBuilder: FlutterValueKey.consume,
        expectValue: const ValueKey<String>('foo'),
      );
    });
  });

  group('FlutterGlobalKeyNavigatorState', () {
    test('can be created', () {
      expectCreateShared<FlutterGlobalKeyNavigatorState,
          GlobalKey<NavigatorState>>(
        converter: 'z:1:GlobalKey<NavigatorState>.consume',
        create: FlutterGlobalKeyNavigatorState.consume,
      );

      expect(FlutterGlobalKeyNavigatorState.consume(family: 'foo'),
          isA<FlutterKey>());
    });

    testWidgets('will return correct value', (tester) async {
      await expectShared<GlobalKey<NavigatorState>>(
        tester: tester,
        createBuilder: FlutterGlobalKeyNavigatorState.consume,
        expectValue: GlobalKey<NavigatorState>(),
      );
    });
  });

  group('FlutterGlobalKeyScaffoldMessengerState', () {
    test('can be created', () {
      expectCreateShared<FlutterGlobalKeyScaffoldMessengerState,
          GlobalKey<ScaffoldMessengerState>>(
        converter: 'z:1:GlobalKey<ScaffoldMessengerState>.consume',
        create: FlutterGlobalKeyScaffoldMessengerState.consume,
      );

      expect(FlutterGlobalKeyScaffoldMessengerState.consume(family: 'foo'),
          isA<FlutterKey>());
    });

    testWidgets('will return correct value', (tester) async {
      await expectShared<GlobalKey<ScaffoldMessengerState>>(
        tester: tester,
        createBuilder: FlutterGlobalKeyScaffoldMessengerState.consume,
        expectValue: GlobalKey<ScaffoldMessengerState>(),
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
