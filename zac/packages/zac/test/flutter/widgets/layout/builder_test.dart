import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterBuilder()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'builder': 'f:1:Builder',
        'key': KeysModel.getValueKey('builder'),
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );

    expect(find.byKey(const ValueKey('builder')), findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });
}
