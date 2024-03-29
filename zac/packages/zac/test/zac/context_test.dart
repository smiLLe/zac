import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helper.dart';

void main() {
  group('UpdateContext', () {
    testWidgets('Unmount Callback', (tester) async {
      await testWithContextsWraped(
        tester,
        (child) => FlutterBuilder(child: child),
        (getContext, getZacContext) async {
          await testWithContextsWraped(
            tester,
            (child) => FlutterBuilder(child: child),
            (getContext2, getZacContext2) async {
              final cb1 = MockUnmountCb();
              final cb2 = MockUnmountCb();
              final cb3 = MockUnmountCb();
              final cb4 = MockUnmountCb();

              getZacContext().onUnmount(cb1);
              getZacContext().onUnmount(cb2);

              getZacContext2().onUnmount(cb3);
              getZacContext2().onUnmount(cb4);

              await tester.pumpWidget(const SizedBox());

              verifyInOrder([cb4(), cb3(), cb2(), cb1()]);
              verifyNoMoreInteractions(cb1);
              verifyNoMoreInteractions(cb2);
              verifyNoMoreInteractions(cb3);
              verifyNoMoreInteractions(cb4);
            },
          );
        },
      );
    });

    testWidgets('BuildContext.isMounted', (tester) async {
      await testWithContextsWraped(
        tester,
        (child) => child,
        (getContext, getZacContext) async {
          expect(getContext().isMounted, isTrue);
          await tester.pumpWidget(const SizedBox());
          expect(getContext().isMounted, isFalse);
        },
      );
    });

    testWidgets('BuildContext.widgetRef', (tester) async {
      await testWithContextsWraped(
        tester,
        (child) => child,
        (getContext, getZacContext) async {
          expect(() => getContext().widgetRef, returnsNormally);
        },
      );

      // ignore: no_leading_underscores_for_local_identifiers
      late BuildContext _context;
      await tester.pumpWidget(Builder(
        builder: (context) {
          _context = context;
          return const SizedBox();
        },
      ));

      expect(
          () => _context.widgetRef,
          throwsA(isA<StateError>().having((p0) => p0.message, 'error message',
              contains('It was not possible to call context.widgetRef'))));
    });
  });
}

class MockUnmountCb extends Mock {
  void call();
}
