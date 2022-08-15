import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/indexed_stack.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterIndexedStack()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter': FlutterIndexedStack.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'alignment': AlignmentModel.geometry_alignment,
        'textDirection': TextModel.textDirection,
        'sizing': {'_converter': 'f:1:StackFit.passthrough'},
        'index': 1,
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
        isA<IndexedStack>()
            .having(
                (p0) => p0.children.length, 'IndexedStack.children.length', 2)
            .having((p0) => p0.alignment, 'IndexedStack.alignment',
                AlignmentModel.equals)
            .having((p0) => p0.textDirection, 'IndexedStack.textDirection',
                TextModel.equalsTextDirection)
            .having((p0) => p0.fit, 'IndexedStack.sizing', StackFit.passthrough)
            .having((p0) => p0.index, 'IndexedStack.index', 1));
  });
}
