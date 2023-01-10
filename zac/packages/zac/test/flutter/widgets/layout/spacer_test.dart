import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/spacer.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/column.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterSpacer()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterColumn.unionValue,
        'children': [
          {
            'builder': FlutterSpacer.unionValue,
            'key': KeysModel.getValueKey('FINDME'),
            'flex': 100,
          }
        ],
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(widget, isA<Spacer>().having((p0) => p0.flex, 'Spacer.flex', 100));
  });
}
