import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/positioned.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/stack.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterPositioned() #1', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterStack.unionValue,
        'children': [
          {
            'converter': FlutterPositioned.unionValue,
            'key': KeysModel.getValueKey('FINDME'),
            'left': 1,
            'top': 2,
            'right': 3,
            'bottom': 4,
            'child': ChildModel.getSizedBox(key: 'child'),
          }
        ],
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Positioned>()
            .having((p0) => p0.left, 'Positioned.left', 1)
            .having((p0) => p0.top, 'Positioned.top', 2)
            .having((p0) => p0.right, 'Positioned.right', 3)
            .having((p0) => p0.bottom, 'Positioned.bottom', 4));
  });

  testWidgets('FlutterPositioned() #2', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterStack.unionValue,
        'children': [
          {
            'converter': FlutterPositioned.unionValue,
            'key': KeysModel.getValueKey('FINDME'),
            'left': 1,
            'top': 2,
            'width': 5,
            'height': 6,
            'child': ChildModel.getSizedBox(key: 'child'),
          }
        ],
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Positioned>()
            .having((p0) => p0.left, 'Positioned.left', 1)
            .having((p0) => p0.top, 'Positioned.top', 2)
            .having((p0) => p0.width, 'Positioned.width', 5)
            .having((p0) => p0.height, 'Positioned.height', 6));
  });

  testWidgets('FlutterPositioned.directional() #1', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterStack.unionValue,
        'children': [
          {
            'converter': FlutterPositioned.unionValueDirectional,
            'key': KeysModel.getValueKey('FINDME'),
            'textDirection': TextModel.textDirection,
            'start': 1,
            'end': 2,
            'child': ChildModel.getSizedBox(key: 'child'),
          }
        ],
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Positioned>()
            .having((p0) => p0.left, 'Positioned.left', 1)
            .having((p0) => p0.right, 'Positioned.right', 2));
  });

  testWidgets('FlutterPositioned.fill() #1', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterStack.unionValue,
        'children': [
          {
            'converter': FlutterPositioned.unionValueFill,
            'key': KeysModel.getValueKey('FINDME'),
            'left': 1,
            'top': 2,
            'right': 3,
            'bottom': 4,
            'child': ChildModel.getSizedBox(key: 'child'),
          }
        ],
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Positioned>()
            .having((p0) => p0.left, 'Positioned.left', 1)
            .having((p0) => p0.top, 'Positioned.top', 2)
            .having((p0) => p0.right, 'Positioned.right', 3)
            .having((p0) => p0.bottom, 'Positioned.bottom', 4));
  });
}
