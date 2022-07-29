import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/_layout/intrinsic_height/intrinsic_height.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterIntrinsicHeight()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterIntrinsicHeight.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });
}
