import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/zac.dart';

import '../helper.dart';

void main() {
  test('ZacCompleterVoidProvider is in converter', () {
    expectInRegistry(
        'z:1:Completer<void>.provide', ZacCompleterVoidProvider.fromJson);
  });

  testWidgets(
      'ZacCompleterVoidProvider will provide a Completer and complete the provider on dispose',
      (tester) async {
    await testWithContextWithChild(
      tester,
      (widget) => ZacCompleterVoidProvider(
        family: 'shared',
        child: widget,
      ),
      (getContext, getZacContext) async {
        final c = ConsumeSharedValue<Completer>(family: 'shared')
            .build(getContext(), getZacContext());
        expect(
            c,
            isA<Completer<void>>()
                .having((p0) => p0.isCompleted, 'isCompleted', isFalse));

        await tester.pumpWidget(const SizedBox());

        expect(
            c,
            isA<Completer<void>>()
                .having((p0) => p0.isCompleted, 'isCompleted', isTrue));
      },
    );
  });

  test('ZacCompleterActions from json', () {
    expectInRegistry(
        'z:1:Completer<void>.complete', ZacCompleterActions.fromJson);
  });

  testWidgets('Complete a Completer<void> using ZacCompleterActions',
      (tester) async {
    await testWithContextWithChild(
      tester,
      (widget) => ZacCompleterVoidProvider(
        family: 'shared',
        child: widget,
      ),
      (getContext, getZacContext) {
        final c = ConsumeSharedValue<Completer>(family: 'shared')
            .build(getContext(), getZacContext());

        ZacCompleterActions.completeVoid(
                completer: ConsumeSharedValue<Completer>(family: 'shared'))
            .execute(const ZacActionPayload(), getContext(), getZacContext());

        expect(c.isCompleted, isTrue);
      },
    );
  });
}
