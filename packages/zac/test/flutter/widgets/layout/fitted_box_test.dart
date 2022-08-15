import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/fitted_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterFittedBox()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter': FlutterFittedBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'fit': {
          '_converter': 'f:1:BoxFit.fitWidth',
        },
        'alignment': AlignmentModel.geometry_alignment,
        'clipBehavior': {'_converter': 'f:1:Clip.hardEdge'},
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<FittedBox>()
            .having((p0) => p0.fit, 'FittedBox.fit', BoxFit.fitWidth)
            .having((p0) => p0.alignment, 'FittedBox.alignment',
                AlignmentModel.equals)
            .having((p0) => p0.clipBehavior, 'FittedBox.clipBehavior',
                Clip.hardEdge));
  });
}
