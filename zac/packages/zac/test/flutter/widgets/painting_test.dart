import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/clip_oval.dart';
import 'package:zac/src/flutter/widgets/clip_rect.dart';
import 'package:zac/src/flutter/widgets/decorated_box.dart';
import 'package:zac/src/flutter/widgets/fractional_translation.dart';
import 'package:zac/src/flutter/widgets/opacity.dart';
import 'package:zac/src/flutter/widgets/rotated_box.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterDecoratedBox()', (tester) async {
    await testMap(tester, <String, dynamic>{
      'converter': FlutterDecoratedBox.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'decoration': BoxDecorationModel.getMap(),
      'child': ChildModel.getSizedBox(key: 'child'),
    });

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<DecoratedBox>().having((p0) => p0.decoration,
            'DecoratedBox.decoration', BoxDecorationModel.equals));
  });

  testWidgets('FlutterClipRect()', (tester) async {
    await testMap(tester, <String, dynamic>{
      'converter': FlutterClipRect.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'child': ChildModel.getSizedBox(key: 'child'),
    });

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });

  testWidgets('FlutterClipOval()', (tester) async {
    await testMap(tester, <String, dynamic>{
      'converter': FlutterClipOval.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'child': ChildModel.getSizedBox(key: 'child'),
    });

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });

  testWidgets('FlutterRotatedBox()', (tester) async {
    await testMap(tester, <String, dynamic>{
      'converter': FlutterRotatedBox.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'child': ChildModel.getSizedBox(key: 'child'),
      'quarterTurns': 2,
    });

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<RotatedBox>()
            .having((p0) => p0.quarterTurns, 'RotatedBox.quarterTurns', 2));
  });

  testWidgets(
    'FlutterFractionalTranslation()',
    (tester) async {
      await testMap(tester, <String, dynamic>{
        'converter': FlutterFractionalTranslation.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'child': ChildModel.getSizedBox(key: 'child'),
        'translation': {
          'converter': 'f:1:Offset',
          'dx': 1,
          'dy': 23,
        }
      });

      final findMe = find.byKey(const ValueKey('FINDME'));
      expect(findMe, findsOneWidget);
      expect(find.byKey(const ValueKey('child')), findsOneWidget);
      final widget = findMe.evaluate().first.widget;

      expect(
          widget,
          isA<FractionalTranslation>().having((p0) => p0.translation,
              'RotatedBox.translation', const Offset(1, 23)));
    },
  );

  testWidgets('FlutterOpacity()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterOpacity.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'opacity': 0.9,
        'alwaysIncludeSemantics': true,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Opacity>()
            .having((p0) => p0.opacity, 'Opacity.opacity', 0.9)
            .having((p0) => p0.alwaysIncludeSemantics,
                'Opacity.alwaysIncludeSemantics', isTrue));
  });
}
