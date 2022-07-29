import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/_layout_multi_child/wrap/wrap.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterWrap()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterWrap.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'axis': AxisModel.horizontal,
        'alignment': {converterKey: 'f:1:WrapAlignment.spaceAround'},
        'spacing': 21,
        'runSpacing': 22,
        'runAlignment': {converterKey: 'f:1:WrapAlignment.spaceEvenly'},
        'crossAxisAlignment': {converterKey: 'f:1:WrapCrossAlignment.end'},
        'textDirection': TextModel.textDirection,
        'verticalDirection': {
          converterKey: 'f:1:VerticalDirection.up',
        },
        'clipBehavior': {
          converterKey: 'f:1:Clip.none',
        },
        'children': [
          ChildModel.getSizedBox(key: 'child1'),
          ChildModel.getSizedBox(key: 'child2')
        ],
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child1')), findsOneWidget);
    expect(find.byKey(const ValueKey('child2')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Wrap>()
            .having((p0) => p0.direction, 'Wrap.direction',
                AxisModel.equalsHorizontal)
            .having((p0) => p0.alignment, 'Wrap.alignment',
                WrapAlignment.spaceAround)
            .having((p0) => p0.spacing, 'Wrap.spacing', 21)
            .having((p0) => p0.runSpacing, 'Wrap.runSpacing', 22)
            .having((p0) => p0.runAlignment, 'Wrap.runAlignment',
                WrapAlignment.spaceEvenly)
            .having((p0) => p0.crossAxisAlignment, 'Wrap.crossAxisAlignment',
                WrapCrossAlignment.end)
            .having((p0) => p0.textDirection, 'Wrap.textDirection',
                TextModel.equalsTextDirection)
            .having((p0) => p0.verticalDirection, 'Wrap.verticalDirection',
                VerticalDirection.up)
            .having((p0) => p0.clipBehavior, 'Wrap.clipBehavior', Clip.none));
  });
}
