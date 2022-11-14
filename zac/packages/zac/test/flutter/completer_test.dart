import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/completer.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';

void main() {
  test('Create Provider from json', () {
    expect(
        ConverterHelper.convertToType<ZacCompleterProviderBuilder>({
          'converter': 'z:1:CompleterProvider.void',
          'family': 'shared',
          'child': {'converter': 'f:1:SizedBox'},
          'completer': {
            'converter': 'd:1:Completer<void>',
          }
        }),
        ZacCompleterProviderBuilder.asVoid(
          child:
              ZacValue<FlutterWidget>.fromJson({'converter': 'f:1:SizedBox'}),
          family: 'shared',
        ));
  });
  testWidgets('ZacCompleterProvider Completer using ZacCompleterProvider',
      (tester) async {
    late ZacContext zacContext;
    await testWithinMaterialApp(
        tester,
        ZacCompleterProvider<int>(
          childBuilder: (c) {
            zacContext = c;
            return const SizedBox.shrink();
          },
          family: 'shared',
          completerBuilder: () => _IntCompleter(),
          disposeComplete: (completer) => completer.complete(0),
        ));

    expect(
        ZacValue<DartCompleter<int>>.consume(family: 'shared')
            .getValue(zacContext)
            .getCompleter(),
        isA<Completer<int>>());
  });

  testWidgets(
      'ZacCompleterProvider allows to complete the Completer on autoDispose',
      (tester) async {
    late ZacContext zacContext;
    await testWithinMaterialApp(
        tester,
        ZacCompleterProvider<int>(
          key: const ValueKey('a'),
          childBuilder: (c) {
            zacContext = c;
            return const SizedBox.shrink();
          },
          family: 'shared',
          completerBuilder: () => _IntCompleter(),
          disposeComplete: (completer) => completer.complete(0),
        ));

    final completer = ZacValue<DartCompleter<int>>.consume(family: 'shared')
        .getValue(zacContext)
        .getCompleter();

    await tester.pumpWidget(const SizedBox());

    expect(completer.isCompleted, isTrue);
  });

  testWidgets('ZacCompleterProviderBuilder provide a void completer',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
        tester,
        ZacCompleterProviderBuilder.asVoid(
          child: ZacValue<FlutterWidget>(data: LeakContext(cb: (c) {
            zacContext = c;
          })),
          family: 'shared',
        ));

    expect(
        ZacValue<DartCompleter<dynamic>>.consume(family: 'shared')
            .getValue(zacContext)
            .getCompleter(),
        isA<Completer<void>>());
  });

  test('ZacCompleterActions from json', () {
    expect(
        ConverterHelper.convertToType<ZacCompleterActions>({
          'converter': 'z:1:CompleterAction.completeVoid',
          'completer': {
            'converter': 'z:1:ZacValue.consume',
            'family': 'shared',
          },
        }),
        ZacCompleterActions.completeVoid(
            completer: ZacValueConsumeOnly<DartCompleter<dynamic>>(
                ZacValue.consume(family: 'shared'))));
  });

  testWidgets('Complete a Completer<void> using ZacCompleterActions',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
        tester,
        ZacCompleterProviderBuilder.asVoid(
          child: ZacValue<FlutterWidget>(data: LeakContext(cb: (c) {
            zacContext = c;
          })),
          family: 'shared',
        ));

    final completer = ZacValue<DartCompleter<dynamic>>.consume(family: 'shared')
        .getValue(zacContext)
        .getCompleter();

    ZacCompleterActions.completeVoid(
            completer: ZacValueConsumeOnly<DartCompleter<dynamic>>(
                ZacValue.consume(family: 'shared')))
        .execute(const ZacActionPayload(), zacContext);

    expect(completer.isCompleted, isTrue);
  });
}

class _IntCompleter extends DartCompleter<int> {
  final Completer<int> completer = Completer<int>();
  @override
  Completer<int> getCompleter() => completer;
}
