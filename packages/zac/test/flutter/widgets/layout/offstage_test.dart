import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/layout/offstage/offstage.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterOffstage()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterOffstage.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'offstage': false,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });
}
