import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/_layout/fractionally_sized_box/fractionally_sized_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterFractionallySizedBox()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterFractionallySizedBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'widthFactor': 100,
        'heightFactor': 200,
        'alignment': {
          converterKey: 'f:1:Alignment.bottomRight',
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
        isA<FractionallySizedBox>()
            .having(
                (p0) => p0.widthFactor, 'FractionallySizedBox.widthFactor', 100)
            .having((p0) => p0.heightFactor,
                'FractionallySizedBox.heightFactor', 200)
            .having((p0) => p0.alignment, 'FractionallySizedBox.alignment',
                Alignment.bottomRight));
  });
}
