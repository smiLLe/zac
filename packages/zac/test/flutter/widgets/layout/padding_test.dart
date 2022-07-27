import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/layout/padding/padding.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterPadding()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterPadding.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'padding': EdgeInsetsModel.geometry_edgeInsetsAll,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Padding>().having((p0) => p0.padding, 'Padding.alignment',
            EdgeInsetsModel.equalsAll));
  });
}
