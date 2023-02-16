import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/registry.dart';

import '../../../helper.dart';
import '../../../helper.mocks.dart';

void main() {
  testWidgets('dropdown button', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'f:1:DropdownButton',
      'key': {
        'builder': 'f:1:ValueKey',
        'value': 'BUTTON',
      },
      'onChanged': <Object>[],
      'items': <Object>[
        {
          'builder': 'f:1:DropdownMenuItem',
          'value': 1,
          'child': {
            'builder': 'f:1:Text',
            'data': 'item: 1',
          },
        },
      ],
      'value': 1,
      'hint': {
        'builder': 'f:1:Text',
        'data': 'some hint',
      },
      'disabledHint': {
        'builder': 'f:1:Text',
        'data': 'some disabledHint',
      },
      'onTap': <Object>[],
      'elevation': 1,
      'style': {
        'builder': 'f:1:TextStyle',
      },
      'underline': {
        'builder': 'f:1:Text',
        'data': 'some underline',
      },
      'icon': {
        'builder': 'f:1:Text',
        'data': 'some icon',
      },
      'iconDisabledColor': {
        'builder': 'f:1:Color.fromARGB',
        'a': 100,
        'r': 100,
        'g': 100,
        'b': 100,
      },
      'iconEnabledColor': {
        'builder': 'f:1:Color.fromARGB',
        'a': 100,
        'r': 100,
        'g': 100,
        'b': 100,
      },
      'iconSize': 42,
      // 'isDense':
      // 'isExpanded'
      'itemHeight': 111,
      'focusColor': {
        'builder': 'f:1:Color.fromARGB',
        'a': 100,
        'r': 100,
        'g': 100,
        'b': 100,
      },
    });

    final widget = find.byKey(const ValueKey('BUTTON')).evaluate().first.widget;

    expect(
        widget,
        isA<DropdownButton<Object>>()
            .having((p0) => p0.value, 'value', 1)
            .having((p0) => p0.hint, 'hint',
                isA<Text>().having((p0) => p0.data, 'text.data', 'some hint'))
            .having(
                (p0) => p0.disabledHint,
                'disabledHint',
                isA<Text>()
                    .having((p0) => p0.data, 'text.data', 'some disabledHint'))
            .having((p0) => p0.onTap, 'onTap', isNotNull)
            .having((p0) => p0.elevation, 'elevation', 1)
            .having((p0) => p0.style, 'style', isA<TextStyle>())
            .having(
                (p0) => p0.underline,
                'underline',
                isA<Text>()
                    .having((p0) => p0.data, 'text.data', 'some underline'))
            .having((p0) => p0.icon, 'icon',
                isA<Text>().having((p0) => p0.data, 'text.icon', 'some icon'))
            .having(
                (p0) => p0.iconDisabledColor, 'iconDisabledColor', isA<Color>())
            .having(
                (p0) => p0.iconEnabledColor, 'iconEnabledColor', isA<Color>())
            .having((p0) => p0.iconSize, 'iconSize', 42)
            .having((p0) => p0.itemHeight, 'itemHeight', 111)
            .having((p0) => p0.focusColor, 'focusColor', isA<Color>()));
  });

  testWidgets('dropdown button actions', (tester) async {
    final cb = MockTestActionExecute();
    ZacRegistry().register('test:action', (_) => TestAction(cb));
    await testJSON(tester, <String, dynamic>{
      'builder': 'f:1:DropdownButton',
      'key': {
        'builder': 'f:1:ValueKey',
        'value': 'BUTTON',
      },
      'onChanged': [
        {
          'builder': 'test:action',
        },
      ],
      'items': <Object>[
        {
          'builder': 'f:1:DropdownMenuItem',
          'value': 1,
          'child': {
            'builder': 'f:1:Text',
            'data': 'item: 1',
          },
        },
        {
          'builder': 'f:1:DropdownMenuItem',
          'value': 2,
          'child': {
            'builder': 'f:1:Text',
            'data': 'item: 2',
          },
        },
      ],
    });

    await tester.tap(find.byKey(const ValueKey('BUTTON')));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1)); // finish the menu animation

    await tester.tap(find.text('item: 1').last, warnIfMissed: false);
    await tester.pump(const Duration(seconds: 1)); // finish the menu animation

    verify(cb(any, any)).called(1);

    ZacRegistry().remove('test:action');
  });
}
