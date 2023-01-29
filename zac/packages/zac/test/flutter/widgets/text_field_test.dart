import 'dart:ui';

import 'package:zac/zac.dart';
import 'package:zac/src/flutter/widgets/material/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper.dart';
import '../../helper.mocks.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterTextField()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': 'f:1:Material',
        'child': {
          'builder': 'f:1:TextField',
          'key': KeysModel.getValueKey('FINDME'),
          'style': TextModel.textStyle,
          'strutStyle': TextModel.strutStyle,
          'textAlign': TextModel.textAlign,
          'textDirection': TextModel.textDirection,
          'readOnly': true,
          'showCursor': true,
          'autofocus': true,
          'obscuringCharacter': '#',
          'obscureText': true,
          'maxLines': 1,
          'keyboardType': {
            'builder': 'f:1:TextInputType.number',
          },
          'textInputAction': {
            'builder': 'f:1:TextInputAction.go',
          },
          'textCapitalization': {
            'builder': 'f:1:TextCapitalization.words',
          },
          'textAlignVertical': {
            'builder': 'f:1:TextAlignVertical.bottom',
          },
          'smartDashesType': {
            'builder': 'f:1:SmartDashesType.enabled',
          },
          'selectionHeightStyle': {
            'builder': 'f:1:BoxHeightStyle.max',
          },
        },
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<TextField>()
            .having(
                (p0) => p0.style, 'TextField.style', TextModel.equalsTextStyle)
            .having((p0) => p0.strutStyle, 'TextField.strutStyle',
                TextModel.equalsStrutStyle)
            .having((p0) => p0.textAlign, 'TextField.textAlign',
                TextModel.equalsTextAlign)
            .having((p0) => p0.textDirection, 'TextField.textDirection',
                TextModel.equalsTextDirection)
            .having((p0) => p0.readOnly, 'TextField.readOnly', isTrue)
            .having((p0) => p0.showCursor, 'TextField.showCursor', isTrue)
            .having((p0) => p0.autofocus, 'TextField.autofocus', isTrue)
            .having((p0) => p0.obscuringCharacter,
                'TextField.obscuringCharacter', '#')
            .having((p0) => p0.obscureText, 'TextField.obscureText', isTrue)
            .having((p0) => p0.maxLines, 'TextField.maxLines', 1)
            .having((p0) => p0.keyboardType, 'TextField.keyboardType',
                TextInputType.number)
            .having((p0) => p0.textInputAction, 'TextField.textInputAction',
                TextInputAction.go)
            .having((p0) => p0.textCapitalization,
                'TextField.textCapitalization', TextCapitalization.words)
            .having((p0) => p0.textAlignVertical, 'TextField.textAlignVertical',
                TextAlignVertical.bottom)
            .having((p0) => p0.smartDashesType, 'TextField.smartDashesType',
                SmartDashesType.enabled)
            .having((p0) => p0.selectionHeightStyle,
                'TextField.selectionHeightStyle', BoxHeightStyle.max));
  });

  testWidgets('FlutterTextField() onChanged', (tester) async {
    final cb = MockTestActionExecute();
    await testWidgetBuilder(
      tester,
      FlutterMaterial(
        child: FlutterTextField(
          key: FlutterValueKey('FINDME'),
          onChanged: ZacListOfActions([TestAction(cb)]),
        ),
      ),
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    await tester.enterText(findMe, 'hello world');
    await tester.pump();

    verify(cb(
            argThat(isA<ZacActionPayload>()
                .having((p0) => p0.params, 'param', 'hello world')),
            any,
            any))
        .called(1);
  });

  testWidgets(
    'FlutterTextField() onTap',
    (tester) async {},
    skip: true,
  );
  testWidgets(
    'FlutterTextField() onEditingComplete',
    (tester) async {},
    skip: true,
  );
  testWidgets(
    'FlutterTextField() onSubmitted',
    (tester) async {},
    skip: true,
  );
}
