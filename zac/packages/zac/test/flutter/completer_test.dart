import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/completer.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';

void main() {
  group('DartCompleterVoid', () {
    test('can be created', () {
      expectConvertConsumeSharedValue<DartCompleterVoid, Completer<void>>(
        converter: 'z:1:Completer<void>.consume',
        create: DartCompleterVoid.consume,
      );
    });

    testWidgets('will return correct value', (tester) async {
      final val = Completer<void>();
      await expectConsumedValueFromZacBuilder<Completer<void>, Completer<void>>(
        tester: tester,
        createBuilder: DartCompleterVoid.consume,
        expectValue: val,
        sharedValue: val,
      );
    });
  });
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
          child: ZacValue<Widget>.fromJson({'converter': 'f:1:SizedBox'}),
          family: 'shared',
        ));
  });
  testWidgets('ZacCompleterProvider Completer using ZacCompleterProvider',
      (tester) async {
    late ZacContext zacContext;
    await testWithinMaterialApp(
        tester,
        ZacCompleterProvider<void>(
          childBuilder: (c) {
            zacContext = c;
            return const SizedBox.shrink();
          },
          family: 'shared',
          completerBuilder: () => Completer<void>(),
          disposeComplete: (completer) => completer.complete(),
        ));

    expect(DartCompleterVoid.consume(family: 'shared').build(zacContext),
        isA<Completer<void>>());
  });

  testWidgets(
      'ZacCompleterProvider allows to complete the Completer on autoDispose',
      (tester) async {
    late ZacContext zacContext;
    await testWithinMaterialApp(
        tester,
        ZacCompleterProvider<void>(
          key: const ValueKey('a'),
          childBuilder: (c) {
            zacContext = c;
            return const SizedBox.shrink();
          },
          family: 'shared',
          completerBuilder: () => Completer<void>(),
          disposeComplete: (completer) => completer.complete(),
        ));

    final completer =
        DartCompleterVoid.consume(family: 'shared').build(zacContext);

    await tester.pumpWidget(const SizedBox());

    expect(completer.isCompleted, isTrue);
  });

  testWidgets('ZacCompleterProviderBuilder provide a void completer',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
        tester,
        ZacCompleterProviderBuilder.asVoid(
          child: ZacValue<Widget>.builder(builder: LeakContext(cb: (c) {
            zacContext = c;
          })),
          family: 'shared',
        ));

    expect(DartCompleterVoid.consume(family: 'shared').build(zacContext),
        isA<Completer<void>>());
  });

  test('ZacCompleterActions from json', () {
    expect(
        ConverterHelper.convertToType<ZacCompleterActions>({
          'converter': 'z:1:CompleterAction.completeVoid',
          'completer': {
            'converter': 'z:1:Completer<void>.consume',
            'family': 'shared',
          },
        }),
        ZacCompleterActions.completeVoid(
            completer: DartCompleterVoid.consume(family: 'shared')));
  });

  testWidgets('Complete a Completer<void> using ZacCompleterActions',
      (tester) async {
    late ZacContext zacContext;
    await testZacWidget(
        tester,
        ZacCompleterProviderBuilder.asVoid(
          child: ZacValue<Widget>.builder(builder: LeakContext(cb: (c) {
            zacContext = c;
          })),
          family: 'shared',
        ));

    final completer =
        DartCompleterVoid.consume(family: 'shared').build(zacContext);

    ZacCompleterActions.completeVoid(
            completer: DartCompleterVoid.consume(family: 'shared'))
        .execute(const ZacActionPayload(), zacContext);

    expect(completer.isCompleted, isTrue);
  });
}
