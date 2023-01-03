import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/row.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterRow()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'builder': FlutterRow.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'mainAxisAlignment': {'builder': 'f:1:MainAxisAlignment.end'},
        'mainAxisSize': {'builder': 'f:1:MainAxisSize.min'},
        'crossAxisAlignment': {'builder': 'f:1:CrossAxisAlignment.end'},
        'textDirection': {'builder': 'f:1:TextDirection.ltr'},
        'verticalDirection': {'builder': 'f:1:VerticalDirection.up'},
        'textBaseline': {'builder': 'f:1:TextBaseline.ideographic'},
        'children': [
          ChildModel.getSizedBox(key: 'child1'),
          ChildModel.getSizedBox(key: 'child2')
        ],
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child1')), findsOneWidget);
    expect(find.byKey(const ValueKey('child2')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Row>()
            .having((p0) => p0.mainAxisAlignment, 'Column.mainAxisAlignment',
                MainAxisAlignment.end)
            .having((p0) => p0.mainAxisSize, 'Column.mainAxisSize',
                MainAxisSize.min)
            .having((p0) => p0.crossAxisAlignment, 'Column.crossAxisAlignment',
                CrossAxisAlignment.end)
            .having((p0) => p0.textDirection, 'Column.textDirection',
                TextDirection.ltr)
            .having((p0) => p0.verticalDirection, 'Column.verticalDirection',
                VerticalDirection.up)
            .having((p0) => p0.textBaseline, 'Column.textBaseline',
                TextBaseline.ideographic));
  });
}
