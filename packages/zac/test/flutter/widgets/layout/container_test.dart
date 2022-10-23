import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/container.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterContainer() #1', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterContainer.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'margin': EdgeInsetsModel.geometry_edgeInsetsAll,
        'padding': EdgeInsetsModel.geometry_edgeInsetsAll,
        'alignment': AlignmentModel.geometry_alignment,
        'decoration': BoxDecorationModel.getMap(),
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Container>()
            .having((p0) => p0.margin, 'container.margin',
                equals(EdgeInsetsModel.equalsAll))
            .having((p0) => p0.margin, 'container.padding',
                equals(EdgeInsetsModel.equalsAll))
            .having((p0) => p0.alignment, 'container.alignment',
                equals(AlignmentModel.equals))
            .having((p0) => p0.decoration, 'container.decoration',
                equals(BoxDecorationModel.equals)));
  });

  testWidgets('FlutterContainer() #2', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterContainer.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'color': ColorModel.json,
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Container>().having(
            (p0) => p0.color, 'container.color', equals(ColorModel.equals)));
  });
}
