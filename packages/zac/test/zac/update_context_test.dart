import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:mockito/mockito.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  testWidgets('UpdateContextConverter()', (tester) async {
    await testMap(tester, <String, dynamic>{
      converterKey: 'z:1:UpdateContext',
      'key': KeysModel.getValueKey('FINDME'),
      'child': ChildModel.getSizedBox(key: 'child'),
    });

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });

  testWidgets('useAnyWidgetContext', (tester) async {}, skip: true);

  group('AnyWidgetContext', () {
    testWidgets('can be updated in tree', (tester) async {
      late ZacBuildContext c1;
      late ZacBuildContext c2;
      await testAnyWidget(
        tester,
        UpdateContextBuilderBuilder(
          child: LeakContext(
            cb: (c) {
              c1 = c;
            },
            child: LeakContext(
              cb: (c) {
                c2 = c;
              },
            ),
          ),
        ),
      );

      expect(c1, equals(c2));

      await testAnyWidget(
        tester,
        UpdateContextBuilderBuilder(
          child: LeakContext(
            cb: (c) {
              c1 = c;
            },
            child: UpdateContextBuilderBuilder(
              child: LeakContext(
                cb: (c) {
                  c2 = c;
                },
              ),
            ),
          ),
        ),
      );

      expect(c1, isNot(equals(c2)));
    });
    testWidgets('Unmount Callback', (tester) async {
      final cb1 = MockUnmountCb();
      final cb2 = MockUnmountCb();
      final cb3 = MockUnmountCb();
      final cb4 = MockUnmountCb();

      late ZacBuildContext ctx1;
      late ZacBuildContext ctx2;

      await testAnyWidget(
        tester,
        UpdateContextBuilderBuilder(
          child: LeakContext(
            cb: (c) {
              ctx1 = c;
            },
            child: UpdateContextBuilderBuilder(
              child: LeakContext(
                cb: (c) {
                  ctx2 = c;
                },
                child: FlutterSizedBox(),
              ),
            ),
          ),
        ),
      );
      ctx1.onUnmount(cb1);
      ctx1.onUnmount(cb2);

      ctx2.onUnmount(cb3);
      ctx2.onUnmount(cb4);

      await testAnyWidget(
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
