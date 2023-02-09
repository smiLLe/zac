import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/state.dart';

import '../helper.dart';

void main() {
  test('in registry', () {
    expectInRegistry('z:1:States:Provide', ZacStatesProvider.fromJson);

    expectInRegistry([
      'z:1:State:Consume',
    ], ZacStateConsume.fromRegister);
  });

  testWidgets('integration', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'z:1:States:Provide',
      'states': [
        {
          'builder': 'z:1:State:Provide',
          'family': 'shared1',
          'value': 'shared1',
        },
        {
          'builder': 'z:1:State:Provide',
          'family': 'shared2',
          'value': {
            'builder': 'f:1:Text',
            'data': 'shared2',
          },
        },
        {
          'builder': 'z:1:State:Provide',
          'family': 'shared3',
          'mayBuildBuilder': true,
          'value': {
            'builder': 'z:1:String',
            'value': 'shared3',
          },
        },
      ],
      'child': {
        'builder': 'f:1:Column',
        'children': [
          {
            'builder': 'f:1:Text',
            'data': {
              'builder': 'z:1:State:Consume',
              'family': 'shared1',
            }
          },
          {
            'builder': 'z:1:State:Consume',
            'family': 'shared2',
          },
          {
            'builder': 'f:1:Text',
            'data': {
              'builder': 'z:1:State:Consume',
              'family': 'shared3',
            }
          },
        ],
      },
    });

    expect(find.text('shared1'), findsOneWidget);
    expect(find.text('shared2'), findsOneWidget);
    expect(find.text('shared3'), findsOneWidget);
  });
}
