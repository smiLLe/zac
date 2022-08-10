import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/material/card.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterCard()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter': FlutterCard.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'color': ColorModel.json,
        'shadowColor': ColorModel.json,
        'elevation': 33,
        'shape': BorderModel.borderAll,
        'borderOnForeground': false,
        'margin': EdgeInsetsModel.geometry_edgeInsetsAll,
        'clipBehavior': ClipBehaviorModel.json,
        'semanticContainer': false,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Card>()
            .having((p0) => p0.color, 'Card.color', ColorModel.equals)
            .having(
                (p0) => p0.shadowColor, 'Card.shadowColor', ColorModel.equals)
            .having((p0) => p0.elevation, 'Card.elevation', 33)
            .having((p0) => p0.shape, 'Card.shape',
                BorderModel.equals_shape_box_borderAll)
            .having((p0) => p0.borderOnForeground, 'Card.borderOnForeground',
                isFalse)
            .having((p0) => p0.margin, 'Card.margin', EdgeInsetsModel.equalsAll)
            .having((p0) => p0.clipBehavior, 'Card.clipBehavior',
                ClipBehaviorModel.equals)
            .having((p0) => p0.semanticContainer, 'Card.semanticContainer',
                isFalse));
  });
}
