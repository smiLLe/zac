import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/material/divider.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterDivider()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterDivider.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'height': 20,
        'thickness': 2,
        'indent': 3,
        'endIndent': 4,
        'color': ColorModel.json,
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Divider>()
            .having((p0) => p0.height, 'Divider.height', 20)
            .having((p0) => p0.thickness, 'Divider.thickness', 2)
            .having((p0) => p0.indent, 'Divider.indent', 3)
            .having((p0) => p0.endIndent, 'Divider.endIndent', 4)
            .having((p0) => p0.color, 'Divider.color', ColorModel.equals));
  });
}
