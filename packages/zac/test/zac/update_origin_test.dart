import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  group('UpdateOrigin', () {
    testWidgets('convert', (tester) async {
      await testMap(tester, <String, dynamic>{
        '_converter': 'z:1:UpdateOrigin',
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
      });

      final findMe = find.byKey(const ValueKey('FINDME'));
      expect(findMe, findsOneWidget);
      expect(find.byKey(const ValueKey('child')), findsOneWidget);
    });

    testWidgets('can be updated in tree', (tester) async {
      late ZacContext zacContext1;
      late ZacContext zacContext2;
      await testZacWidget(
        tester,
        ZacUpdateOriginBuilder(
          child: LeakOrigin(
            cb: (o) {
              zacContext1 = o;
            },
            child: LeakOrigin(
              cb: (o) {
                zacContext2 = o;
              },
            ),
          ),
        ),
      );

      expect(zacContext1, equals(zacContext2));

      await testZacWidget(
        tester,
        ZacUpdateOriginBuilder(
          child: LeakOrigin(
            cb: (o) {
              zacContext1 = o;
            },
            child: ZacUpdateOriginBuilder(
              child: LeakOrigin(
                cb: (o) {
                  zacContext2 = o;
                },
              ),
            ),
          ),
        ),
      );

      expect(zacContext1, isNot(equals(zacContext2)));
    });
    testWidgets('Unmount Callback', (tester) async {
      final cb1 = MockUnmountCb();
      final cb2 = MockUnmountCb();
      final cb3 = MockUnmountCb();
      final cb4 = MockUnmountCb();

      late ZacContext zacContext1;
      late ZacContext zacContext2;

      await testZacWidget(
        tester,
        ZacUpdateOriginBuilder(
          child: LeakOrigin(
            cb: (o) {
              zacContext1 = o;
            },
            child: ZacUpdateOriginBuilder(
              child: LeakOrigin(
                cb: (o) {
                  zacContext2 = o;
                },
                child: FlutterSizedBox(),
              ),
            ),
          ),
        ),
      );
      zacContext1.onUnmount(cb1);
      zacContext1.onUnmount(cb2);

      zacContext2.onUnmount(cb3);
      zacContext2.onUnmount(cb4);

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
