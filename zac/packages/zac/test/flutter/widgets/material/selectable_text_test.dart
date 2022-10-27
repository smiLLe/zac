import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/material/selectable_text.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterSelectableText() #1', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterSelectableText.unionValue,
        'key': KeysModel.getValueKey('FIND_ME'),
        'data': 'data_text',
        'strutStyle': TextModel.strutStyle,
        'textAlign': TextModel.textAlign,
        'textDirection': TextModel.textDirection,
        'textScaleFactor': 1.6,
        'showCursor': true,
        'autofocus': true,
        'minLines': 5,
        'maxLines': 7,
        'cursorWidth': 1.9,
        'cursorHeight': 7,
        'cursorRadius': RadiusModel.json,
        'cursorColor': ColorModel.json,
        'enableInteractiveSelection': false,
        'semanticsLabel': 'test_semanticsLabel',
        'textHeightBehavior': TextModel.textHeightBehavior,
        'textWidthBasis': TextModel.textWidthBasis,
      },
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);

    final widget =
        find.byKey(const ValueKey('FIND_ME')).evaluate().first.widget;

    expect(
        widget,
        isA<SelectableText>()
            .having((p0) => p0.data, 'SelectableText.data', 'data_text')
            .having((p0) => p0.strutStyle, 'SelectableText.strutStyle',
                TextModel.equalsStrutStyle)
            .having((p0) => p0.textAlign, 'SelectableText.textAlign',
                TextModel.equalsTextAlign)
            .having((p0) => p0.textDirection, 'SelectableText.textDirection',
                TextModel.equalsTextDirection)
            .having((p0) => p0.textScaleFactor,
                'SelectableText.textScaleFactor', 1.6)
            .having((p0) => p0.showCursor, 'SelectableText.showCursor', isTrue)
            .having((p0) => p0.autofocus, 'SelectableText.autofocus', isTrue)
            .having((p0) => p0.minLines, 'SelectableText.minLines', 5)
            .having((p0) => p0.maxLines, 'SelectableText.maxLines', 7)
            .having((p0) => p0.cursorWidth, 'SelectableText.cursorWidth', 1.9)
            .having((p0) => p0.cursorHeight, 'SelectableText.cursorHeight', 7)
            .having((p0) => p0.cursorRadius, 'SelectableText.cursorRadius',
                RadiusModel.equals)
            .having((p0) => p0.cursorColor, 'SelectableText.cursorColor',
                ColorModel.equals)
            .having((p0) => p0.enableInteractiveSelection,
                'SelectableText.enableInteractiveSelection', isFalse)
            .having((p0) => p0.semanticsLabel, 'SelectableText.semanticsLabel',
                'test_semanticsLabel')
            .having(
                (p0) => p0.textHeightBehavior,
                'SelectableText.textHeightBehavior',
                TextModel.equalsTextHeightBehavior)
            .having((p0) => p0.textWidthBasis, 'SelectableText.textWidthBasis',
                TextModel.equalsTextWidthBasis));
  });

  testWidgets('FlutterSelectableText() #2', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterSelectableText.unionValue,
        'key': KeysModel.getValueKey('FIND_ME'),
        'data': 'data_text',
        'style': {...TextModel.textStyle, 'inherit': true},
      },
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);

    final widget =
        find.byKey(const ValueKey('FIND_ME')).evaluate().first.widget;

    expect(
        widget,
        isA<SelectableText>()
            .having((p0) => p0.data, 'SelectableText.data', 'data_text')
            .having(
                (p0) => p0.style,
                'SelectableText.style',
                TextModel.equalsTextStyle.copyWith(
                  inherit: true,
                )));
  });
}
