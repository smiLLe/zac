import 'package:zac/src/flutter/all.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../../helper.dart';
import '../../helper.mocks.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterGestureDetector interactions', (tester) async {
    final onTapCb = MockTestActionExecute();
    final onLongPressCb = MockTestActionExecute();
    final onSecondaryLongPressCb = MockTestActionExecute();
    final onTertiaryLongPressCb = MockTestActionExecute();

    await testZacWidget(
      tester,
      FlutterGestureDetector(
        key: FlutterValueKey('FIND_ME'),
        behavior: FlutterHitTestBehavior.opaque(),
        child: FlutterSizedBox(),
        onTap: ZacValueList<ZacAction, List<ZacAction>>([TestAction(onTapCb)]),
        onLongPress: ZacValueList<ZacAction, List<ZacAction>>(
            [TestAction(onLongPressCb)]),
        onSecondaryLongPress: ZacValueList<ZacAction, List<ZacAction>>(
            [TestAction(onSecondaryLongPressCb)]),
        onTertiaryLongPress: ZacValueList<ZacAction, List<ZacAction>>(
            [TestAction(onTertiaryLongPressCb)]),
      ),
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);

    await tester.tap(findMe);
    await tester.longPress(findMe);
    await tester.pumpAndSettle();

    final widget = findMe.evaluate().first.widget as GestureDetector;

    /// @TODO: Find better way to test calls
    widget.onSecondaryLongPress?.call();
    widget.onTertiaryLongPress?.call();

    verifyInOrder([
      onTapCb(argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)),
      onLongPressCb(
          argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)),
      onSecondaryLongPressCb(
          argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)),
      onTertiaryLongPressCb(
          argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)),
    ]);

    verifyNoMoreInteractions(onTapCb);
    verifyNoMoreInteractions(onLongPressCb);
    verifyNoMoreInteractions(onSecondaryLongPressCb);
    verifyNoMoreInteractions(onTertiaryLongPressCb);
  });

  testWidgets('doubleTap', (tester) async {
    final doubleTapCb = MockTestActionExecute();
    await testZacWidget(
      tester,
      FlutterGestureDetector(
        key: FlutterValueKey('FIND_ME'),
        behavior: FlutterHitTestBehavior.opaque(),
        child: FlutterSizedBox(),
        onDoubleTap:
            ZacValueList<ZacAction, List<ZacAction>>([TestAction(doubleTapCb)]),
      ),
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('FIND_ME')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('FIND_ME')));
    await tester.pumpAndSettle();

    verify(doubleTapCb(
            argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)))
        .called(1);
  });

  testWidgets('properties', (tester) async {
    await testMap(tester, <String, dynamic>{
      'builder': FlutterGestureDetector.unionValue,
      'key': KeysModel.getValueKey('FIND_ME'),
      'child': ChildModel.getSizedBox(key: 'test_child'),
      'behavior': {
        'builder': 'f:1:HitTestBehavior.deferToChild',
      },
    });

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('test_child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<GestureDetector>().having((p0) => p0.behavior,
            'GestureDetector.behavior', HitTestBehavior.deferToChild));
  });
}
