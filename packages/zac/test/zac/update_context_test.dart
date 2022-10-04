import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  testWidgets('UpdateContextConverter()', (tester) async {
    await testMap(tester, <String, dynamic>{
      '_converter': 'z:1:UpdateContext',
      'key': KeysModel.getValueKey('FINDME'),
      'child': ChildModel.getSizedBox(key: 'child'),
    });

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });

  testWidgets('useZacWidgetContext', (tester) async {}, skip: true);

  group('ZacWidgetContext', () {
    testWidgets('can be updated in tree', (tester) async {
      late WidgetRef ref1;
      late WidgetRef ref2;
      await testZacWidget(
        tester,
        ZacUpdateContextBuilder(
          child: LeakContext(
            cb: (_, r, __) {
              ref1 = r;
            },
            child: LeakContext(
              cb: (_, r, __) {
                ref2 = r;
              },
            ),
          ),
        ),
      );

      expect(ref1, equals(ref2));

      await testZacWidget(
        tester,
        ZacUpdateContextBuilder(
          child: LeakContext(
            cb: (_, r, __) {
              ref1 = r;
            },
            child: ZacUpdateContextBuilder(
              child: LeakContext(
                cb: (_, r, __) {
                  ref2 = r;
                },
              ),
            ),
          ),
        ),
      );

      expect(ref1, isNot(equals(ref2)));
    });
    testWidgets('Unmount Callback', (tester) async {
      final cb1 = MockUnmountCb();
      final cb2 = MockUnmountCb();
      final cb3 = MockUnmountCb();
      final cb4 = MockUnmountCb();

      late ZacInteractionLifetime lifetime1;
      late ZacInteractionLifetime lifetime2;

      await testZacWidget(
        tester,
        ZacUpdateContextBuilder(
          child: LeakContext(
            cb: (_, __, h) {
              lifetime1 = h;
            },
            child: ZacUpdateContextBuilder(
              child: LeakContext(
                cb: (_, __, h) {
                  lifetime2 = h;
                },
                child: FlutterSizedBox(),
              ),
            ),
          ),
        ),
      );
      lifetime1.onUnmount(cb1);
      lifetime1.onUnmount(cb2);

      lifetime2.onUnmount(cb3);
      lifetime2.onUnmount(cb4);

      await testZacWidget(
        tester,
        FlutterSizedBox(),
      );

      verifyInOrder([cb4(), cb3(), cb2(), cb1()]);
      verifyNoMoreInteractions(cb1);
      verifyNoMoreInteractions(cb2);
      verifyNoMoreInteractions(cb3);
      verifyNoMoreInteractions(cb4);
    });
  });
}

class MockUnmountCb extends Mock {
  void call();
}
