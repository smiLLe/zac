import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/material/drawer.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterDrawer()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterDrawer.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'backgroundColor': ColorModel.json,
        'semanticLabel': 'test_semanticsLabel',
        'elevation': 33,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Drawer>()
            .having((p0) => p0.backgroundColor, 'Drawer.backgroundColor',
                ColorModel.equals)
            .having((p0) => p0.semanticLabel, 'Drawer.semanticLabel',
                'test_semanticsLabel')
            .having((p0) => p0.elevation, 'Drawer.elevation', 33));
  });
}
