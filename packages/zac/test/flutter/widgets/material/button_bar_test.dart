import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/material/button_bar/button_bar.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterButtonBar()', (tester) async {
    await testMap(tester, <String, dynamic>{
      converterKey: FlutterButtonBar.unionValue,
      'key': KeysModel.getValueKey('test_key'),
      'children': [
        {
          converterKey: 'f:1:SizedBox',
          'key': KeysModel.getValueKey('FIND_ME'),
        },
        {
          converterKey: 'f:1:SizedBox',
          'key': KeysModel.getValueKey('FIND_ME_TOO'),
        }
      ],
    });

    expect(find.byKey(const ValueKey('test_key')), findsOneWidget);
    expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    expect(find.byKey(const ValueKey('FIND_ME_TOO')), findsOneWidget);

    final widget =
        find.byKey(const ValueKey('test_key')).evaluate().first.widget;

    expect(widget, isA<ButtonBar>());
  });
}
