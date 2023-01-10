import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/text.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterText()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterText.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'data': 'Hello World',
        'style': TextModel.textStyle,
        'strutStyle': TextModel.strutStyle,
        'textAlign': TextModel.textAlign,
        'textDirection': TextModel.textDirection,
        'locale': LocaleModel.json,
        'softWrap': true,
        'overflow': TextModel.textOverflow,
        'textScaleFactor': 42,
        'maxLines': 200,
        'semanticsLabel': 'test_semanticsLabel',
        'textWidthBasis': TextModel.textWidthBasis,
        'textHeightBehavior': TextModel.textHeightBehavior,
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;
    expect(
        widget,
        isA<Text>()
            .having((p0) => p0.data, 'Text.data', 'Hello World')
            .having((p0) => p0.style, 'Text.style', TextModel.equalsTextStyle)
            .having((p0) => p0.strutStyle, 'Text.strutStyle',
                TextModel.equalsStrutStyle)
            .having((p0) => p0.textAlign, 'Text.textAlign',
                TextModel.equalsTextAlign)
            .having((p0) => p0.textDirection, 'Text.textDirection',
                TextModel.equalsTextDirection)
            .having((p0) => p0.locale, 'Text.locale', LocaleModel.equals)
            .having((p0) => p0.softWrap, 'Text.softWrap', isTrue)
            .having((p0) => p0.overflow, 'Text.overflow',
                TextModel.equalsTextOverflow)
            .having((p0) => p0.textScaleFactor, 'Text.textScaleFactor', 42)
            .having((p0) => p0.maxLines, 'Text.maxLines', 200)
            .having((p0) => p0.semanticsLabel, 'Text.semanticsLabel',
                'test_semanticsLabel')
            .having((p0) => p0.textWidthBasis, 'Text.textWidthBasis',
                TextModel.equalsTextWidthBasis)
            .having((p0) => p0.textHeightBehavior, 'Text.textHeightBehavior',
                TextModel.equalsTextHeightBehavior));
  });
}
