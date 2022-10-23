import 'package:zac/src/flutter/widgets/layout/align.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterAlign()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterAlign.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'alignment': AlignmentModel.geometry_alignment,
        'widthFactor': 10.0,
        'heightFactor': 20,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Align>()
            .having(
                (p0) => p0.alignment, 'Align.alignment', AlignmentModel.equals)
            .having((p0) => p0.widthFactor, 'Align.widthFactor', 10)
            .having((p0) => p0.heightFactor, 'Align.heightFactor', 20));
  });
}
