import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/safe_area.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterSafeArea()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterSafeArea.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'left': false,
        'top': false,
        'right': false,
        'bottom': false,
        'minimum': {
          'converter': 'f:1:EdgeInsets.all',
          'value': 5,
        },
        'maintainBottomViewPadding': true,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SafeArea>()
            .having((p0) => p0.left, 'SafeArea.left', isFalse)
            .having((p0) => p0.top, 'SafeArea.top', isFalse)
            .having((p0) => p0.right, 'SafeArea.right', isFalse)
            .having((p0) => p0.bottom, 'SafeArea.bottom', isFalse)
            .having(
                (p0) => p0.minimum, 'SafeArea.minimum', const EdgeInsets.all(5))
            .having((p0) => p0.maintainBottomViewPadding,
                'SafeArea.maintainBottomViewPadding', isTrue));
  });
}
