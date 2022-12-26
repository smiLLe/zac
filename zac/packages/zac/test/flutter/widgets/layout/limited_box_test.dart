import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/limited_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterLimitedBox()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'builder': FlutterLimitedBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'maxHeight': 40,
        'maxWidth': 50,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<LimitedBox>()
            .having((p0) => p0.maxHeight, 'LimitedBox.maxHeight', 40)
            .having((p0) => p0.maxWidth, 'LimitedBox.maxWidth', 50));
  });
}
