import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/center.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterCenter()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterCenter.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'widthFactor': 10,
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
        isA<Center>()
            .having((p0) => p0.widthFactor, 'Center.widthFactor', 10)
            .having((p0) => p0.heightFactor, 'Center.heightFactor', 20)
            .having((p0) => p0.child, 'Center.child', isA<SizedBox>()));
  });
}
