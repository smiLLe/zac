import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/stack.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterStack()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter': FlutterStack.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'fit': {
          '_converter': 'f:1:StackFit.expand',
        },
        'alignment': AlignmentModel.geometry_alignment,
        'clipBehavior': {'_converter': 'f:1:Clip.hardEdge'},
        'textDirection': TextModel.textDirection,
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
        isA<Stack>()
            .having((p0) => p0.fit, 'Stack.fit', StackFit.expand)
            .having(
                (p0) => p0.alignment, 'Stack.alignment', AlignmentModel.equals)
            .having(
                (p0) => p0.clipBehavior, 'Stack.clipBehavior', Clip.hardEdge)
            .having((p0) => p0.textDirection, 'Stack.textDirection',
                TextModel.equalsTextDirection));
  });
}
