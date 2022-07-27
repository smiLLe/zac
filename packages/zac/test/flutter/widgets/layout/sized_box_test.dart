import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box/sized_box.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('SizedBox()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterSizedBox.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'width': 10,
        'height': 20,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SizedBox>()
            .having((p0) => p0.width, 'sizedbox.width', 10)
            .having((p0) => p0.height, 'sizedbox.height', 20));
  });

  testWidgets('SizedBox.expand()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterSizedBox.unionValueExpand,
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SizedBox>()
            .having((p0) => p0.width, 'sizedbox.width', double.infinity)
            .having((p0) => p0.height, 'sizedbox.height', double.infinity));
  });

  testWidgets('SizedBox.shrink()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterSizedBox.unionValueShrink,
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SizedBox>()
            .having((p0) => p0.width, 'sizedbox.width', 0.0)
            .having((p0) => p0.height, 'sizedbox.height', 0.0));
  });

  testWidgets('SizedBox.fromSize()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterSizedBox.unionValueFromSize,
        'key': KeysModel.getValueKey('FINDME'),
        'size': {
          converterKey: 'f:1:Size',
          'width': 10,
          'height': 20,
        },
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SizedBox>()
            .having((p0) => p0.width, 'sizedbox.width', 10)
            .having((p0) => p0.height, 'sizedbox.height', 20));
  });

  testWidgets('SizedBox.square()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterSizedBox.unionValueSquare,
        'key': KeysModel.getValueKey('FINDME'),
        'dimension': 22,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SizedBox>()
            .having((p0) => p0.width, 'sizedbox.width', 22)
            .having((p0) => p0.height, 'sizedbox.height', 22));
  });
}
