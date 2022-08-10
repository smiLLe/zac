import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/layout/expanded.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/column.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterExpanded()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterColumn.unionValue,
        'children': [
          {
            converterKey: FlutterExpanded.unionValue,
            'key': KeysModel.getValueKey('FINDME'),
            'flex': 100,
            'child': ChildModel.getSizedBox(key: 'child'),
          }
        ]
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget, isA<Expanded>().having((p0) => p0.flex, 'Expanded.flex', 100));
  });
}
