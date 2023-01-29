import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:zac/zac.dart';

import '../helper.dart';

void main() {
  test('Is in registry', () {
    expectInRegistry('f:1:Completer<void>', ZacCompleterVoid.fromJson);
  });

  // testWidgets(
  //     'ZacCompleterVoidProvider will provide a Completer and complete the provider on dispose',
  //     (tester) async {
  //   await testWithContextsWraped(
  //     tester,
  //     (widget) => ZacSharedStateProvider(
  //       states: {
  //         'shared': ZacSharedStateProvide.builder(ZacCompleterVoid()),
  //       },
  //       child: widget,
  //     ),
  //     (getContext, getZacContext) async {
  //       final c = SharedStateConsume<Completer>(family: 'shared')
  //           .build(getContext(), getZacContext());
  //       expect(
  //           c,
  //           isA<Completer<void>>()
  //               .having((p0) => p0.isCompleted, 'isCompleted', isFalse));

  //       await tester.pumpWidget(const SizedBox());

  //       expect(
  //           c,
  //           isA<Completer<void>>()
  //               .having((p0) => p0.isCompleted, 'isCompleted', isTrue));
  //     },
  //   );
  // });

  test('ZacCompleterActions from json', () {
    expectInRegistry(
        'f:1:Completer<void>.complete', ZacCompleterActions.fromJson);
  });

  testWidgets('Complete a Completer<void> using ZacCompleterActions',
      (tester) async {
    await testWithContextsWraped(
      tester,
      (widget) => ZacSharedStateProvider(
        states: {
          'shared': ZacSharedStateProvide.builder(ZacCompleterVoid()),
        },
        child: widget,
      ),
      (getContext, getZacContext) {
        final c = SharedStateConsume<Completer>(family: 'shared')
            .build(getContext(), getZacContext());

        ZacCompleterActions.completeVoid(
                completer: SharedStateConsume<Completer>(family: 'shared'))
            .build(getContext(), getZacContext())
            .execute(const ZacActionPayload(), getContext(), getZacContext());

        expect(c.isCompleted, isTrue);
      },
    );
  });
}
