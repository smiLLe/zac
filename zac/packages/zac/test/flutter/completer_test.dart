import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';

import '../helper.dart';

void main() {
  test('ZacCompleterVoidProvider is in converter', () {
    expectInConverter(
        'z:1:Completer<void>.provide', ZacCompleterVoidProvider.fromJson);
  });

  testWidgets(
      'ZacCompleterVoidProvider will provide a Completer and complete the provider on dispose',
      (tester) async {
    late Object? c;
    await tester.pumpWidget(
      ProviderScope(
        child: ZacWidget(
          data: ZacCompleterVoidProvider(
            family: 'shared',
            child: ZacValue<Widget>.builder(
              LeakContext(
                cb: (zacContext) {
                  c = ZacValue<Completer>.consume(family: 'shared')
                      .build(zacContext);
                },
              ),
            ),
          ),
        ),
      ),
    );
    expect(
        c,
        isA<Completer<void>>()
            .having((p0) => p0.isCompleted, 'isCompleted', isFalse));

    await tester.pumpWidget(const SizedBox());

    expect(
        c,
        isA<Completer<void>>()
            .having((p0) => p0.isCompleted, 'isCompleted', isTrue));
  });

  test('ZacCompleterActions from json', () {
    expectInConverter(
        'z:1:Completer<void>.complete', ZacCompleterActions.fromJson);
  });

  testWidgets('Complete a Completer<void> using ZacCompleterActions',
      (tester) async {
    late ZacContext zacContext;
    await tester.pumpWidget(
      ProviderScope(
        child: ZacWidget(
          data: ZacCompleterVoidProvider(
            family: 'shared',
            child: ZacValue<Widget>.builder(
              LeakContext(
                cb: (z) {
                  zacContext = z;
                },
              ),
            ),
          ),
        ),
      ),
    );

    final completer =
        ZacValue<Completer>.consume(family: 'shared').build(zacContext);

    ZacCompleterActions.completeVoid(
            completer: ZacValue<Completer>.consume(family: 'shared'))
        .execute(const ZacActionPayload(), zacContext);

    expect(completer.isCompleted, isTrue);
  });
}
