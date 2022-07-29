import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/_layout/spacer/spacer.dart';
import 'package:zac/src/flutter/widgets/_layout_multi_child/column/column.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterSpacer()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterColumn.unionValue,
        'children': [
          {
            converterKey: FlutterSpacer.unionValue,
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
