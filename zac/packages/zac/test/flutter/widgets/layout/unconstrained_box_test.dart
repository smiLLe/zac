import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/unconstrained_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterUnconstrainedBox()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterUnconstrainedBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
        'alignment': {
          'builder': 'f:1:Alignment.bottomRight',
        },
        'textDirection': TextModel.textDirection,
        'constrainedAxis': AxisModel.horizontal,
        'clipBehavior': ClipBehaviorModel.json,
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<UnconstrainedBox>()
            .having((p0) => p0.alignment, 'UnconstrainedBox.alignment',
                Alignment.bottomRight)
            .having((p0) => p0.textDirection, 'UnconstrainedBox.textDirection',
                TextModel.equalsTextDirection)
            .having((p0) => p0.constrainedAxis,
                'UnconstrainedBox.constrainedAxis', AxisModel.equalsHorizontal)
            .having((p0) => p0.clipBehavior, 'UnconstrainedBox.clipBehavior',
                ClipBehaviorModel.equals));
  });
}
