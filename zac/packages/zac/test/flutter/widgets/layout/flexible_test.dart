import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/flexible.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/column.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterFlexible()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'builder': FlutterColumn.unionValue,
        'children': [
          {
            'builder': FlutterFlexible.unionValue,
            'child': ChildModel.getSizedBox(key: 'child'),
            'key': KeysModel.getValueKey('FINDME'),
            'flex': 100,
            'fit': {'builder': 'f:1:FlexFit.tight'}
          }
        ]
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Flexible>()
            .having((p0) => p0.flex, 'Flexible.flex', 100)
            .having((p0) => p0.fit, 'Flexible.fit', FlexFit.tight));
  });
}
