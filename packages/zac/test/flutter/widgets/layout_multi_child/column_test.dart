import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/_layout_multi_child/column/column.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterColumn()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterColumn.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'mainAxisAlignment': {converterKey: 'f:1:MainAxisAlignment.end'},
        'mainAxisSize': {converterKey: 'f:1:MainAxisSize.min'},
        'crossAxisAlignment': {converterKey: 'f:1:CrossAxisAlignment.end'},
        'textDirection': {converterKey: 'f:1:TextDirection.ltr'},
        'verticalDirection': {converterKey: 'f:1:VerticalDirection.up'},
        'textBaseline': {converterKey: 'f:1:TextBaseline.ideographic'},
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
        isA<Column>()
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
