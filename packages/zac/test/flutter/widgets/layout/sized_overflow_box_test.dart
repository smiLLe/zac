import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/sized_overflow_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterSizedOverflowBox()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter': FlutterSizedOverflowBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'alignment': AlignmentModel.geometry_alignment,
        'size': {
          'runtimeTyp': 'f:1:Size',
          'width': 20,
          'height': 21,
        },
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SizedOverflowBox>()
            .having((p0) => p0.alignment, 'SizedOverflowBox.alignment',
                AlignmentModel.equals)
            .having(
                (p0) => p0.size, 'SizedOverflowBox.size', const Size(20, 21)));
  });
}
