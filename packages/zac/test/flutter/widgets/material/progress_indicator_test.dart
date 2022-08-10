import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/material/progress_indicator.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('ProgressIndicator.circular()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter':
            FlutterProgressIndicator.unionValueCircularProgressIndicator,
        'key': KeysModel.getValueKey('FINDME'),
        'value': 9,
        'backgroundColor': ColorModel.json,
        'color': ColorModel.json,
        'strokeWidth': 8,
        'semanticsLabel': 'test_semanticsLabel',
        'semanticsValue': 'test_semanticsValue',
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<CircularProgressIndicator>()
            .having((p0) => p0.value, 'CircularProgressIndicator.value', 9)
            .having((p0) => p0.backgroundColor,
                'CircularProgressIndicator.backgroundColor', ColorModel.equals)
            .having((p0) => p0.color, 'CircularProgressIndicator.color',
                ColorModel.equals)
            .having((p0) => p0.strokeWidth,
                'CircularProgressIndicator.strokeWidth', 8)
            .having(
                (p0) => p0.semanticsLabel,
                'CircularProgressIndicator.semanticsLabel',
                'test_semanticsLabel')
            .having(
                (p0) => p0.semanticsValue,
                'CircularProgressIndicator.semanticsValue',
                'test_semanticsValue'));
  });

  testWidgets('ProgressIndicator.linear()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter':
            FlutterProgressIndicator.unionValueLinearProgressIndicator,
        'key': KeysModel.getValueKey('FINDME'),
        'value': 9,
        'backgroundColor': ColorModel.json,
        'color': ColorModel.json,
        'minHeight': 8,
        'semanticsLabel': 'test_semanticsLabel',
        'semanticsValue': 'test_semanticsValue',
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<LinearProgressIndicator>()
            .having((p0) => p0.value, 'LinearProgressIndicator.value', 9)
            .having((p0) => p0.backgroundColor,
                'LinearProgressIndicator.backgroundColor', ColorModel.equals)
            .having((p0) => p0.color, 'LinearProgressIndicator.color',
                ColorModel.equals)
            .having(
                (p0) => p0.minHeight, 'LinearProgressIndicator.minHeight', 8)
            .having((p0) => p0.semanticsLabel,
                'LinearProgressIndicator.semanticsLabel', 'test_semanticsLabel')
            .having(
                (p0) => p0.semanticsValue,
                'LinearProgressIndicator.semanticsValue',
                'test_semanticsValue'));
  });
}
