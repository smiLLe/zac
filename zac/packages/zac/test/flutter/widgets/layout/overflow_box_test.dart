import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/overflow_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterOverflowBox()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterOverflowBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'alignment': AlignmentModel.geometry_alignment,
        'minWidth': 30,
        'maxWidth': 60,
        'minHeight': 40,
        'maxHeight': 70,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<OverflowBox>()
            .having((p0) => p0.alignment, 'OverflowBox.alignment',
                AlignmentModel.equals)
            .having((p0) => p0.minWidth, 'OverflowBox.minWidth', 30)
            .having((p0) => p0.maxWidth, 'OverflowBox.maxWidth', 60)
            .having((p0) => p0.minHeight, 'OverflowBox.minHeight', 40)
            .having((p0) => p0.maxHeight, 'OverflowBox.maxHeight', 70));
  });
}
