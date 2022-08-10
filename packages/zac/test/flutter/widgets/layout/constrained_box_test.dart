import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/layout/constrained_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterConstrainedBox()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterConstrainedBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
        'constraints': {
          converterKey: 'f:1:BoxConstraints.expand',
          'width': 20,
          'height': 21,
        }
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<ConstrainedBox>().having(
            (p0) => p0.constraints,
            'ConstrainedBox.constraints',
            const BoxConstraints.expand(width: 20, height: 21)));
  });
}
