import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  testWidgets('UpdateContextConverter()', (tester) async {
    await testMap(tester, <String, dynamic>{
      '_converter': 'z:1:UpdateWidget',
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
      late ZacOriginWidgetTree origin1;
      late ZacOriginWidgetTree origin2;
      await testZacWidget(
        tester,
        ZacUpdateWidgetBuilder(
          child: LeakOrigin(
            cb: (o) {
              origin1 = o;
            },
            child: LeakOrigin(
              cb: (o) {
                origin2 = o;
              },
            ),
          ),
        ),
      );

      expect(origin1, equals(origin2));

      await testZacWidget(
        tester,
        ZacUpdateWidgetBuilder(
          child: LeakOrigin(
            cb: (o) {
              origin1 = o;
            },
            child: ZacUpdateWidgetBuilder(
              child: LeakOrigin(
                cb: (o) {
                  origin2 = o;
                },
              ),
            ),
          ),
        ),
      );

      expect(origin1, isNot(equals(origin2)));
    });
    testWidgets('Unmount Callback', (tester) async {
      final cb1 = MockUnmountCb();
      final cb2 = MockUnmountCb();
      final cb3 = MockUnmountCb();
      final cb4 = MockUnmountCb();

      late ZacOriginWidgetTree origin1;
      late ZacOriginWidgetTree origin2;

      await testZacWidget(
        tester,
        ZacUpdateWidgetBuilder(
          child: LeakOrigin(
            cb: (o) {
              origin1 = o;
            },
            child: ZacUpdateWidgetBuilder(
              child: LeakOrigin(
                cb: (o) {
                  origin2 = o;
                },
                child: FlutterSizedBox(),
              ),
            ),
          ),
        ),
      );
      origin1.lifetime.onUnmount(cb1);
      origin1.lifetime.onUnmount(cb2);

      origin2.lifetime.onUnmount(cb3);
      origin2.lifetime.onUnmount(cb4);

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
