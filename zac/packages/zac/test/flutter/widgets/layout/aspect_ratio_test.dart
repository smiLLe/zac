import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/aspect_ratio.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterAspectRatio()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'builder': FlutterAspectRatio.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'aspectRatio': 10,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<AspectRatio>()
            .having((p0) => p0.aspectRatio, 'AspectRatio.aspectRatio', 10));
  });
}
