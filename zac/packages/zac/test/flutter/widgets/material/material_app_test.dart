import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterMaterialApp()', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'f:1:MaterialApp',
      'key': KeysModel.getValueKey('FIND_ME'),
      'home': {
        'builder': 'f:1:SizedBox',
        'key': KeysModel.getValueKey('HOME'),
      },
    });

    expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    expect(find.byKey(const ValueKey('HOME')), findsOneWidget);

    final widget =
        find.byKey(const ValueKey('FIND_ME')).evaluate().first.widget;

    expect(
        widget,
        isA<MaterialApp>()
            .having((p0) => p0.home, 'MaterialApp.home', isA<SizedBox>()));
  });
}
