import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/intrinsic_width.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterIntrinsicWidth()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterIntrinsicWidth.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });
}
