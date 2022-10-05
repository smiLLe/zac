import 'package:zac/src/flutter/all.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper.dart';
import '../../helper.mocks.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterGestureDetector interactions', (tester) async {
    final onTapCb = MockLeakedActionCb();
    final onLongPressCb = MockLeakedActionCb();
    final onSecondaryLongPressCb = MockLeakedActionCb();
    final onTertiaryLongPressCb = MockLeakedActionCb();

    await testZacWidget(
      tester,
      FlutterGestureDetector(
        key: FlutterValueKey('FIND_ME'),
        behavior: FlutterHitTestBehavior.opaque(),
        child: FlutterSizedBox(),
        onTap: LeakAction.createActions(onTapCb),
        onLongPress: LeakAction.createActions(onLongPressCb),
        onSecondaryLongPress: LeakAction.createActions(onSecondaryLongPressCb),
        onTertiaryLongPress: LeakAction.createActions(onTertiaryLongPressCb),
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
      onTapCb(argThat(isAOriginWidgetTree), any),
      onLongPressCb(argThat(isAOriginWidgetTree), any),
      onSecondaryLongPressCb(argThat(isAOriginWidgetTree), any),
      onTertiaryLongPressCb(argThat(isAOriginWidgetTree), any),
    ]);

    verifyNoMoreInteractions(onTapCb);
    verifyNoMoreInteractions(onLongPressCb);
    verifyNoMoreInteractions(onSecondaryLongPressCb);
    verifyNoMoreInteractions(onTertiaryLongPressCb);
  });

  testWidgets('doubleTap', (tester) async {
    final doubleTapCb = MockLeakedActionCb();
    await testZacWidget(
      tester,
      FlutterGestureDetector(
        key: FlutterValueKey('FIND_ME'),
        behavior: FlutterHitTestBehavior.opaque(),
        child: FlutterSizedBox(),
        onDoubleTap: LeakAction.createActions(doubleTapCb),
      ),
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('FIND_ME')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('FIND_ME')));
    await tester.pumpAndSettle();

    verify(doubleTapCb(argThat(isAOriginWidgetTree), any)).called(1);
  });

  testWidgets('properties', (tester) async {
    await testMap(tester, <String, dynamic>{
      '_converter': FlutterGestureDetector.unionValue,
      'key': KeysModel.getValueKey('FIND_ME'),
      'child': ChildModel.getSizedBox(key: 'test_child'),
      'behavior': {
        '_converter': 'f:1:HitTestBehavior.deferToChild',
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
